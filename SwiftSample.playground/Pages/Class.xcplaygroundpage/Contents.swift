import UIKit

class Car{
    var color: String?
    var maxSpeed:Int = 120 // 若不是 Optional , 則建構的時候要給值
    
    // 屬性的 Get 和 Set
    var maxSpeed2 : Int {
        get {
            return maxSpeed2 * 3
        }
        set {
            maxSpeed = newValue // 使用 newValue 表示傳進來的值
        }
    }
    
    // 直接回傳，適合不需要設定的變數
    var maxSpeed3 : Int{
        return maxSpeed * 3
    }
    
    // 監控屬性變化，類似 Angular 的監控機制
    var maxSpeed4 : Int = 120{
        willSet(newValue){
            print("變更成 \(newValue)")
        }
        didSet(oldValue){
            print("舊的值 \(oldValue)")
        }
    }
    
    // 延遲屬性，當真的被使用的時候，才會載入使用，適合這個變數是複雜物件的情況
    lazy var maxSpeed5 : Int = 500
    
    // 自訂建構子，通常用來初始化此物件一開始的資訊，屬性塞這邊可能比較好
    init(){
        print("建立中")
    }
    
    // 便利建構器，建立此物件時，也可以傳入參數
    // 這邊屬性由此傳入，但可能用 init 傳入會比較好
    convenience init(color:String) {
        self.init() // 一定要有
        self.color = color
        // 這邊可以加上判斷，若建構失敗，可以回傳 nil
    }
    
    deinit {
        print("解構中")
    }
    
    func description() -> String {
        return "This is \(color ?? "Red") Car"
    }
    
    // 用 self 代表 this
    func get3xSpeed() -> Int {
        return self.maxSpeed * 3
    }
}

// 夏亞的車子 - 1
let charCar = Car() // 使用自訂建構子
charCar.get3xSpeed()
charCar.description()

// 夏亞的車子 - 2
let charCar2 = Car(color: "Red2") // 使用便利建構子
charCar2.get3xSpeed()
charCar2.description()
charCar2.maxSpeed4 = 360
