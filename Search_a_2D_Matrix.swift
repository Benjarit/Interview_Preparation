


/*

Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.
For example,

Consider the following matrix:

[
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
Given target = 3, return true.

*/

class Solution {
   func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if (matrix.count == 0) || (matrix[0].count == 0) {
            return false
        }
            var mid: Int
            var l: Int = 0
            var h: Int = matrix.count-1

            var mid2: Int
            var l2: Int = 0
            var h2: Int = matrix[0].count-1

            while h >= l{
                mid = l + (h-l)/2
                if matrix[mid].last! >= target{
                    while h2 >= l2{
                        mid2 = l2 + (h2-l2)/2
                        if matrix[mid][mid2] == target{
                           return true
                        }else if matrix[mid][mid2] > target{
                            h2 = mid2-1
                        }else{
                            l2 = mid2+1
                        }
                    }
                        h = mid-1
                        l2 = 0
                        h2 = matrix[0].count

                }else if matrix[mid].last! < target{
                    l = mid+1
                }
            }
       return false
   }  
}
