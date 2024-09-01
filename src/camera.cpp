#include "camera.h"

const float MOVEMENT_SPEED = 0.5f;
const float MOUSE_SENSITIVITY = 0.1f;
const float EDGE_STEP = 0.1f;

Camera::Camera()
{
    //camera attributes
    this->pos = glm::vec3(0.0f,0.0f,3.0f);
    this->direction = qtn::Quaternion(0,0,0,-1.0f);
    this->up = glm::vec3(0,1.0f,0);
    this->right = glm::vec3(1.0f,0.0f,0.0f);
    //globals
    this->forward = qtn::Quaternion(0,0,0,-1.0f);
    this->global_up = glm::vec3(0,1.0f,0);
    //measures of rotations
    this->horizontal = 0;
    this->vertical = 0;
    //customs
    this->movement_speed = MOVEMENT_SPEED;
    this->mouse_sensitivity = MOUSE_SENSITIVITY;
}

/*
This camera takes the current direction vector and multiplies by a certain velocity and then adds it to
the cameras current position so it moves in an accurate direction
Args:
    direction -> direction in which the camera is moving
    delta_time -> time elapsed between current frame and the last frame
    
*/
void Camera::moveCamera(Camera_Movement direction, float delta_time)
{
    float velocity = movement_speed * delta_time;
    glm::vec3 direction_vector = glm::vec3(this->direction.i,this->direction.j,this->direction.k);
    if(direction == FORWARD)
    {
        pos += direction_vector * velocity;
    }
    if(direction == BACKWARD)
    {
        pos -= direction_vector * velocity;
    }
    if(direction == LEFT)
    {
        pos -= right * velocity;
    }
    if(direction == RIGHT)
    {
        pos += right * velocity;
    }

}

/*
Adds our offsets to our cameras total horizontal/vertical movement then rotates using those offsets

Args:
    xoffset -> horizontal distance of last mouse position to current mouse position
    yoffset -> vertical distance of last mouse position to current mouse position
    constrainPitch -> if player should be able to look for than 90 degrees vertically
*/
void Camera::processMouseMovement(float xoffset, float yoffset, bool constrainPitch=true){
    xoffset *= mouse_sensitivity;
    yoffset *= mouse_sensitivity;
    horizontal += xoffset;
    vertical += yoffset;
    
    //Lock the camera from looking greater than 90 degrees vertically
    if(constrainPitch){
        if(vertical > 89.0f){
            vertical = 89.0f;
        }
        else if(vertical < -89.0f){
            vertical = -89.0f;
        }
    }
    
    
    this->rotateCamera();


}

/*
Uses quaternion multiplication to generate the horizontal and vertical rotations of the camera
*/
void Camera::rotateCamera(){
    checkWinBoundaries();
    //convert our angles into radians. Note: we need to use half the angle because we are using quaternions
    float horiAngle = glm::radians(horizontal)/2.0f;
    float vertAngle = glm::radians(vertical)/2.0f;
    
    qtn::Quaternion h_rotation = qtn::Quaternion(cos(horiAngle),0,sin(horiAngle),0);
    qtn::Quaternion v_rotation = qtn::Quaternion(cos(vertAngle),sin(vertAngle),0,0);

    //combination of horizontal and vertical rotation quaternions
    qtn::Quaternion cam_rotation = (h_rotation*v_rotation).normalize();
    direction = cam_rotation*forward*cam_rotation.conjugate();
    direction = direction.normalize();
    
    //update our orientation vectors
    this->right = glm::normalize(glm::cross(glm::vec3(direction.i,direction.j,direction.k),this->global_up));
    this->up = glm::normalize(glm::cross(this->right,glm::vec3(direction.i,direction.j,direction.k)));
    
}

void Camera::checkWinBoundaries(){
    bool onEdge = false;
}