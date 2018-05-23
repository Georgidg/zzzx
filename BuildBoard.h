#pragma once
#include <iostream>
#include <string>
#include "IllegalCharException.h"
using namespace std;
class BuildBoard
{
public:
	const char get()const;
	void set(char c);
	BuildBoard();
	BuildBoard(char);
	BuildBoard& operator = (char);
	operator char() const;
	friend ostream& operator <<(ostream&, const BuildBoard&);
	friend bool operator==(BuildBoard&, char);
private:
	char c;



};