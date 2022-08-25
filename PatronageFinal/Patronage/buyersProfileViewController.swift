//
//  buyersProfileViewController.swift
//  Patronage
//
//  Created by Naguru Abdur,Rehaman on 4/6/22.
//

import UIKit

class buyersProfileViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = buyerProductTable.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].Category
        return cell

    }
    
    
    @IBOutlet weak var displayTextLabel: UILabel!
    
    @IBOutlet weak var buyerNameLabel: UILabel!
    
    
    @IBOutlet weak var buyerProductTable: UITableView!
    
    var buyersName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        buyerProductTable.dataSource = self
        buyerProductTable.delegate = self

        // Do any additional setup after loading the view.
        displayTextLabel.text = "Below are the available items for purchase"
        buyerNameLabel.text = buyerNameLabel.text! + buyersName
    }
    
    let  items = buyer_items
    var a = " "
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemSegue"{
            let destination = segue.destination as! buyerItemsViewController
            destination.buyerItemslIst = items[buyerProductTable.indexPathForSelectedRow!.row]
            
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
