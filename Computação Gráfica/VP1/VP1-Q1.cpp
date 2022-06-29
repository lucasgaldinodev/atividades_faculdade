#include <iostream>
#include <stdio.h>
#include <string.h>
#include <GL/glut.h>
#include <Windows.h>

void init(void) {
	glClearColor(0.1, 0.1, 0.1, 0);

	glMatrixMode(GL_PROJECTION);
	gluOrtho2D(0, 200, 0, 150);

}

void lineSegment(void) {
	glClear(GL_COLOR_BUFFER_BIT);
	glColor3f(1, 0, 1);
	glBegin(GL_LINES);
	glVertex2i(50, 50);
	glVertex2i(150, 50);

	glVertex2i(50, 50);
	glVertex2i(100, 100);

	glVertex2i(150, 50);
	glVertex2i(100, 100);

	glEnd();


	glFlush();
}

int main(int argc, char** argv)
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
	glutInitWindowPosition(100, 100);
	glutInitWindowSize(800, 600);
	glutCreateWindow("Cadeira CG  Uni7");
	init();
	glutDisplayFunc(lineSegment);
	glutMainLoop();

	return 0;

}