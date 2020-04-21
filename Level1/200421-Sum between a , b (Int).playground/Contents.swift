import UIKit

//두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
//예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

// 제한조건 : a와 b가 같은 경우는 둘 중 아무 수나 리턴하세요.
//          a와 b는 -10,000,000 이상 10,000,000 이하인 정수입니다.
//          a와 b의 대소관계는 정해져있지 않습니다.


func solution ( _ a : Int , _ b : Int) -> Int64 {
    var total = 0
    
    if a > b {
        for i in b...a {
            total += i
        }
    }
    
    if a < b {
        for i in a...b{
            total += i
        }
    }
    
    if a == b {
        total = a
    }
    
    return Int64(total)
}

solution(5, 3)

// 다른 사람이 한 답
// 1)
func solution2(_ a:Int, _ b:Int) -> Int64 {
  return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}


// 2)
func solution3(_ a:Int, _ b:Int) -> Int64 {
    var big = 0
    var small = 0
    if(a>b){
        big = a
        small = b
    }else if(a<b){
        big = b
        small = a
    }else{
        return Int64(a)
    }

    var result : Int64 = 0
    for i in small...big{
        result += Int64(i)
    }
    return result
}


