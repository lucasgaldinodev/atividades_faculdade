#include <iostream>
#include <stdio.h>
#include <string.h>
#include <GL/glut.h>
#include <Windows.h>

void init(void) {
	glClearColor(0.1, 0.1, 0.1, 0);

	glMatrixMode(GL_PROJECTION);
	gluOrtho2D(0, 70, 0, 70);

}

void lineSegment(void) {
	int x1 = 20;
	int y1 = 40;

	int x2 = 40;
	int y2 = 40;

	int x3 = 40;
	int y3 = 20;

	int x4 = 20;
	int y4 = 20;

	int x5 = x3 + 10;
	int y5 = y3 + 10;

	int x6 = x1 + 10;
	int y6 = y1 + 10;

	int x7 = x2 + 10;
	int y7 = y2 + 10;

	glClear(GL_COLOR_BUFFER_BIT);
	glColor3f(1.0, 0.0, 0.0);
	glBegin(GL_POLYGON);
	glVertex2i(x1, y1);
	glVertex2i(x2, y2);
	glVertex2i(x3, y3);
	glVertex2i(x4, x4);
	glEnd();

	glColor3f(1.0, 1.0, 0.0);
	glBegin(GL_POLYGON);
	glVertex2i(x1, y1);
	glVertex2i(x2, y2);
	glVertex2i(x6, y6);
	glVertex2i(x7, y7);
	glVertex2i(x2, y2);
	glEnd();

	glColor3f(0.0, 0.0, 1.0);
	glBegin(GL_POLYGON);
	glVertex2i(x2, y2);
	glVertex2i(x5, y5);
	glVertex2i(x3, y3);
	glVertex2i(x7, y7);
	glVertex2i(x5, y5);
	glEnd();

	glFlush();
}

int main(int argc, char** argv)
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
	glutInitWindowPosition(100, 100);
	glutInitWindowSize(800, 800);
	glutCreateWindow("Cadeira CG  Uni7");
	init();
	glutDisplayFunc(lineSegment);
	glutMainLoop();

	return 0;

}