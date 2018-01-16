//
//  GTableViewCell.swift
//  GlynkProject
//
//  Created by Pro Retina on 13/01/18.
//  Copyright © 2018 Pro Retina. All rights reserved.
//

import UIKit

class GTableViewCell: UITableViewCell {

    @IBOutlet weak var titalLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ImageV: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
