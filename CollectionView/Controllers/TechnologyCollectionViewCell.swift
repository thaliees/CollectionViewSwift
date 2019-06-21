//
//  TechnologyCollectionViewCell.swift
//  CollectionView
//
//  Created by Thaliees on 6/21/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class TechnologyCollectionViewCell: MDCCardCollectionCell {
    @IBOutlet weak var imageTechnology: UIImageView!
    @IBOutlet weak var nameTechnology: UILabel!
    @IBOutlet weak var descriptionTechnology: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization codes
        // Initialize card
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.layer.shadowOpacity = 0.24
        self.layer.shadowRadius = CGFloat(10)
    }
}
