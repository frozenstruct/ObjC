//
//  forward-declare-main.cpp
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#include <iostream>

#include "forward-declare-main.h"

int add(int a, int b);

int mainMock() {

	using namespace std;
	cout << "The sum of 3 and 4 is " << add(3, 4) << endl;

	return 0;
}
