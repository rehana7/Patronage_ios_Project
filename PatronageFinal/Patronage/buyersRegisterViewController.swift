//
//  buyersRegisterViewController.swift
//  Patronage
//
//  Created by student on 4/7/22.
//

import UIKit

class buyersRegisterViewController: UIViewController {
    
    
    @IBOutlet weak var buyersFirstName: UITextField!
    
    @IBOutlet weak var buyersLastName: UITextField!
    
    @IBOutlet weak var buyersEmail: UITextField!
    
    @IBOutlet weak var buyersPassword: UITextField!
    
    
    @IBOutlet weak var alertUIlabel: UILabel!
    
    
    @IBOutlet weak var backToLoginUIButton: UIButton!
    
    
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backToLoginUIButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buyersActionButtonClicked(_ sender: UIButton) {
        
        guard let fname = self.buyersFirstName.text else {return}
        guard  let lname = self.buyersLastName.text else {return}
        guard  let email = self.buyersEmail.text else {return}
        guard  let password = self.buyersPassword.text else {return}
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
