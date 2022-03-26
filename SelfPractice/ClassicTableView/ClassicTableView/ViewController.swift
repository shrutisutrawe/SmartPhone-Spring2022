//
//  ViewController.swift
//  ClassicTableView
//
//  Created by Chandnani, Harsh on 2/3/22.
//

import UIKit

/*
 1. Add a atble view to the storyboard
 2. Add a table view cell to the table view
 3. Create identifier for table view cell and call it "cell"
 4. Create outlet of table view to the code call the table view as "tblView"
 5. Add protocols UITableViewDelegate, UITableViewDataSource to the class
 6. Add functions for table view numberOfRowsInSection and cellForRowAt
 7. In Viewdidload add tblView.delegate = self and tblView.dataSource = self
 8. Create an Array for data values
 9. Retuen array.count in numberOfRowsInSection function
 10. fill the cellForRowAt function
 */

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tblView: UITableView!
    
    let arr = ["Mark", "Bill", "Tom", "John", "Peter"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

