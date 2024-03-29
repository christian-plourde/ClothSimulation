
#include <string>
#include <glew.h>
#include "GLUT/GL/glut.h"

#include <Ghost.h>

// Just below are three global variables holding the actual animated stuff; Cloth and Ball
Ghost ghost(1.5, Vec3(1.0f, 1.0f, 1.0f));


/***** Below are functions Init(), display(), reshape(), keyboard(), arrow_keys(), main() *****/

/* This is where all the standard Glut/OpenGL stuff is, and where the methods of Cloth are called;
addForce(), windForce(), timeStep(), ballCollision(), and drawShaded()*/


void init(GLvoid)
{
    glShadeModel(GL_SMOOTH);
    glClearColor(0.2f, 0.2f, 0.4f, 0.5f);
    glClearDepth(1.0f);
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glEnable(GL_COLOR_MATERIAL);
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    GLfloat lightPos[4] = {-1.0,1.0,0.5,0.0};
    glLightfv(GL_LIGHT0,GL_POSITION,(GLfloat *) &lightPos);

    glEnable(GL_LIGHT1);

    GLfloat lightAmbient1[4] = {0.0,0.0,0.0,0.0};
    GLfloat lightPos1[4] = {1.0,0.0,-0.2,0.0};
    GLfloat lightDiffuse1[4] = {0.5,0.5,0.3,0.0};

    glLightfv(GL_LIGHT1,GL_POSITION,(GLfloat *) &lightPos1);
    glLightfv(GL_LIGHT1,GL_AMBIENT,(GLfloat *) &lightAmbient1);
    glLightfv(GL_LIGHT1,GL_DIFFUSE,(GLfloat *) &lightDiffuse1);

    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE,GL_TRUE);
}


/* display method called each frame*/
void display(void)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();

    glDisable(GL_LIGHTING); // drawing some smooth shaded background - because I like it ;)
    glBegin(GL_POLYGON);
    glColor3f(0.8f,0.8f,1.0f);
    glVertex3f(-200.0f,-100.0f,-100.0f);
    glVertex3f(200.0f,-100.0f,-100.0f);
    glColor3f(0.4f,0.4f,0.8f);
    glVertex3f(200.0f,100.0f,-100.0f);
    glVertex3f(-200.0f,100.0f,-100.0f);
    glEnd();
    glEnable(GL_LIGHTING);

    glTranslatef(-6.5,-2,-7.0f); // move camera out and center on the cloth
    glRotatef(60,0,1,0); // rotate a bit to see the cloth from the side
    ghost.display();

    glutSwapBuffers();
    glutPostRedisplay();
}

void reshape(int w, int h)
{
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    if (h==0)
        gluPerspective(80,(float)w,1.0,5000.0);
    else
        gluPerspective (80,( float )w /( float )h,1.0,5000.0 );
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

void keyboard( unsigned char key, int x, int y )
{
    switch ( key ) {
        case 27:
            exit ( 0 );
            break;
        default:
            break;
    }
}

void arrow_keys( int a_keys, int x, int y )
{
    switch(a_keys) {
        case GLUT_KEY_UP:
            glutFullScreen();
            break;
        case GLUT_KEY_DOWN:
            glutReshapeWindow (1280, 720 );
            break;
        default:
            break;
    }
}

int main ( int argc, char** argv )
{
    glutInit( &argc, argv );


    glutInitDisplayMode( GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH );
    glutInitWindowSize(1280, 720 );

    glutCreateWindow( "Cloth Simulation" );
    init();
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutKeyboardFunc(keyboard);
    glutSpecialFunc(arrow_keys);

    glutMainLoop();
}
