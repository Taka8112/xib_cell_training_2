//
//  TVSCustomCell.swift
//  xib_cell_training_2
//
//  Created by Takahiro Noguchi on 2016/05/09.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class TVSCustomCell: UITableViewCell {
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
