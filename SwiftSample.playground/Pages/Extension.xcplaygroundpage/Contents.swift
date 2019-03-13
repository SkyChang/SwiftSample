import UIKit

// 為原本的 Int 擴展方法 , 當然，也可以實作 Protocal
extension Int {
    var double : Int {
        return self * 2
    }
    
    func multiplayWith(anotherNumber: Int) -> Int{
        return anotherNumber * self
    }
}

2.double
2.multiplayWith(anotherNumber: 3)

// 當然，也可以實作 Protocal，主要用在有 protocol 但部分又想先實作一點
protocol Repository{
    var dbString : String {get set}
    
    func get() -> String
}

extension Repository{
    func get() -> String{
        return "sky"
    }
}

class CustomerRepo : Repository{
    var dbString: String = "localdb"
    
    // 不須再實作，因為 extension 已經做了
    //func get() -> String {
    //    return "Sky"
    //}
}

let cust : Repository = CustomerRepo()
cust.get()
