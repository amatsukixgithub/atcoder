#include<iostream>
using namespace std;

int main(){
  int a=0;
  int i=1;
  while(1){
    cin >> a;
    if(a == 0) break;
    cout << "Case " << i << ": " << a << endl;
    i++;
  }
  return 0;
}
