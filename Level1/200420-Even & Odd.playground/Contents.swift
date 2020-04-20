import UIKit

//정수 num이 짝수일 경우 Even을 반환하고 홀수인 경우 Odd를 반환하는 함수, solution을 완성해주세요.

//제한조건 : num은 int 범위의 정수입니다.
//         0은 짝수입니다.

// 내가 한 답
func solution(_ num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    }else {
        return "Odd"
    }
}

solution(10)
solution(7)


// 다른사람이 한 답

func solution2(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}
solution2(10)
solution2(5)
