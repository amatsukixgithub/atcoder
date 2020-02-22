#include<iostream>
using namespace std;

int main(){
  int w,h,x,y,r;
  cin >> w >> h >> x >> y >> r;

  string s = "Yes";
  if(x-r < 0){
    s = "No";
  }
  if(y-r < 0){
    s = "No";
  }
  if(x+r > w){
    s = "No";
  }
  if(y+r > h){
    s = "No";
  }
  cout << s << endl;
  return 0;
}
