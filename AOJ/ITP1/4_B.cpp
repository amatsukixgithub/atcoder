#include<iostream>
#include<stdio.h>
using namespace std;

int main(){
  double PI=3.141592653589;
  double r;
  scanf("%lf", &r);

  printf("%f %f\n",(r*r*PI),(2*PI*r));
}