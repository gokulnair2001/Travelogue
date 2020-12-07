//
//  profileCollectionViewCell.swift
//  adgeventapp
//
//  Created by Gokul Nair on 05/12/20.
//

import UIKit

class profileCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLbl:UILabel!
    @IBOutlet var locationLbl:UILabel!
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = 10
    }
}
