//
//  DataService.swift
//  coder-swag
//
//  Created by Mariah Baysic on 3/24/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//
//  Singleton design pattern - there will only be 1 copy of data service that would hold the data of the app
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devsolpes Logo Graphic Beanie", price: "$ 18.00", imageName: "hat01.jpg"),
        Product(title: "Devsolpes Logo Hat Black", price: "$ 22.00", imageName: "hat02.jpg"),
        Product(title: "Devsolpes Logo Hat White", price: "$ 22.00", imageName: "hat03.jpg"),
        Product(title: "Devsolpes Logo Snapback", price: "$ 20.00", imageName: "hat04.jpg")
    ]
    
    private let hoodies = [
        Product(title: "Devsolpes Logo Hoodie Grey", price: "$ 32.00", imageName: "hoodie01.jpg"),
        Product(title: "Devsolpes Logo Hoodie Red", price: "$ 32.00", imageName: "hoodie02.jpg"),
        Product(title: "Devsolpes Hoodie Grey", price: "$ 32.00", imageName: "hoodie03.jpg"),
        Product(title: "Devsolpes Hoodie Black", price: "$ 32.00", imageName: "hoodie04.jpg")
    ]
    
    private let shirts = [
        Product(title: "Devsolpes Logo Shirt Black", price: "$ 18.00", imageName: "shirt01.jpg"),
        Product(title: "Devsolpes Badge Shirt Light Grey", price: "$ 18.00", imageName: "shirt02.jpg"),
        Product(title: "Devsolpes Logo Shirt Red", price: "$ 18.00", imageName: "shirt03.jpg"),
        Product(title: "Hustle Delegate Grey", price: "$ 18.00", imageName: "shirt04.jpg"),
        Product(title: "Kickflip Studios Black", price: "$ 18.00", imageName: "shirt05.jpg")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "SHIRTS":
            return shirts
        default:
            return digitalGoods
        }
    }
}
