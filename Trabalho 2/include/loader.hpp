#ifndef LOADER_HPP
#define LOADER_HPP

#include <GL/glew.h>
#include <iostream>
#include <vector>
#include <loader.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <objloader.hpp>
#include <vboindexer.hpp>
#include <shader.hpp>
#include <texture.hpp>
#include <controls.hpp>
#include <glerror.hpp>

using namespace std;
using namespace glm;

class Loader {

	public:
		std::vector<glm::vec3> vertices;
	    std::vector<glm::vec2> uvs;
	    std::vector<glm::vec3> normals;

	    std::vector<unsigned short> indices;
	    std::vector<glm::vec3> indexed_vertices;
	    std::vector<glm::vec2> indexed_uvs;
	    std::vector<glm::vec3> indexed_normals;

	    void updateMatrix(void);
        glm::mat4 ProjectionMatrix;
        glm::mat4 ViewMatrix;
        glm::mat4 ModelMatrix;

	    GLuint vertexbuffer;
	    GLuint uvbuffer;
	    GLuint normalbuffer;
	    GLuint elementbuffer;
		Loader(void);
		void Ler(const char*);
};

#endif