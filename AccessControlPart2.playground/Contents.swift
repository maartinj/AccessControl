import UIKit

let newCustomer = Purchases()
//newCustomer.products = [
//    Product(name: "Mac Pro", price: 5999),
//    Product(name: "Pro Display", price: 4999)
//]
newCustomer.newPurchase(name: "Mac Pro", price: 5999)
newCustomer.newPurchase(name: "Pro Display", price: 4999)
let totalPrice = newCustomer.calculatePrice()
newCustomer.products[0].name
newCustomer.products[0].purchasePrice
//newCustomer.products[0].price = 1000
let newPrice = newCustomer.calculatePrice()

class DiscountPurchases: Purchases {
    var age: Int
    var discountPercentage: Double {
        age > 55 ? 10 : 0
    }
    init(age: Int) {
        self.age = age
        super.init()
    }
    
    override func calculatePrice() -> Double {
        super.calculatePrice() * (1 - discountPercentage / 100)
    }
}

let newCustomer2 = DiscountPurchases(age: 50)
newCustomer2.newPurchase(name: "Mac Pro", price: 5999)
newCustomer2.newPurchase(name: "Pro Display", price: 4999)
let totalPrice2 = newCustomer2.calculatePrice()
