#include <iostream>
#include <vector>
#include <calcs.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

using namespace std;
using namespace glm;

Calcs::Calcs(void){
}
glm::mat4 Calcs::rotating(glm::mat4 matr, double x, double y, double z) {
    glm::vec3 vect = glm::vec3(x,y,z);
    glm::mat4 Model = glm::rotate(matr,(float)180,vect);
    return Model;
}
glm::mat4 Calcs::rotatingPoint(glm::mat4 matr, double x, double y, double z, double px, double py, double pz, double prx, double pry, double prz) {
    matr = Calcs::translating(matr, px, py, pz);
    glm::vec3 vect = glm::vec3(x,y,z);
    glm::mat4 Model = glm::rotate(matr,(float)180,vect);
    //matr = Calcs::translating(matr, prx, pry, prz);
    return Model;
}
glm::mat4 Calcs::translating(glm::mat4 matr, double x, double y, double z) {
    glm::vec3 vect = glm::vec3(x,y,z);
    glm::mat4 Model = glm::translate(matr,vect);
    return Model;
}
glm::mat4 Calcs::lookingAt(glm::vec3 eye, glm::vec3 center, glm::vec3 up) {
    glm::mat4 Model = glm::lookAt(eye, center, up);
    return Model;
}

