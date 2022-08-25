//
//  SellersViewController.swift
//  Patronage
//
//  Created by Naguru Abdur,Rehaman on 4/6/22.
//

import UIKit

class SellersViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var resultUILabel: UILabel!
    
    @IBOutlet weak var loginUIButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginUIButton.isHidden = true
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func loginActionButton(_ sender: UIButton) {
        
        guard let email = emailTextField.text else { return}
        guard let password = passwordTextField.text else { return }
        let modellogin = LoginModel(login: email, password: password)
        APIManager.shareInstance.callingLoginAPI(login: modellogin) {
            (result) in
            switch result {
            case .success(let json):
                print(json as AnyObject)
                self.resultUILabel.text = "Login Successful"
                self.loginUIButton.isHidden = false
            case .failure(let err):
                print(err.localizedDescription)
                self.resultUILabel.text = "Invalid Login Details or Register your account"
            }
        }
        var sellerName = Double (emailTextField.text!)
    }
    
    
    @IBAction func registerActionButton(_ sender: UIButton) {
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "sellerDetailsSegue"{
            let destination = segue.destination as! SellerProfileViewController
            destination.sellerName = emailTextField.text!
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
}
