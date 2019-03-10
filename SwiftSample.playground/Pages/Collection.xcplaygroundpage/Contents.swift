import UIKit

// Array
var numberArray = [1,2,3]
var strArray : [String] = ["Sky","Benson"]
var numberArray2 = [Int]() // 給空值

// Array Get Value ,  和 C# 同
print(numberArray[0])

// Insert
numberArray.append(10)
numberArray.insert(20, at: 2)

// Remove
numberArray.remove(at: 2)

// Count
numberArray.count




// Tuple
var error = (500, ErrorMsg: "Server Error")

// Get Tuple
error.0 // Get 500
error.ErrorMsg // Get Error Msg




// Dictionary
// 也可以只放數字 [0:0 , 1:2]
var dictionary =  ["Key":"123" , "Value":"333"]

// Get Dictionary
dictionary["Key"]

// Remove Value
dictionary.removeValue(forKey: "Key")





// Set 類似 C# 的 List ，但裡面非常不同，裡面不會出現重複，而且不會有 index
var setSample = Set<String>()
var setSample2 : Set = ["Sky","Duran"]

setSample.insert("Sky")
setSample.insert("Duran")

for name in setSample {
    print(name)
}

// 更過 index 顯示值
let index = setSample.firstIndex(of: "Sky")
setSample[index!]
