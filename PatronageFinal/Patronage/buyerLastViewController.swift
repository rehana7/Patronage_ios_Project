//
//  buyerLastViewController.swift
//  Patronage
//
//  Created by student on 4/30/22.
//

import UIKit

class buyerLastViewController: UIViewController {

    @IBOutlet weak var displayTextOutlet: UILabel!
    var text : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        text = "Your request has been raised, we will contact you soon"
        displayTextOutlet.text = text
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
