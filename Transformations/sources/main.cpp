// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <vector>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>
GLFWwindow* g_pWindow;
unsigned int g_nWidth = 1024, g_nHeight = 768;

// Include AntTweakBar
#include <AntTweakBar.h>
TwBar *g_pToolBar;

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
using namespace glm;

#include <shader.hpp>
#include <texture.hpp>
#include <controls.hpp>
#include <objloader.hpp>
#include <vboindexer.hpp>
#include <glerror.hpp>
#include <calcs.hpp>
#include <loader.hpp>

void WindowSizeCallBack(GLFWwindow *pWindow, int nWidth, int nHeight) {
	g_nWidth = nWidth;
	g_nHeight = nHeight;
	glViewport(0, 0, g_nWidth, g_nHeight);
	TwWindowSize(g_nWidth, g_nHeight);

}

Calcs foo;
double rotSpeed = 0.0;
double rotX = 1.0;
double rotY = 0.0;
double rotZ = 0.0;
double traX = 0.0;
double traY = 0.0;
double traZ = 0.0;
double sheX = 0.0;
double sheY = 0.0;
double sheZ = 0.0;
double previRotX = 0.0;
double previRotY = 0.0;
double previRotZ = 0.0;
double pX = 0.0;
double pY = 0.0;
double pZ = 0.0;
double scaleValue = 1.0;
bool aroundPoint=false;
bool canRotate=false;
bool canShear=false;
bool canScale=false;
bool canTranslate=false;
double times = 0.0;

void TW_CALL resetAll(void *){ 
	 rotSpeed = 0.0;
	 rotX = 1.0;
	 rotY = 0.0;
	 rotZ = 0.0;
	 traX = 0.0;
	 traY = 0.0;
	 traZ = 0.0;
	 sheX = 0.0;
	 sheY = 0.0;
	 sheZ = 0.0;
	 pX = 0.0;
	 pY = 0.0;
	 pZ = 0.0;
	 scaleValue = 1.0;
	 aroundPoint=false;
	 canRotate=false;
	 canShear=false;
	 canScale=false;
	 canTranslate=false;
	 times = 0.0;
}

