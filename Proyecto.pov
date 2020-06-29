#include "colors.inc"
#declare contador=0;
camera{ 
  location<-20,5,-28>
  look_at<2,5,4>
  //rotate y+15+clock
}//FinaldeCamara
               

              
// ---------------------------Cielo ---------------------------------------------------------------
plane{<0,1,0>,1 hollow  
       texture{ pigment{ bozo turbulence 0.92
                         color_map { [0.00 rgb <0.25, 0.35, 1.0>*0.7]
                                     [0.50 rgb <0.25, 0.35, 1.0>*0.7]
                                     [0.70 rgb <1,1,1>]
                                     [0.85 rgb <0.25,0.25,0.25>]
                                     [1.0 rgb <0.5,0.5,0.5>]}
                        scale<1,1,1.5>*2.5  translate< 0,0,0>
                       }
                finish {ambient 1 diffuse 0} }      
       scale 10000}
// fog on the ground ------------------------- end of sky with clouds
fog { fog_type   2
      distance   100
      color      White*0.5  
      fog_offset 0.1
      fog_alt    2.0
      turbulence 1.8
    }
//------------------------------------------------- end of ground fog
                            
               
/*light_source{
  <0,9,0> color White  
}*/
light_source {<-clock*(40),75,-100> White}
//background {LightBlue} 

//---------------------------PINO---------------------------------

#for (Px,2,10,1)
#for (Py,2,10,1)
//#declare pino = object{
    //union{ 
      box{<(-0.05+Px)*2,0,(-0.05+Py)*2>,<(0.05+Px)*2,1,(0.05+Py)*2>
      texture {pigment {color Brown}} 
      scale 10
          }
      cone{<(-0.01+Px)*2,0.80,2*(Py+(-0.01))>,0.4
          <(Px+0)*2,2,2*(Py+0)>,0.02
      texture { 
        pigment { color Green }
          }
      scale 10
      }
      cone {<(-0.01+Px)*2,1.20,(-0.01+Py*2)>,0.4
          <(Px+0)*2,2.5,(Py+0)*2>,0.02
      texture { 
        pigment { color Green }
          }
       scale 10
      }
     //}//finaldeunion       
     //scale 2     
            
 //}//finalde Object 
#end//fory 
#end//forx

//---------------------------MONTAÑA----------------------------
#declare monta = object{     
    union{     
    cone{
        <0,0,0>,15.5
        <0,18,0>1.2
        texture{
            pigment {color Silver}
        }                         
        translate <15,0,20> 
        scale 50
    }//finaldecone
    
    cone{
        <0,12,0>,6.2
        <0,18,0>1.2
        texture{
            pigment {color rgb <255,248,220>}
        }                         
        translate <15,0,20> 
        scale 50
    }//finaldecone
    
    
    cone{
     <0,0,0>,15.5
        <0,18,0>1.2
        texture{
            pigment {color Silver}
        }                         
        translate <45,0,20> 
        scale 50
    }//finalCone  
    
    cone{
     <0,12,0>,6.5
        <0,18,0>1.2
        texture{
            pigment {color rgb <255,248,220>}
        }                         
        translate <45,0,20> 
        scale 50
    }//finalCone     
    
    cone{
     <0,0,0>,15.5
        <0,18,0>1.2
        texture{
            pigment {color Silver}
        }                         
        translate <5,0,70> 
        scale 50
    }//finalCone 
                   
    cone{
     <0,12,0>,6.5
        <0,18,0>1.2
        texture{
            pigment {color rgb <255,248,220>}
        }                         
        translate <5,0,70> 
        scale 50
    }//finalCone
    }//Union     
  //translate <>       
}//finobject    
//---------------------------MUÑECO-------------------------------
#declare escape = object{ 
union{
sphere{
  <15,2,0>, 2
  texture{
    pigment{color White}//finaldePigmente
  }//finaldeTesturSphere
}//finaldeSphere   

sphere{
 <15,4.7,0>, 1.5
 texture{
  pigment{color White}//finalpingment
 }//finaltexute
}//finaldesphere

cylinder{
    <15,5.7,0>, <15,8.2,0>, 1   
}//FinaldelCilindro 
cylinder{
    <15,5.7,0>, <15,6.8,0>, 1
    texture{pigment{color Red}
    }//finaldetexture   
}//FinaldelCilindro  
cylinder{
    <15,5.7,0>, <15,6,0>, 1.5
}//FinaldelCilindro         

cone{
 <12.5,5.01,0>,0.03
 <14.5,5.01,0>,0.3
 texture{
   pigment{color Orange}//finalpigment
   }//finaldetexture  
}//finaldecone   
}//findeObjetc  
 
//---------------------------------------------------------
    
 translate <-2*clock,0,0>   
 
}//finalunion               
 

//-------------------CASITA----------------------------------           

#declare casita = object{   
union{
box{
 <3,0,-2>, <9,4,4>   
 scale   4
 //translate<-2,-2,-2>
 texture{ 
     pigment{
        image_map{
           jpeg "C:\Users\Andres\Desktop\paredladrillo.jpg"   
            map_type 0
                       
        }//final de imagemap
      } //finaldePigment
 }//finaldeTexture   
}//FinalBox  

//--------BoxPuerta---
 box{
  <2.9,0,-1>, <3,3,1>
  scale 4
 texture{
   pigment{color White}//finalpigment
 }//finaltexture 
 }//FinaldeboxPuerta

box{
 <2,5,6>, <13,6.5,-4>
 scale 3
 texture{
    pigment{color Silver}//finalsilver 
    }//final texture
}//Final de Box 
}//finalunion 
}//finalCasita             
//#end 

 
casita

escape 

monta

//------------------------------------------------------------------------------------------- 
plane{
 y, 0
 texture{
   pigment {color GreenYellow} 
//finalde pigment
 }//finaldetexture
}//Finalplane,y        

/*
plane{
 x, 100
 texture{
    pigment{ color rgb <1,1,1>}//finalpigmentx
 }//finaldetexturex
}//finalPlanox  */
         
/*fog{ fog_type   2
     distance   10
     color      White *0.4 
     fog_offset 0.1
     fog_alt    1.05
     turbulence 1.08
   } //----------------
*/

/*plane{
 z, 100
 texture{
    pigment{ color GreenYellow}//finalpigmentx
 }//finaldetexturex
}//finalPlanox*/