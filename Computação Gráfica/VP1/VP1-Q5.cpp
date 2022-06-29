#include <iostream>
#include <stdio.h>
#include <string.h>
#include <GL/glut.h>
#include <Windows.h>
#include <cmath>

void init(void) {
	glClearColor(0.1, 0.1, 0.1, 0);

	glMatrixMode(GL_PROJECTION);
	gluOrtho2D(-20, 20, -20, 20);

}

void lineSegment(void) {
	int x1 = -0;
	int y1 = -0;

	int x2 = 0;
	int y2 = -0;

	int x3 = -0;
	int y3 = 0;

	int x4 = 0;
	int y4 = 0;

	glClear(GL_COLOR_BUFFER_BIT);
	glColor3f(1, 0, 1);
	glBegin(GL_LINES);
	for (int i = 1; i <= 9; i++)
	{
		glVertex2i(x1 - i, y1 - i);
		glVertex2i(x2 + i, y2 - i);

		glVertex2i(x2 + i, y2 - i);
		glVertex2i(x4 + i, y4 + i);

		glVertex2i(x3 - i, y3 + i);
		glVertex2i(x4 + i, y4 + i);

		glVertex2i(x1 - i, y1 - i);
		glVertex2i(x3 - i, y3 + i);
	}

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