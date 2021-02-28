#ifdef GL_ES
precision mediump float;
#endif

attribute vec3 aPosition;

attribute aTexCoord;
varying vec2 vTexCoord;

void main(){
    vec4 positionVec4 = vec4(aPosition, 1.0);

    positionVec4.xy = positionVec4.xy * 2.0 - 1.0;

    vTexCoord = aTexCoord;
    gl_Position = positionVec4;

}