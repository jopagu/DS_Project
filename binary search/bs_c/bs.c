
#include <stdio.h>

int search(int target, int arr[], int start, int end){
    int mid = (start + end) /2;
    if(end < start || start < 0 || end > 9999){
        return -1;
    }else if(start == end){
        if(arr[mid] == target){
            return mid;
        }else{
            return -1;
        }
    }else if(arr[mid] == target){
        return mid;
    }else if (arr[mid] > target){
        return search(target, arr, start, mid);
    }else{
        return search(target, arr, mid, end);
    }
}


int main(void){
    int arr[10000];
    for(int i = 0; i < 10000; i++){
        arr[i] = i + 1;
    }
    int target = 1;
    printf("%d\n", search(target, arr, 0, (10000 - 1)));
}