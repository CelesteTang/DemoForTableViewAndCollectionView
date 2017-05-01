//
//  DemoTableViewCell.swift
//  DemoForTableViewAndCollectionView
//
//  Created by 湯芯瑜 on 2017/5/2.
//  Copyright © 2017年 Hsin-Yu Tang. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var demoImageView: UIImageView!
    
    @IBOutlet weak var demoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        demoLabel.numberOfLines = 0

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
