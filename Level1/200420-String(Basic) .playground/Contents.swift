import UIKit

//문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지
//확인해주는 함수, solution을 완성하세요. 예를 들어 s가
//"a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면
//됩니다.

// 제한사항 : s 는 길이 1이상, 길이 8 이하인 문자열

//내가 한 답

func solution (_ s : String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if Int(s) != nil {
            return true
        }
    }
    return false
}

solution("a234")
solution("1234")
solution("12345")

// 다른 사람이 한 답

func solution2(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}

solution2("a1234")


// 다른 사람이 한 답
func solution3(_ s:String) -> Bool {

    switch s.count {
    case 4, 6:
        break
    default:
        return false
    }

    for ch in s {
        switch ch {
        case "0"..."9":
            continue
        default:
            return false
        }
    }

    return true
}

