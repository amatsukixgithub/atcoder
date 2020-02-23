#include<stdio.h>
using namespace std;

int f_max(int,int);
int f_min(int,int);

int main(){
  int n,tmp;
  int min =  1000000;
  int max = -1000000;
  long long int sum=0L;
  scanf("%d",&n);
  for (int i=0;i<n;i++){
    scanf("%d",&tmp);
    sum+=tmp;
    min=f_min(min,tmp);
    max=f_max(max,tmp);
  }
  printf("%d %d %ld\n",min,max,sum);
  return 0;
}

int f_max(int a,int b){
  if(a>b){
    return a;
  }else{
    return b;
  }
}

int f_min(int a,int b){
  if(a<b){
    return a;
  }else{
    return b;
  }
}