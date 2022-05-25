//
//  CorrectViewModel.swift
//  CapstoneDesign
//
//  Created by 권오준 on 2022/05/23.
//

import Foundation

class CorrectViewModel {
    static let shared = CorrectViewModel()
    
    private init() {}
    
    var foods = [Food]()
    var detailFood: Food!
    
    var counfOfFoods: Int {
        return foods.count
    }
    
    func correctDetail(purchaseDate: String, expirationdate: String, memo: String) {
        if let index = foods.firstIndex(of: detailFood) {
            foods[index].purchaseDate = purchaseDate
            foods[index].expirationDate = expirationdate
            foods[index].memo = memo
        }
    }
    
    func correctFoods() {
        FoodManager.shared.correctFood(foods)
    }
    
    func loadFoods() {
        self.foods = FoodManager.shared.foods
    }
}
