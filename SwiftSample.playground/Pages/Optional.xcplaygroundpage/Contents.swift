import UIKit
var str = "Hello, playground"

// 和 C# 很大不同
// 可以透過 ? 來代表空值
var num : Int? = nil
print(num)

// 判斷是否為 nil
if num == nil{
    print("nil")
}

if let num2 = num{
    // 不為 nil 會進入此區段
    // 此判斷還滿能用的
    print(num2)
}
else{
    print("num is nil")
}


// 用 ! 直接取值 , 若為 nil 則會發生錯誤
// 也可以在定義變數的時候直接給! ex var num : Int! 這樣取值就不需要 !
num = 1
let result = num!


// 用 ? 來處理 nil , 如果在執行過程中遇到 nil 就直接給 nil
var numArray : [Int]? = nil
var count = numArray?.count

// ?? 來取代值，和 C# 一樣，若 numArray 為 nil 則會給後面的值
var numArrary2 = numArray ?? [1,2,3]

