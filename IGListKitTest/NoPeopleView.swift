//
//  NoPeopleView.swift
//  IGListKitTest
//
//  Created by compline on 20/07/2018.
//  Copyright © 2018 Pedro Nascimento. All rights reserved.
//

import UIKit

class NoPeopleView: UIView {
    @IBOutlet weak var noPeopleLabel: UILabel!
    
    override func awakeFromNib() {
        self.noPeopleLabel.text = "There's no people here..."
    }
}
