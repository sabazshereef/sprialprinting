import UIKit

var greeting = "Hello, playground"
var resultArr = [Int]()

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    
 
    var lastRow = matrix.count - 1
    var lastColoumn = lastRow
   print(lastColoumn)
    var r = 0
    var c = 0
    
    while ( r < lastRow && c < lastColoumn){
        
        for i in 0...lastColoumn  {
            print("initial add - ",matrix[r][i])
           resultArr.append(matrix[r][i])
            
        }
        r += 1
        
        for j in r...lastRow  {
      print("2nd step - ", matrix[j][lastColoumn] )
            resultArr.append(matrix[j][lastColoumn])
        
            
        }
        lastColoumn -= 1
        
        
        if r <= lastRow {
          
            for n in (c...lastColoumn).reversed() {
               print("3rd step -", matrix[lastRow][n] )
                resultArr.append(matrix[lastRow][n])
                
            }
            lastRow -= 1
        }
        if c <= lastColoumn {
            
            
            for m in c...lastRow {
                
                
                print("Final step -- \(matrix[lastRow][m])")
            resultArr.append(matrix[lastRow][m])
        }
            c += 1
            }
        
    }
    
    
    
    return resultArr
    }

print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))
