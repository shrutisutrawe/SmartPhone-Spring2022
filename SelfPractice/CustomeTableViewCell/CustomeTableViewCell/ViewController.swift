//
//  ViewController.swift
//  CustomeTableViewCell
//
//  Created by Chandnani, Harsh on 2/3/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let images = ["dumplings", "kebab", "lollipop", "manchurian", "paneer-tikka", "panipuri", "Pav-Bhaji", "Rasmalai", "samosa"]
    
    let imageNames = ["Dumplings", "Kebab", "Lollipop", "Manchurian", "Paneer Tikka", "Pani Puri", "Pav Bhaji", "Rasmalai", "Samosa"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = imageNames[indexPath.row]
        
//        cell.textLabel?.text = arr[indexPath.row]
        return cell
        
    }
    

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

