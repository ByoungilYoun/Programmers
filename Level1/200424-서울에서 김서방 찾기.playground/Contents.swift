import UIKit

// 문제 : String형 배열 seoul의 element중 Kim의 위치 x를 찾아, 김서방은 x에 있다는 String을 반환하는 함수, solution을 완성하세요. seoul에 Kim은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.

// 제한 조건 : seoul은 길이 1 이상, 1000 이하인 배열입니다.
//          seoul의 원소는 길이 1 이상, 20 이하인 문자열입니다.
//          Kim은 반드시 seoul 안에 포함되어 있습니다.


func solution(_ seoul:[String]) -> String {
    var location = ""

    if seoul.count >= 1 && seoul.count <= 1000 {
        for (index, string) in seoul.enumerated() {
            if string == "Kim" {
                location += "Kim은 \(index)에 있다."
            }
        }
    }
    return location
}



solution(["Jane", "Kane", "Sori", "Kim"])

// 다른 사람이 한 답
func solution2(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
}

