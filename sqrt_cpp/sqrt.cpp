
#include <iostream>
#include <math.h>
using namespace std;

float myFabs(float x){
    return x < 0 ? -x : x;
}

float mySqrt(float val){
    float x = val/10;
    float dx;
    double diff;
    double min_tol = .00001;
    bool flag = false;

    if(val == 0){
        x = 0;
    }else{
        for(int i = 1; i <20; i++){
            if(!flag){
                dx = (val - pow(x, 2)) / (2 * x);
                x += dx;
                diff = val - pow(x, 2);
                flag = (myFabs(diff) <= min_tol);
            }
        }
    }
    return x;

}


int main(){
    float sqrt = mySqrt(123.123);

    cout << "sqrt(123.123) = " << sqrt << "\n";
}
