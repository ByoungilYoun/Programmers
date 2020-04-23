import UIKit

// 문제 : 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.

// 제한 조건 : n은 0 이상 3000이하인 정수입니다


func solution (_ n : Int) -> Int {
    var num = 0
    if n == 0 {
        return 0
    }
    
    if n >= 0 && n <= 3000 {
        for i in 1...n {
            if n % i == 0 {
                num += i
            }
        }
    }
    return num
}

solution(12)
solution(5)
solution (0)

// 다른 사람이 한 답
func solution2(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    var result:Int = 0
    for i in 1...n {
        if n % i == 0 {
            result += i
        }
    }
    return result
}

