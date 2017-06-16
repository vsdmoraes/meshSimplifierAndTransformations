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
    matr = Calcs::translating(matr, prx, pry, prz);
    return Model;
}
glm::mat4 Calcs::scaling(glm::mat4 matr, double vec) {
    glm::vec3 vect = glm::vec3(vec,vec,vec);
    glm::mat4 Model = glm::scale(matr,vect);
    return Model;
}
glm::mat4 Calcs::translating(glm::mat4 matr, double x, double y, double z) {
    glm::vec3 vect = glm::vec3(x,y,z);
    glm::mat4 Model = glm::translate(matr,vect);
    return Model;
}
glm::mat4 Calcs::shearing(glm::mat4 matr, double x, double y, double z) {
    modelo = glm::mat4(1.0f);
    if(x!=0 && y!=0 & z==0){
    	modelo[2][0] = x;
    	modelo[2][1] = y;
    } else {
    	if(x!=0 && y==0 & z!=0){
    		modelo[1][0] = x;
    		modelo[1][2] = z;
    	} else {
    		if(x==0 && y!=0 & z!=0){
	    		modelo[0][1] = y;
	    		modelo[0][2] = z;
    		}
    	}
   	}  
    return matr * modelo;
}
