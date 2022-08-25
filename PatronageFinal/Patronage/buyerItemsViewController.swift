//
//  buyerItemsViewController.swift
//  Patronage
//
//  Created by student on 4/28/22.
//

import UIKit

class buyerItemsViewController: UIViewController, UITableViewDataSource,  UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buyerItemslIst.items_Array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = buyerItemList.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
                cell.textLabel!.text = buyerItemslIst.items_Array[indexPath.row].itemName
                return cell
    }
    
    
    var buyerItemslIst = buyerSection()
    
    @IBOutlet weak var buyerItemList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        buyerItemList.dataSource = self
        buyerItemList.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ItemInfoSegue"{
            let destination = segue.destination as! IntemInfoViewController
            destination.buyerItem = buyerItemslIst.items_Array[(buyerItemList.indexPathForSelectedRow?.row)!]
    }
   

}


}
