#pragma once

#ifndef CAMERA_H
#define CAMERA_H

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "q_math.cpp"

enum Camera_Movement
{
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

class Camera
{
    public:
    //camera variables
    qtn::Quaternion direction;
    qtn::Quaternion forward;
    glm::vec3 global_up;
    glm::vec3 up;
    glm::vec3 right;
    glm::vec3 pos;
    float horizontal;
    float vertical;
    float tilt;
    float movement_speed;
    float mouse_sensitivity;
    Camera();
    Camera(float, float, float);
    Camera(float, float, float, float, float, float);
    void moveCamera(Camera_Movement, float);
    void processMouseMovement(float,float,bool);
    void rotateCamera();
    void checkWinBoundaries();
};

#endif