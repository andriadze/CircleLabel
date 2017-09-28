//
//  CustomCell.swift
//  CircularText
//
//  Created by Gio Andriadze on 9/28/17.
//  Copyright © 2017 Casatrade Ltd. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var circleText: CircleLabel!
    
    @IBOutlet weak var customText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
