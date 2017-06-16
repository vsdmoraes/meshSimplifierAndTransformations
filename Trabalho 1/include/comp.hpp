#ifndef COMP_HPP
#define COMP_HPP

#include <iostream>
#include <vector>
#include <comp.hpp>
#include <glm/glm.hpp>

using namespace std;
using namespace glm;

class Comp {
		std::vector<unsigned short> indi, indOrig;
		std::vector<glm::vec3> vertex, vertOrig;
	public:
		Comp(void);
		void setInd (vector<unsigned short> x);
		void setVert (vector<glm::vec3> y);
		vector<unsigned short> returnInd(void);
		vector<glm::vec3> returnVert(void);
		void removeUm(void);
		void addUm(void);
};

#endif