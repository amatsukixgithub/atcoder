#include<iostream>
using namespace std;

int main(){
  int s;
  cin >> s;

  int h = s/60/60;
  int m = (s-h*60*60)/60;
  int ss = s-(h*60*60+m*60);

  cout << h << ":" << m << ":" << ss << endl;

  return 0;
}