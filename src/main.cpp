#include <glad/glad.h>
#include <iostream>
#include <GLFW/glfw3.h>
#include <GL/gl.h>
#include <cmath>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "shader.h"
#include "camera.h"

//constants
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

//globals
Camera camera;
float lastX = SCR_WIDTH / 2.0f;
float lastY = SCR_HEIGHT / 2.0f;
bool firstMouse = true;
float delta_time = 0.0f;
float last_frame = 0.0f;

/*
Callback function which sets the viewport to cover the entire window
*/
void framebuffer_size_callback(GLFWwindow* window, int width, int height){
    glViewport(0,0,width,height);
}

/*
Callback to get the change in x and y to use for camera rotations
*/
void mouse_callback(GLFWwindow* window, double xposIn, double yposIn){
    float xpos = static_cast<float>(xposIn);
    float ypos = static_cast<float>(yposIn);

    if(firstMouse){
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }
    
    float xoffset = lastX - xpos;
    float yoffset = lastY - ypos;
    lastX = xpos;
    lastY = ypos;
    
    //Pass how much the mouse has moved in the x/y directions for processing
    camera.processMouseMovement(xoffset,yoffset,true);
}


/*
Checks for user input for movement (WASD -> Forward,Left,Back,Right)
*/
void processInput(GLFWwindow* window, bool& exit){
    //Esc exits program since our mouse is locked/hidden when running
    if(glfwGetKey(window,GLFW_KEY_ESCAPE)==GLFW_PRESS){
        exit = true;
        return;
    }

    //Shift key allows for faster movement speed
    camera.movement_speed = (glfwGetKey(window,GLFW_KEY_LEFT_SHIFT)==GLFW_PRESS) ? 2.0f : 1.0f;

    //WASD allows for forward/backward/left/right movement
    if(glfwGetKey(window,GLFW_KEY_W)==GLFW_PRESS){
        camera.moveCamera(FORWARD,delta_time);
    }
    if(glfwGetKey(window,GLFW_KEY_S)==GLFW_PRESS){
        camera.moveCamera(BACKWARD,delta_time);
    }
    if(glfwGetKey(window,GLFW_KEY_A)==GLFW_PRESS){
        camera.moveCamera(LEFT,delta_time);
    }
    if(glfwGetKey(window,GLFW_KEY_D)==GLFW_PRESS){
        camera.moveCamera(RIGHT,delta_time);
    }
}

//cube vertices
float vertices[] = {
    0.5f, 0.5f, 0.5f,
    0.5f, -0.5f, 0.5f,
    -0.5f, -0.5f, 0.5f,
    -0.5f, 0.5f, 0.5f,
    0.5f, -0.5f, -0.5f,
    0.5f, 0.5f, -0.5f,
    -0.5f, -0.5f, -0.5f,
    -0.5f, 0.5f, -0.5f,
};

//Since our cube faces are two triangles put together, we can reuse vertices so the indices map
//each triangle vertex to one of our vertices in the vertices array
unsigned int indices[] = {
    //front
    0, 1, 3,
    1, 2, 3,
    //right
    0, 1, 4,
    0, 5, 4,
    //left
    2, 3, 6,
    6, 3, 7,
    //top
    3, 7, 0,
    0, 7, 5,
    //bottom
    1, 2, 6,
    4, 6, 1,
    //back
    5, 4, 7,
    4, 7, 6
};

//Main code runner
int main(){
    //init stuff
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH,SCR_HEIGHT,"Camera Demo",NULL,NULL);
    glfwSetFramebufferSizeCallback(window,framebuffer_size_callback);
    glfwSetCursorPosCallback(window,mouse_callback);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    if(window == NULL){
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    //Initialize GLAD
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    //setting up/binding our buffers
    unsigned int VBO,VAO,EBO;

    glGenVertexArrays(1,&VAO);
    glGenBuffers(1,&VBO);
    glGenBuffers(1,&EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER,sizeof(vertices),vertices,GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE,3*sizeof(float),(void*)0);
    glEnableVertexAttribArray(0);

    //Shader class to handle creating multiple shaders easily
    Shader shader1 = Shader();
    shader1.Load("../res/shader/shader.vert","../res/shader/shader.frag");
    shader1.use();
    glEnable(GL_DEPTH_TEST);
    bool game_over = false;

    //render loop
    while(!glfwWindowShouldClose(window)){
        if(game_over){
            break;
        }
        float current_frame = static_cast<float>(glfwGetTime());
        delta_time = current_frame - last_frame;
        last_frame = current_frame;

        processInput(window,game_over);

        //perspective matrix
        glm::mat4 proj = glm::perspective(glm::radians(45.0f), (float)SCR_WIDTH/(float)SCR_HEIGHT, 0.1f, 100.0f);
        shader1.setMat4("perspective",proj);

        //Since our direction is calculated as a quaternion we need to extract ijk components to make a vec3.
        //we generate our view matrix using the camera's position, direction from current position, and camera up vec
        glm::vec3 cam_direction = glm::vec3(camera.direction.i,camera.direction.j,camera.direction.k);
        glm::mat4 view = glm::lookAt(camera.pos,camera.pos+cam_direction,camera.up);
        shader1.setMat4("transform",view);

        glClearColor(0.2f,0.3f,0.3f,1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glDrawElements(GL_TRIANGLES,36,GL_UNSIGNED_INT,0);
        
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;

}

