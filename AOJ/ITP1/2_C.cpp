#include<iostream>
using namespace std;

int main(){
  int a,b,c;
  cin >> a >> b >> c;

  if(a > b){
    int x = a;
    a = b;
    b = x;
  }
  if(b > c){
    int x = b;
    b = c;
    c = x;
  }
  if (a > b){
    int x = a;
    a = b;
    b = x;
  }
  cout << a << " " << b << " " << c << endl;
  return 0;
}