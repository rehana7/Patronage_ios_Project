//
//  IntemInfoViewController.swift
//  Patronage
//
//  Created by student on 4/29/22.
//

import UIKit

class IntemInfoViewController: UIViewController {
    var buyerItem : buyerItems = buyerItems()
    
    @IBOutlet weak var ItemImageOutlet: UIImageView!
    
    
    @IBOutlet weak var itemNameOutlet: UILabel!
    
  
    
    @IBOutlet weak var itemQuantityOutlet: UILabel!
    
    @IBOutlet weak var itemPriceOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ItemImageOutlet.image = UIImage(named: buyerItem.itemImage)
       
        itemNameOutlet.text = " "
       itemQuantityOutlet.text = " "
        itemPriceOutlet.text = " "
        
        // Do any additional setup after loading the view.
    }
    var a = " "
    @IBAction func onClickbutton(_ sender: UIButton) {
        itemNameOutlet.text = "Item Name: \(buyerItem.itemName)"
        itemQuantityOutlet.text  =  "Item Quantity: \(buyerItem.itemQuantity)"
        itemPriceOutlet.text  =  "Item Price: \(buyerItem.itemPrice)"

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
            if transition == "buyerSegue"{
                let destination = segue.destination as! buyerLastViewController
                destination.text = a
            }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
