import UIKit

// Defer , 定義在裡面的最後才會執行

func doWork(){
    print(1)
    defer {
        print(2)
    }
    print(3)
}
doWork()


// Guard 處理流程的驗證
func doWork2(){
    guard 1+1 == 2 else{
        // 不相等時，會進入
        print("Error")
        return
    }
    print("Success")
}
doWork2()
