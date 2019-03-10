import UIKit

// if
if 1 == 2 {
    print("1==2")
}
else if 1 == 1{
    print("1==1")
}




// for ( Swift 沒有 fot int = 0 ; i == 1 ; i++ , 因為 Swift 沒有 ++ ( 舊版有 )
let loopNum = [1,2,3,4,5]
var sum = 0
for num in loopNum {
    sum += num
}
print(sum)

// 特殊用法 , 從 1 到 <10 , 也可以用 ... 10  代表到 10
sum = 0
for num in 1 ..< 10 {
    sum += num
}
print(sum)

// fot int = 0 ; i == 1 ; i++ 用法
// 要運算 1 ~ 10 to 要寫 11
sum = 0
for num in stride(from: 0, to: 11 , by: 1) {
    sum += num
}
print(sum)





// While
var num2 = 10
while num2 > 0 {
    num2 -= 1
}




// Switch , 不需要 break 預設只會執行一個 case，若真的要執行多個，可以加上 fallthrough
let num3 = 10
switch num3 {
case 0...5:
    print("0~5")
case 10:
    print("10")
    // fallthrough
default:
    print("Not Find")
}

// Switch and Tuple , 可以用 _ 代表任意值，也可以自行加上變數替代原本目標 ex ( let string, _)
// \() 是 字串變數串接方法
let tupleSampe = ("Yes", 123)
switch tupleSampe {
case ("Yes", _):
    print("ok")
case (let string, _):
    print("\(string) is 123'")
}
