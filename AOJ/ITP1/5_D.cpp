#include<stdio.h>
#include<iostream>
using namespace std;

bool include3(int x){
  for(int i=x;i;i/=10){
    if(i % 10 == 3){
      return true;
    }
  }
  return false;
}

void call(int n){
  for(int i=1;i<=n;i++){
    if ( i % 3 == 0 || include3(i)){
      cout << " " << i;
    }
  }
  cout << endl;
}

int main(){
  int n=0;
  scanf("%d",&n);
  call(n);
  return 0;
}