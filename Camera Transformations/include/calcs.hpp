#ifndef CALCS_HPP
#define CALCS_HPP

#include <iostream>
#include <vector>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

using namespace std;
using namespace glm;

class Calcs {

	glm::mat4 modelo;
	
public:
	Calcs(void);
	glm::mat4 rotating(glm::mat4, double, double, double);
	glm::mat4 translating(glm::mat4, double, double, double);
	glm::mat4 rotatingPoint(glm::mat4, double, double, double, double, double, double, double, double, double);
	glm::mat4 lookingAt(glm::vec3,glm::vec3,glm::vec3);
};

#endif