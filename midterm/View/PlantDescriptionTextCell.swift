//
//  PlantDescriptionTextCell.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/31.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantDescriptionTextCell: UITableViewCell {

    @IBOutlet var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}