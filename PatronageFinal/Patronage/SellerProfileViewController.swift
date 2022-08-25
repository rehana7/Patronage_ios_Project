//
//  SellerProfileViewController.swift
//  Patronage
//
//  Created by Naguru Abdur,Rehaman on 4/6/22.
//

import UIKit

class SellerProfileViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var sellerNameLabel: UILabel!
    
    
    
    @IBOutlet weak var sellingProductsTable: UITableView!
    
    var sellerName = " "
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = "Click below button to add your products"
        sellerNameLabel.text = sellerNameLabel.text! + sellerName
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
