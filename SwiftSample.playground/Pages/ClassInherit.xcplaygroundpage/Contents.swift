import UIKit

class Car{
    var color: String?
    var maxSpeed:Int
    
    init(){
        maxSpeed = 120
        print("建立中")
    }
    
    func description() -> String {
        return "This is \(color ?? "Red") Car"
    }
    
    // 用 self 代表 this
    func get3xSpeed() -> Int {
        return self.maxSpeed * 3
    }
}

class charCar : Car{
    // 複寫父類別
    override func description() -> String {
        return "This is \(color ?? "Red") charCar"
    }
}

let c = charCar()
c.description()
