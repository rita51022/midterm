//
//  PlantTableViewCell.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/3.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantTableViewCell: UITableViewCell {
    @IBOutlet weak var plantlabel: UILabel!
    @IBOutlet weak var plantimage: UIImageView!
    @IBOutlet weak var englabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
