import Foundation

public struct Product {
    public let name: String
    private(set) var price: Double
    public init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    public var purchasePrice: Double {
        price
    }
}

open class Purchases {
    public var products: [Product] = []
    public init() {}
    open func calculatePrice() -> Double {
        products.reduce(0) { $0 + $1.price }
    }
    public func newPurchase(name: String, price: Double) {
        let newProduct = Product(name: name, price: price)
        products.append(newProduct)
    }
}
