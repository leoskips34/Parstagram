//
//  CommentCell.swift
//  Parstagram
//
//  Created by Leo Samuelson on 2/17/20.
//  Copyright © 2020 Leo Samuelson. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
