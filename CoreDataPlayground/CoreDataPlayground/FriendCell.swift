//
//  FriendCell.swift
//  CoreDataPlayground
//
//  Created by Paweł Liczmański on 26.04.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var friendAddressLabel: UILabel!
    @IBOutlet weak var friendAgeLabel: UILabel!
    @IBOutlet weak var friendEyeColorImageView: UIImageView!
    @IBOutlet weak var eyePoint: UIImageView!
    
    @IBOutlet weak var friendPhotoImageView: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        friendEyeColorImageView.layer.backgroundColor = UIColor.lightGray.cgColor
        friendEyeColorImageView.layer.cornerRadius = 25
        
        eyePoint.layer.cornerRadius = 5
        eyePoint.layer.backgroundColor = UIColor.darkGray.cgColor
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
