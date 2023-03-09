//
//  CalculatorCppHandler.cpp
//  NKTestOCFramework
//
//  Created by Van Zhang on 2023/3/9.
//

#include "CalculatorCppHandler.h"
#include <stdio.h>
#include <iostream>
#include <string.h>

class Shape {
   protected:
      int width, height;
   public:
    Shape(int a=0, int b=0);
    int area();
};

class Rectangle: public Shape{
   public:
    Rectangle(int a=0, int b=0):Shape(a, b) { }
    int area ();
};
class Triangle: public Shape{
   public:
    Triangle( int a=0, int b=0):Shape(a, b) { }
    int area ();
};

using namespace::std;

//void calculate(void){
//    printf("\n\n\nstring 类型字符串");
//
//    string meg[10] = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};
//    cout << meg << endl;
//    //定义 string 变量
//    string str1add, str2add;
//
//    //init
//    string str1 = "网名:";
//    string str2 = "个人Blog地址:";
//
//    //追加到 str 末尾
//    str1add = str1.append("LuckyVan");
//    str2add = str2.append("https://www.baidu.com");
//
//    cout << "str1\t" << str1 << "\n" << "str2\t" << str2 << endl;
//
//}
 
Shape::Shape(int a, int b){
   width = a;
   height = b;
}

int Shape::area()
{
   cout << "Parent class area :" <<endl;
   return 0;
}

int Rectangle::area(){
   cout << "Rectangle class area :" <<endl;
   return (width * height);
}

int Triangle::area(){
   cout << "Triangle class area :" <<endl;
   return (width * height / 2);
}
//// 程序的主函数
//void dosomethingForClass(void){
//   Shape *shape;
//   Rectangle rec(10,7);
//   Triangle  tri(10,5);
//
//   // 存储矩形的地址
//   shape = &rec;
//   // 调用矩形的求面积函数 area
//   shape->area();
//
//   // 存储三角形的地址
//   shape = &tri;
//   // 调用三角形的求面积函数 area
//   shape->area();
//}

@implementation CalculatorCppHandler
+ (void)doSomethingForCppClass{
       Shape *shape;
       Rectangle rec(10,7);
       Triangle  tri(10,5);
    
       // 存储矩形的地址
       shape = &rec;
       // 调用矩形的求面积函数 area
       shape->area();
    
       // 存储三角形的地址
       shape = &tri;
       // 调用三角形的求面积函数 area
       shape->area();
}
@end
