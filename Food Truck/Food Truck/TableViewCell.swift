//
//  TableViewCell.swift
//  Food Truck
//
//  Created by Chandnani, Harsh on 2/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblImage: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
