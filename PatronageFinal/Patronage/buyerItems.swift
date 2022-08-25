//
//  buyerItems.swift
//  Patronage
//
//  Created by student on 4/28/22.
//

import Foundation
struct buyerSection {
    var Category  = ""
        
    var items_Array :[buyerItems] = []

        
}
struct buyerItems{
  var  itemName = ""
    var itemImage = ""
    var itemQuantity = " "
    var itemPrice = " "
    
}
let item1  = buyerSection( Category: "Vegetables", items_Array: [buyerItems(itemName:"Potato",itemImage:"potato", itemQuantity: "2 tons", itemPrice: "$56")
                                                                ,buyerItems(itemName:"Tomato",itemImage:"tomato", itemQuantity: "4 tons", itemPrice: "$72")
                                                                ,buyerItems(itemName:"Okra",itemImage:"okra", itemQuantity: "5 tons", itemPrice: "$136")
                                                                ,buyerItems(itemName:"Beans",itemImage:"beans", itemQuantity: "8 tons", itemPrice: "$79")
                                                                ,buyerItems(itemName:"Spinach",itemImage:"spinach", itemQuantity: "3 tons", itemPrice: "$95")
                                                                ,buyerItems(itemName:"Broccoli",itemImage:"broccoli", itemQuantity: "8 tons", itemPrice: "$54")
                                                                ,buyerItems(itemName:"Cabbage",itemImage:"cabbage", itemQuantity: "3 tons", itemPrice: "$49")
                                                                ,buyerItems(itemName:"Lettuce",itemImage:"lettuce", itemQuantity: "9 tons", itemPrice: "$73")
                                                                ,buyerItems(itemName:"Carrot",itemImage:"carrot", itemQuantity: "6 tons", itemPrice: "$64")
                                                                ,buyerItems(itemName:"Cauliflower",itemImage:"cauliflower", itemQuantity: "5 tons", itemPrice: "$89")
])


let item2  = buyerSection( Category: "Fruits", items_Array: [buyerItems(itemName:"PineApple",itemImage:"pine", itemQuantity: "1 Ton", itemPrice: "$65")
                                                            ,buyerItems(itemName:"Apple",itemImage:"apple", itemQuantity: "2 Tons", itemPrice: "$36")
                                                            ,buyerItems(itemName:"Banana",itemImage:"banana", itemQuantity: "3 Tons", itemPrice: "$43")
                                                            ,buyerItems(itemName:"Cherry",itemImage:"cherry", itemQuantity: "4 Tons", itemPrice: "$59")
                                                            ,buyerItems(itemName:"Dates",itemImage:"dates", itemQuantity: "5 Tons", itemPrice: "$68")
                                                            ,buyerItems(itemName:"Eggfruit",itemImage:"egg", itemQuantity: "6 Tons", itemPrice: "$72")
                                                            ,buyerItems(itemName:"Watermelon",itemImage:"water", itemQuantity: "7 Tons", itemPrice: "$83")
                                                            ,buyerItems(itemName:"Jackfruit",itemImage:"jack", itemQuantity: "8 Tons", itemPrice: "$91")
                                                            ,buyerItems(itemName:"Mango",itemImage:"mango", itemQuantity: "9 Tons", itemPrice: "$54")
                                                            ,buyerItems(itemName:"Orange",itemImage:"orange", itemQuantity: "10 Tons", itemPrice: "$73")
])

let item3  = buyerSection( Category: "Dairy", items_Array: [buyerItems(itemName:"Milk",itemImage:"milk", itemQuantity: "100 Litres", itemPrice: "$65")
                                                            ,buyerItems(itemName:"Butter",itemImage:"butter", itemQuantity: "2 Tons", itemPrice: "$104")
                                                            ,buyerItems(itemName:"Cheese",itemImage:"cheese", itemQuantity: "3 Tons", itemPrice: "$132")
                                                            ,buyerItems(itemName:"Yogurt",itemImage:"yogurt", itemQuantity: "4 Tons", itemPrice: "$164")
                                                            ,buyerItems(itemName:"Sour Cream",itemImage:"sour", itemQuantity: "5 Tons", itemPrice: "$213")
                                                            ,buyerItems(itemName:"Ice Cream",itemImage:"ice", itemQuantity: "6 Tons", itemPrice: "$143")
                                                            ,buyerItems(itemName:"Whey",itemImage:"whey", itemQuantity: "7 Tons", itemPrice: "$173")
                                                            ,buyerItems(itemName:"Casein",itemImage:"casein", itemQuantity: "8 Tons", itemPrice: "$223")
                                                            ,buyerItems(itemName:"Butter Milk",itemImage:"bmilk", itemQuantity: "9 Tons", itemPrice: "$254")
                                                            ,buyerItems(itemName:"Ghee",itemImage:"ghee", itemQuantity: "10 Tons", itemPrice: "$315")
])


let buyer_items = [item1, item2, item3]
