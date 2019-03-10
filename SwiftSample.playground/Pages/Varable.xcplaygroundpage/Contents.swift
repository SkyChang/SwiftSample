import UIKit

// 變數
var str = "Hello, playground"
let str2 = "Hello, playground" // let 為不可變

// 指定型態
var str3 : String = "Hello, playground"

print(str)


// 字串 , 可用 String() 代表空字串，也可以用 ""
// 字串使用 Unicode
var str4 = String()
str4 = "Hello World"
for char in str4 {
    print(char)
}

// 字串大寫
str4.uppercased()

// 字串小寫
str4.lowercased()

// Search 字串
str4.hasPrefix("Hello")
str4.hasSuffix("World")

// 串字串
str4 = "Hello \(str3)"



// 轉型 , 若 int 可以轉換，則為裡面的值，不能轉換則為 0
var str5 = Int("123") ?? 0

// Any 等同於 C# 的 Object 型別
var str6 : Any = 123

// 用 is 判斷
if str6 is Int{
    print("is Int")
}

// 用 as 取值 , as? 會回傳 nil , as! 發現 nil 會出錯
var result = str6 as? Int
