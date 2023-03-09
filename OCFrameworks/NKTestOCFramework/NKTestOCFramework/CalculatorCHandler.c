//
//  CalculatorCHandler.c
//  NKTestOCFramework
//
//  Created by Van Zhang on 2023/3/9.
//

#include "CalculatorCHandler.h"

int extern_int_value = 10;

int addFunc(int a,int b){
    return a + b;
}

void caculateDemo1(void) {
    const int LEGTH = 10;
    const int WIDTH = 5;
    int area;
    area = LEGTH * WIDTH;
    printf("value of area: %d", area);
}


void caculateDemo2(){
    int a = 21;
    int b = 10;
    int c;

    c = a + b;
    printf("a + b = %d \n", c);

    c = a - b;
    printf("a - b = %d \n", c);

    c = a * b;
    printf("a * b = %d \n", c);

    c = a / b;
    printf("a / b = %d \n", c);

    c = a % b;
    printf("a % b = %d \n", c);

    c = ++a;
    printf("++a = %d , %d \n", c, a);

    c = b++;
    printf("b++ = %d , %d \n", c, b);

    c = b--;
    printf("b-- = %d \n", c);
}
