//
//  Person.swift
//  IGListKitTest
//
//  Created by compline on 20/07/2018.
//  Copyright © 2018 Pedro Nascimento. All rights reserved.
//

import Foundation
import IGListKit

class Person: NSObject, ListDiffable {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }

    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.isEqual(object)
    }
}
