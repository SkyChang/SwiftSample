import UIKit

// 類似介面，但也可以定義屬性
protocol Repository{
    var dbString : String {get set}
    
    func get() -> String
}

class CustomerRepo : Repository{
    var dbString: String = "localdb"
    
    func get() -> String {
        return "Sky"
    }
}


// 也可以達到複合的 protocol
protocol Repository2 : Repository{
    func add() -> Void
}

class CustomerRepo2 : Repository2{
    
    var dbString: String = "localdb"
    
    func get() -> String {
        return "Sky"
    }
    
    func add() -> Void {
        
    }
}

var cust : Repository2 = CustomerRepo2()
cust.get()
