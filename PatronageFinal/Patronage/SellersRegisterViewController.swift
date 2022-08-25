//
//  SellersRegisterViewController.swift
//  Patronage
//
//  Created by student on 4/7/22.
//

import UIKit
import SystemConfiguration

class SellersRegisterViewController: UIViewController {
    
    
    @IBOutlet weak var sellersFirstName: UITextField!
    
    
    @IBOutlet weak var sellersLastName: UITextField!
    
    
    @IBOutlet weak var sellersEmail: UITextField!
    
    
    @IBOutlet weak var sellersPassword: UITextField!
    
    
    @IBOutlet weak var backToLoginUIButton: UIButton!
    
    
    @IBOutlet weak var alertUIlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToLoginUIButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sellersRegisterButtonClicked(_ sender: UIButton) {
        
        guard let fname = self.sellersFirstName.text else {return}
        guard  let lname = self.sellersLastName.text else {return}
        guard  let email = self.sellersEmail.text else {return}
        guard  let password = self.sellersPassword.text else {return}
                let register = RegisterModel(name: fname + lname, email: email, password: password)
        APIManager.shareInstance.callingRegisterAPI(register: register)
        {
            (isSucess) in
            if isSucess{
                self.alertUIlabel.text = "User Registration Successfull"
                self.backToLoginUIButton.isHidden = false
            }else {
                self.alertUIlabel.text = "Please try again"
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
