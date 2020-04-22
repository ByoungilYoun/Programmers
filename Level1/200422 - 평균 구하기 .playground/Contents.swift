import UIKit

// 문제 : 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.

// 제한사항 : 1) arr은 길이 1 이상, 100 이하인 배열입니다.
//         2) arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.


// 내가 한 답 :

func solution (_ arr : [Int]) -> Double {
    var sum = 0
    
    for i in arr {
        sum += i
    }
    
    return Double(sum) / Double(arr.count)
}

solution([5,5])
solution([1,2,3,4])


// 다른 사람이 한 답 :
func solution2(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, { $0 + $1 })) / Double(arr.count)
}
