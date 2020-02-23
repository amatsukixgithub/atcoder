#include<stdio.h>  //cin用
#include<iostream> //printf用
using namespace std;

int main(){
  int a,b=0;
  cin >> a >> b;

  printf("%d %d %.5lf\n",(a/b),(a%b),((double)a/b));
  return 0;
}
