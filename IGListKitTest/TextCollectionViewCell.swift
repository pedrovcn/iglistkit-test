//
//  TextCollectionViewCell.swift
//  IGListKitTest
//
//  Created by compline on 19/07/2018.
//  Copyright © 2018 Pedro Nascimento. All rights reserved.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textLabel.text = ""
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 3
    }
    
}
