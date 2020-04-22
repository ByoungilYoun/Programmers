import UIKit

// 문제 : 문자열 s를 숫자로 변환한 결과를 반환하는 함수, solution을 완성하세요.

// 제한 조건 : 1. s의 길이는 1이상 5 이하 입니다.
//          2. s의 맨앞에는 부호(+, -)가 올 수 있습니다.
//          3. s는 부호와 숫자로만 이루어져있습니다.
//          4. s는 0으로 시작하지 않습니다.

// ex) 예를들어 str이 1234이면 1234를 반환하고, -1234이면 -1234를 반환하면 됩니다.
//     str은 부호(+,-)와 숫자로만 구성되어 있고, 잘못된 값이 입력되는 경우는 없습니다.


func solution (_ s : String) -> Int {
    var finalNum : Int? = 0
    
    if s.count >= 1 && s.count <= 5 {
        finalNum = Int(s)!
    }
    return finalNum!
}

solution("-1234")
solution("12345")


// 다른 사람이 한 답
//1)
func solution2(_ s:String) -> Int {
    return Int(s)!
}

