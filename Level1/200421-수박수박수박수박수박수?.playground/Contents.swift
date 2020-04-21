import UIKit

// 문제 : 길이가 n이고, 수박수박수박수....와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 수박수박을 리턴하고 3이라면 수박수를 리턴하면 됩니다.

// 제한 조건 : n은 길이 10,000이하인 자연수입니다.

func solution(_ n:Int) -> String {
    var putStringTogether = ""
    
    for i in 1...n {
        if i % 2 != 0 {
            putStringTogether += "수"
        } else {
            
                putStringTogether += "박"
            }
        }
    return putStringTogether
}
 

solution(3)
solution(4)

// 다른 사람이 한 답
func solution2(_ n:Int) -> String {
    var str = ""

    for i in 1...n {
        str += i % 2 == 1 ? "수" : "박"
    }

    return str
}

