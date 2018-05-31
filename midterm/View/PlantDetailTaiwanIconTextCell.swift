//
//  PlantDetailTaiwanIconTextCell.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/31.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit

class PlantDetailTaiwanlconTextCell: UITableViewCell {
    
    @IBOutlet var taiwanimageview: UIImageView!
    @IBOutlet var taiwanlocationlabel: UILabel!{
        didSet{
            taiwanlocationlabel.numberOfLines = 0
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
