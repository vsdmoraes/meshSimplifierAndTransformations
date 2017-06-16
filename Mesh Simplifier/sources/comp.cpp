#include <iostream>
#include <vector>
#include <comp.hpp>
#include <glm/glm.hpp>

using namespace std;
using namespace glm;

Comp::Comp(void){
}
void Comp::setInd (std::vector<unsigned short> x){
	indOrig = x;
	indi = x;
}
void Comp::setVert (std::vector<glm::vec3> y){
	vertOrig = y;
	vertex = y;
}
std::vector<unsigned short> Comp::returnInd(void){
	return indi;
}
std::vector<glm::vec3> Comp::returnVert(void){
	return vertex;
}
void Comp::removeUm(void){
	if(indi.size()>=3){ 
		unsigned short toErase = indi[0];       
		std::vector<unsigned short> listAdj;
		for(int i=0; i<indi.size(); i++){
			if(indi[i]==toErase){
				listAdj.push_back(i+1);
			}
		}
		for(int i=0; i<indi.size(); i++){
			if(indi[i]==toErase){
				indi[i]=indi[listAdj[0]];
				vertex[i]=vertex[listAdj[0]];
			}
		}
		for(int i=0; i<indi.size(); i+=3){
			if(indi[i]==indi[i+1] || indi[i]==indi[i+2] || indi[i+1]==indi[i+2]){
				for(int j=0; j<3; j++){
					indi.erase(indi.begin()+i);
					vertex.erase(vertex.begin()+i);
				}
			} 
		}
	}
}
void Comp::addUm(void){
	int control = indi.size()-1;
	if(indi.size()<indOrig.size()){
		for(int i=indOrig.size()-1; i>0; i-=3){
			if(indOrig[i-2] != indi[control-2] || indOrig[i-1] != indi[control-1] || indOrig[i] != indi[control]){
				indi[control-2] = indOrig[i-2];
				indi[control-1] = indOrig[i-1];
				indi[control] = indOrig[i];
				vertex[control-2] = vertOrig[i-2];
				vertex[control-1] = vertOrig[i-1];
				vertex[control] = vertOrig[i];
				break;
			}
			control-=3; 
	 		if(control<0){
				if(control < i){
					indi.insert(indi.begin(), indOrig[i-3]);
					indi.insert(indi.begin(), indOrig[i-4]);
					indi.insert(indi.begin(), indOrig[i-5]);  
					vertex.insert(vertex.begin(), vertOrig[i-3]);
					vertex.insert(vertex.begin(), vertOrig[i-4]);
					vertex.insert(vertex.begin(), vertOrig[i-5]);  
				} 
				break;
			}
		}
	}
}
