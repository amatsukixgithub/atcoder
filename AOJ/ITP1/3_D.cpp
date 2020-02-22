#include<iostream>
using namespace std;

int main(){
  int a,b,c,x=0;
  cin >> a >> b >> c;
  for(int i=a; i<=b; i++){
    if(c%i==0){
      x++;
    }
  }
  cout << x <<endl;
  return 0;
}

// #include <stdio.h>
// using namespace std;
// int main(){
// 	int a,b,c,count = 0;
// 	scanf("%d %d %d",&a,&b,&c);
// 	for(int i = a; i <= b; i++){
// 		if(c%i == 0) count++;
// 	}
// 	printf("%d\n",count);
// }
