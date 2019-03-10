import UIKit

// enum
enum ErrorType{
    case NotFind
    case ServerError
}

// 使用
var error = ErrorType.NotFind

// 搭配 Switch , 可用 . 省略 ErrorType
switch error {
case .NotFind:
    print("Not Find")
default:
    print("Not think")
}

// Enum 加上 Fun
func add(num1:Int, num2:Int) -> Int{
    return num1 + num2
}

enum Operation{
    case add(num1: Int, num2: Int)
}

// enum + Type
enum ErrorType2 : String{
    case NotFind = "404"
    case ServerError = "500"
}
