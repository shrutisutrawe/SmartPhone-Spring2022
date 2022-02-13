//
//  ViewController.swift
//  Food Truck
//
//  Created by Chandnani, Harsh on 2/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    let images = ["dumplings", "kebab", "lollipop", "manchurian", "paneer-tikka", "panipuri", "Pav-Bhaji", "Rasmalai", "samosa"]
    
    let imageNames = ["Dumplings", "Kebab", "Lollipop", "Manchurian", "Paneer Tikka", "Pani Puri", "Pav Bhaji", "Rasmalai", "Samosa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        
        return cell
    }
    

    


}

