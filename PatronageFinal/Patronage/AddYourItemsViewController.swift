//
//  AddYourItemsViewController.swift
//  Patronage
//
//  Created by student on 4/30/22.
//

import UIKit

class AddYourItemsViewController: UIViewController {
    
    
    
    @IBOutlet weak var emailUIfield: UITextField!
    
    @IBOutlet weak var productNameText: UITextField!
    
    
    @IBOutlet weak var productPriceText: UITextField!
    
    @IBOutlet weak var quantityText: UITextField!
    
    @IBOutlet weak var areaName: UITextField!
    
    
    @IBOutlet weak var displayMessage: UITextView!
    
    
    @IBOutlet weak var thankyouImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thankyouImage.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addProductButtonClicked(_ sender: UIButton) {
        
        
        guard let productName = self.productNameText.text else {return}
        guard  let productPrice = self.productPriceText.text else {return}
        guard let productQuantity = self.quantityText.text else {return}
        guard  let email = self.emailUIfield.text else {return}
        guard  let password = self.areaName.text else {return}
        let register = ProductsModel(productName: productName,productPrice: productPrice, productQuantity: productQuantity, email: email, password: password)
        APIManager.shareInstance.callingProductsAPI(register: register)
        {
            (isSucess) in
            if isSucess{
                self.displayMessage.text = "Product deatils sent to verification team. you will receive email"
                self.thankyouImage.isHidden = false
                
            }else {
                self.displayMessage.text = "Please enter all and correct details"
            }
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
