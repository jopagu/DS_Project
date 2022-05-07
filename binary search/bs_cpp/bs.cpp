
#include <vector>
#include <math.h>
#include <iostream>
using namespace std;

int search_helper(int t, vector<int> v, int start, int end){
    int middle = int ((start + end) / 2.0);
    if(start < end || start < 0 || end > v.size()){
        return -1;
    }else if (start == end){
        if (v[middle] == t){
            return middle;
        }else{
            return -1;
        }
    }else if (v[middle] == t){
        return middle;
    }else if (v[middle] < t){
        return search_helper(t, v, middle, end);
    }else{
        return search_helper(t, v, start, middle);
    }
}

int search(int t, vector<int> v){
    return search_helper(t, v, 0, v.size() - 1);
}

int main(){
    int target = 1;
    vector<int> v;
    for (int i = 1; i <= 10000; i++){
        v.push_back(i);
    }
    int result = search(target, v);

    cout << "The result is:" << result << "\n";

}