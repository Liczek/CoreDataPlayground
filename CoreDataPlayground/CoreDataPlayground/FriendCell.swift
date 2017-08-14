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
    @IBOutlet weak var friendEyeColorImageView: UIView!
    @IBOutlet weak var eyePoint: UIImageView!
    
    @IBOutlet weak var friendPhotoImageView: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        friendEyeColorImageView.backgroundColor = UIColor.yellow
        friendEyeColorImageView.layer.cornerRadius = 25
        
        friendEyeColorImageView.clipsToBounds = false
        friendEyeColorImageView.layer.borderWidth = 1
        friendEyeColorImageView.layer.borderColor = UIColor.black.cgColor
        
        
        eyePoint.layer.cornerRadius = 15
        eyePoint.layer.backgroundColor = UIColor.black.cgColor
        eyePoint.clipsToBounds = false
        eyePoint.layer.borderWidth = 1
        eyePoint.layer.borderColor = UIColor.black.cgColor
        
        friendPhotoImageView.layer.borderWidth = 1
        friendPhotoImageView.layer.borderColor = UIColor.black.cgColor
        friendPhotoImageView.contentMode = .scaleAspectFit
        friendPhotoImageView.backgroundColor = UIColor.black
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
