//
//  FriendTableViewCell.swift
//  Assignment-2
//
//  Created by Aye Myat Minn on 8/9/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    static let identifier = "FriendTableViewCell"

    @IBOutlet weak var ivUserImage: UIImageView!
    @IBOutlet weak var viewFollow: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
        
        ivUserImage.layer.cornerRadius = 30
        viewFollow.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
