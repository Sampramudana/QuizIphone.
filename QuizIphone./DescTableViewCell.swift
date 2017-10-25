//
//  DescTableViewCell.swift
//  QuizIphone.
//
//  Created by Sam Pramudana on 10/25/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DescTableViewCell: UITableViewCell {

    @IBOutlet weak var labelIphone: UILabel!
    @IBOutlet weak var labelSeri: UILabel!
    @IBOutlet weak var labelMerk: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
