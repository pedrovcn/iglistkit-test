//
//  TextSectionController.swift
//  IGListKitTest
//
//  Created by compline on 20/07/2018.
//  Copyright © 2018 Pedro Nascimento. All rights reserved.
//

import UIKit
import IGListKit

class TextSectionController: ListSectionController {
    
    fileprivate var object: Any?
    var mode: CellViewMode!
    
    convenience init(mode: CellViewMode) {
        self.init()
        self.mode = mode
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(withNibName: "TextCollectionViewCell", bundle: nil, for: self, at: index) as! TextCollectionViewCell
        
        let person = object as! Person
        cell.textLabel.text = String(person.age)
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.object = object
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        if mode == CellViewMode.grid {
            let width = collectionContext?.containerSize.width ?? 0
            let itemSize = floor(width / 2)
            return CGSize(width: itemSize, height: itemSize)
        }
        
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 80)
    }
}
