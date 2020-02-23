// --- helloworld ---
#include<iostream>
using namespace std;

int main(){
    cout << "Hello World" << endl;
    return 0;
}

// ---数値の入力---
int x;
cin >> x; //標準入力

// ---１行で複数の数値の入力---
int a;
int b;
cin >> a >> b;　// 変数a, b にこの順番で整数を入力する

// --- 複数行の数値受け取り ---


// --- vector ---
vector<int> vec(N);
for (int i = 0; i < N; i++) {
  cin >> vec.at(i);
}