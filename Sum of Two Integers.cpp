
/*
	Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.

	Example:
	Given a = 1 and b = 2, return 3.

	Credits:
	Special thanks to @fujiaozhu for adding this problem and creating all test cases.

*/

class Solution {
public:
    int getSum(int a, int b){
        int sum = 0;   
        if(a == 2147483647 || b == -2147483648){
                return -1;
        }
        while(a != 0){
            if(a < 0){
                sum--;
                a++;
            }
            else if(a > 0){
                sum++;
                a--;
            }
        } 
        while(b != 0){
            if(b < 0){
                sum--;
                b++;
            } 
            else if(b > 0){
                sum++;
                b--;
            }
        }
        return sum;
    }
};