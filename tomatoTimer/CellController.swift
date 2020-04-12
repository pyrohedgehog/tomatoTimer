//
//  CellController.swift
//  tomatoTimer
//
//  Created by jonah wilmsmeyer on 2020-04-12.
//  Copyright © 2020 jonah wilmsmeyer. All rights reserved.
//

import UIKit

class CellController: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setText(_ tomato: TomatoCell){
        nameLabel.text = tomato.name
        
    }

}