int main(void){

	int nUseMouse = 0;

	// Initialise GLFW
	if (!glfwInit())
	{
		fprintf(stderr, "Failed to initialize GLFW\n");
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	g_pWindow = glfwCreateWindow(g_nWidth, g_nHeight, "CG UFPel", NULL, NULL);
	if (g_pWindow == NULL){
		fprintf(stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n");
		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(g_pWindow);

	// Initialize GLEW
	glewExperimental = true; // Needed for core profile
	if (glewInit() != GLEW_OK) {
		fprintf(stderr, "Failed to initialize GLEW\n");
		return -1;
	}

//	check_gl_error();//OpenGL error from GLEW

	// Initialize the GUI
	TwInit(TW_OPENGL_CORE, NULL);
	TwWindowSize(g_nWidth, g_nHeight);

	// Set GLFW event callbacks. I removed glfwSetWindowSizeCallback for conciseness
	glfwSetMouseButtonCallback(g_pWindow, (GLFWmousebuttonfun)TwEventMouseButtonGLFW); // - Directly redirect GLFW mouse button events to AntTweakBar
	glfwSetCursorPosCallback(g_pWindow, (GLFWcursorposfun)TwEventMousePosGLFW);          // - Directly redirect GLFW mouse position events to AntTweakBar
	glfwSetScrollCallback(g_pWindow, (GLFWscrollfun)TwEventMouseWheelGLFW);    // - Directly redirect GLFW mouse wheel events to AntTweakBar
	glfwSetKeyCallback(g_pWindow, (GLFWkeyfun)TwEventKeyGLFW);                         // - Directly redirect GLFW key events to AntTweakBar
	glfwSetCharCallback(g_pWindow, (GLFWcharfun)TwEventCharGLFW);                      // - Directly redirect GLFW char events to AntTweakBar
	glfwSetWindowSizeCallback(g_pWindow, WindowSizeCallBack);

	
	//create the toolbar
	g_pToolBar = TwNewBar("CG UFPel ToolBar");
	
	//TwBar bar.TwBar();
	
	// ROTATION
	TwAddVarRW(g_pToolBar, "Can Rotate", TW_TYPE_BOOLCPP, &canRotate, "group=Rotate label='Can rotate'");
	TwAddVarRW(g_pToolBar, "Around a Point", TW_TYPE_BOOLCPP, &aroundPoint, "group=Rotate label='Around a Point'");
	TwAddVarRW(g_pToolBar, "rotX", TW_TYPE_DOUBLE, &rotX, "group=Rotate label='RotX'");
	TwAddVarRW(g_pToolBar, "rotY", TW_TYPE_DOUBLE, &rotY, "group=Rotate label='RotY'");
	TwAddVarRW(g_pToolBar, "rotZ", TW_TYPE_DOUBLE, &rotZ, "group=Rotate label='RotZ'");
	TwAddVarRW(g_pToolBar, "PointX", TW_TYPE_DOUBLE, &pX, "group=Rotate label='PointX'");
	TwAddVarRW(g_pToolBar, "PointY", TW_TYPE_DOUBLE, &pY, "group=Rotate label='PointY'");
	TwAddVarRW(g_pToolBar, "PointZ", TW_TYPE_DOUBLE, &pZ, "group=Rotate label='PointZ'");

	// SCALE
	TwAddVarRW(g_pToolBar, "Can Scale", TW_TYPE_BOOLCPP, &canScale, "group=Scale label='Can Scale'");
	TwAddVarRW(g_pToolBar, "scale", TW_TYPE_DOUBLE, &scaleValue, "group=Scale label='Scale' min=0 max=5 step=0.1 keyIncr=d keyDecr=D help='Scale the object)'");
	
	// TRANSLATE
	TwAddVarRW(g_pToolBar, "Can Translate", TW_TYPE_BOOLCPP, &canTranslate, "group=Translate label='Can Translate'");
	TwAddVarRW(g_pToolBar, "traX", TW_TYPE_DOUBLE, &traX, "group=Translate label='TraX'");
	TwAddVarRW(g_pToolBar, "traY", TW_TYPE_DOUBLE, &traY, "group=Translate label='TraY'");
	TwAddVarRW(g_pToolBar, "traZ", TW_TYPE_DOUBLE, &traZ, "group=Translate label='TraZ'");

	// SHEAR
	TwAddVarRW(g_pToolBar, "Can Shear", TW_TYPE_BOOLCPP, &canShear, "group=Shear label='Can Shear'");
	TwAddVarRW(g_pToolBar, "sheX", TW_TYPE_DOUBLE, &sheX, "group=Shear label='SheX'");
	TwAddVarRW(g_pToolBar, "sheY", TW_TYPE_DOUBLE, &sheY, "group=Shear label='SheY'");
	TwAddVarRW(g_pToolBar, "sheZ", TW_TYPE_DOUBLE, &sheZ, "group=Shear label='SheZ'");

	// EXECUTE
	TwAddVarRW(g_pToolBar, "Time", TW_TYPE_DOUBLE, &times, "group=Execute label='Time'");
	TwAddButton(g_pToolBar, "Reset", resetAll, NULL, "group=Execute label='Reset'");


	// Add 'bgColor' to 'bar': it is a modifable variable of type TW_TYPE_COLOR3F (3 floats color)
	//vec3 oColor(0.0f);
	//TwAddVarRW(g_pToolBar, "bgColor", TW_TYPE_COLOR3F, &oColor[0], " label='Background color' ");

	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(g_pWindow, GLFW_STICKY_KEYS, GL_TRUE);
	glfwSetCursorPos(g_pWindow, g_nWidth / 2, g_nHeight / 2);

	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

	// Enable depth test
	glEnable(GL_DEPTH_TEST);
	// Accept fragment if it closer to the camera than the former one
	glDepthFunc(GL_LESS);

	// Cull triangles which normal is not towards the camera
	glEnable(GL_CULL_FACE);

	GLuint VertexArrayID;
	glGenVertexArrays(1, &VertexArrayID);
	glBindVertexArray(VertexArrayID);

	// Create and compile our GLSL program from the shaders
	GLuint programID = LoadShaders("shaders/StandardShading.vertexshader", "shaders/StandardShading.fragmentshader");

	// Get a handle for our "MVP" uniform
	GLuint MatrixID      = glGetUniformLocation(programID, "MVP");
	GLuint ViewMatrixID  = glGetUniformLocation(programID, "V");
	GLuint ModelMatrixID = glGetUniformLocation(programID, "M");

	// Load the texture
	GLuint Texture = loadDDS("mesh/uvmap.DDS");

	// Get a handle for our "myTextureSampler" uniform
	GLuint TextureID = glGetUniformLocation(programID, "myTextureSampler");


	std::vector<Loader> load;
	Loader a, b;
	a.Ler("mesh/suzanne.obj");
	b.Ler("mesh/goose.obj");
	load.push_back(a);
	load.push_back(b);

	//for(int i = 0; i<load.size(); i++){
//			load[i].updateMatrix();
//}

//	load[i].ModelMatrix = foo.translating(load[i].ModelMatrix,2,2,2);
	// Get a handle for our "LightPosition" uniform
	glUseProgram(programID);
	GLuint LightID = glGetUniformLocation(programID, "LightPosition_worldspace");

	// For speed computation
	double lastTime = glfwGetTime();
	int nbFrames    = 0;

	//glfwSetTime(5);

	do{
        //check_gl_error();

        //use the control key to free the mouse
		if (glfwGetKey(g_pWindow, GLFW_KEY_LEFT_CONTROL) != GLFW_PRESS)
			nUseMouse = 1;
		else
			nUseMouse = 0;

		// Measure speed
		double currentTime = glfwGetTime();
		nbFrames++;

		// Clear the screen
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		// Use our shader
		glUseProgram(programID);

		// Compute the MVP matrix from keyboard and mouse input
		computeMatricesFromInputs(nUseMouse, g_nWidth, g_nHeight);
		for(int i = 0; i<load.size(); i++){
			load[i].updateMatrix();

		}
		//load[1].ModelMatrix = foo.translating(load[1].ModelMatrix,2,2,2);


		if (currentTime - lastTime >= 1.0){ // If last prinf() was more than 1sec ago
			// printf and reset
			printf("%f ms/frame\n", 1000.0 / double(nbFrames));
			if(canScale!=false && times > 0){
				for(int i = 0; i<load.size(); i++){
					load[i].ModelMatrix = foo.scaling(load[i].ModelMatrix, scaleValue);
				}
				scaleValue+=0.1;
				times-=1.0;
			}
			if(canTranslate!=false && times > 0){
				for(int i = 0; i<load.size(); i++){
					load[i].ModelMatrix = foo.translating(load[i].ModelMatrix, traX, traY, traZ);
				}
				traX*=1.1;
				traY*=1.1;
				traZ*=1.1;
				times-=1.0;
			}
			if(canRotate!=false && aroundPoint!=false && times > 0){
				for(int i = 0; i<load.size(); i++){
					load[i].ModelMatrix = foo.rotatingPoint(load[i].ModelMatrix, rotX, rotY, rotZ, pX, pY, pZ, previRotX, previRotY, previRotZ);
				}
				previRotX = pX;
				previRotY = pY;
				previRotZ = pZ;
				rotX*=1.4;
				rotY*=1.3;
				rotZ*=1.2;
				times-=1.0;
				if(pX!=0)
					pX*=1.1;
				if(pX!=0)
					pY*=1.1;
				if(pX!=0)
					pZ*=1.1;

			} else { 
				if(canRotate!=false && times > 0){
					for(int i = 0; i<load.size(); i++){
						load[i].ModelMatrix = foo.rotating(load[i].ModelMatrix, rotX, rotY, rotZ);
					}
					rotX*=1.4;
					rotY*=1.3;
					rotZ*=1.2;
					times-=1.0;
					if(rotX>300)
						rotX=-1;
					if(rotY>300)
						rotY=-1;
					if(rotZ>300)
						rotZ=-1;
					if(rotX<-300)
						rotX=1;
					if(rotY<-300)
						rotY=1;
					if(rotZ<-300)
						rotZ=1;
				}
			}
			if(canShear!=false && times > 0){
				for(int i = 0; i<load.size(); i++){
					load[i].ModelMatrix = foo.shearing(load[i].ModelMatrix, sheX, sheY, sheZ);
				}
				if(sheX != 0 || sheY != 0 || sheZ != 0){
					if(sheX==0 && sheY!=0 && sheZ!=0){
						sheY+=0.1;
						sheZ+=0.1;
					}
					if(sheX!=0 && sheY==0 && sheZ!=0){
						sheX+=0.1;
						sheZ+=0.1;
					}
					if(sheX!=0 && sheY!=0 && sheZ==0){
						sheY+=0.1;
						sheX+=0.1;
					}
				}
				times-=1.0;
			}
			nbFrames  = 0;
			lastTime += 1.0;
		}

		if(canScale!=false){
			for(int i = 0; i<load.size(); i++){
				load[i].ModelMatrix = foo.scaling(load[i].ModelMatrix, scaleValue);
			}
		}
		if(canTranslate!=false){
			for(int i = 0; i<load.size(); i++){
				load[i].ModelMatrix = foo.translating(load[i].ModelMatrix, traX, traY, traZ);
			}
		}
		
		if(canShear!=false){
			for(int i = 0; i<load.size(); i++){
				load[i].ModelMatrix = foo.shearing(load[i].ModelMatrix, sheX, sheY, sheZ);
			}
		}
		if(canRotate!=false && aroundPoint!=false){
			for(int i = 0; i<load.size(); i++){
				load[i].ModelMatrix = foo.rotatingPoint(load[i].ModelMatrix, rotX, rotY, rotZ, pX, pY, pZ, previRotX, previRotY, previRotZ);
			}
			previRotX = pX;
			previRotY = pY;
			previRotZ = pZ;
		} else { 
			if(canRotate!=false){
				for(int i = 0; i<load.size(); i++){
					load[i].ModelMatrix = foo.rotating(load[i].ModelMatrix, rotX, rotY, rotZ);
				}
			}
		}


		std::vector<glm::mat4> MVP;
		for(int i = 0; i<load.size(); i++){
			MVP.push_back(load[i].ProjectionMatrix * load[i].ViewMatrix * load[i].ModelMatrix);
		}

		// Send our transformation to the currently bound shader,
		// in the "MVP" uniform

		for(int i = 0; i<load.size(); i++){
			glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[i][0][0]);
			glUniformMatrix4fv(ModelMatrixID, 1, GL_FALSE, &load[i].ModelMatrix[0][0]);
			glUniformMatrix4fv(ViewMatrixID, 1, GL_FALSE, &load[i].ViewMatrix[0][0]);
		}
		glm::vec3 lightPos = glm::vec3(4, 4, 4);
		glUniform3f(LightID, lightPos.x, lightPos.y, lightPos.z);

		

		// Bind our texture in Texture Unit 0
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, Texture);
		// Set our "myTextureSampler" sampler to user Texture Unit 0
		glUniform1i(TextureID, 0);

		// 1rst attribute buffer : vertices
		for(int i = 0; i<load.size(); i++){
		glEnableVertexAttribArray(0);
		glBindBuffer(GL_ARRAY_BUFFER, load[i].vertexbuffer);
		glVertexAttribPointer(
			0,                  // attribute
			3,                  // size
			GL_FLOAT,           // type
			GL_FALSE,           // normalized?
			0,                  // stride
			(void*)0            // array buffer offset
			);

		// 2nd attribute buffer : UVs
		glEnableVertexAttribArray(1);
		glBindBuffer(GL_ARRAY_BUFFER, load[i].uvbuffer);
		glVertexAttribPointer(
			1,                                // attribute
			2,                                // size
			GL_FLOAT,                         // type
			GL_FALSE,                         // normalized?
			0,                                // stride
			(void*)0                          // array buffer offset
			);

		// 3rd attribute buffer : normals
		glEnableVertexAttribArray(2);
		glBindBuffer(GL_ARRAY_BUFFER, load[i].normalbuffer);
		glVertexAttribPointer(
			2,                                // attribute
			3,                                // size
			GL_FLOAT,                         // type
			GL_FALSE,                         // normalized?
			0,                                // stride
			(void*)0                          // array buffer offset
			);

		// Index buffer
		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, load[i].elementbuffer);

		// Draw the triangles !
		glDrawElements(
			GL_TRIANGLES,        // mode
			load[i].indices.size(),      // count
			GL_UNSIGNED_SHORT,   // type
			(void*)0             // element array buffer offset
			);
		}

		glDisableVertexAttribArray(0);
		glDisableVertexAttribArray(1);
		glDisableVertexAttribArray(2);

		// Draw tweak bars
		TwDraw();

		// Swap buffers
		glfwSwapBuffers(g_pWindow);
		glfwPollEvents();

	} // Check if the ESC key was pressed or the window was closed
	while (glfwGetKey(g_pWindow, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
	glfwWindowShouldClose(g_pWindow) == 0);

	// Cleanup VBO and shader
	for(int i = 0; i<load.size(); i++){
		glDeleteBuffers(1, &load[i].vertexbuffer);
		glDeleteBuffers(1, &load[i].uvbuffer);
		glDeleteBuffers(1, &load[i].normalbuffer);
		glDeleteBuffers(1, &load[i].elementbuffer);
		glDeleteProgram(programID);
		glDeleteTextures(1, &Texture);
		glDeleteVertexArrays(1, &VertexArrayID);
	}
	// Terminate AntTweakBar and GLFW
	TwTerminate();
	glfwTerminate();

	return 0;
}

