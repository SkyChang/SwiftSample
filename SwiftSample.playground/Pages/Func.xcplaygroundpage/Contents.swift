import UIKit


// func
func add(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

// 呼叫要加上 lable
var result = add(num1: 1, num2: 1)

// func and Tuple
func add2(num1: Int, num2: Int) -> (resultMst: String , resut: Int){
    return ("Success", num1 + num2)
}


// func 和 _ , 透過 _ ( 我不在乎是什麼 ) 就可以不需要加加上標籤
func sub(_ num1: Int, _ num2: Int) -> Int{
    return num1 - num2
}

result = sub(1,1)


// Rename 標籤
func sub2(number1 num1: Int, number2 num2: Int) -> Int{
    return num1 - num2
}

result = sub2(number1:1 ,number2: 2)


// 不限定數量參數
func addAll(num: Int...){
    var total = 0
    for number in num{
        total += number
    }
}


// 傳 Address
func swap(vale1: inout Int , vale2: inout Int){
    
}


// 存入變數
var addVar : (Int, Int) -> Int = add
result = addVar(1 , 1)


// 存入變數2
func addByAdd(num1: Int , inAdd : (Int, Int) -> Int) -> Int{
    return inAdd(num1,num1)
}

result = addByAdd(num1: 1, inAdd: add)

// 回傳 func
func creatAddFunc() -> (Int, Int) -> Int{
    return add
}



// Closure
let numberArray = [2,3,1,23,12]
var numberSoft = numberArray.sorted(by: {
    (n1: Int,n2 :Int) -> Bool in return n2 > n1
})

// Closure 簡化 1
numberSoft = numberArray.sorted(by: {
    n1, n2 in return n2 > n1
})

// Closure 簡化
numberSoft = numberArray.sorted(by: {$0 > $1})

// Closure 簡化
numberSoft = numberArray.sorted{$0 > $1}
