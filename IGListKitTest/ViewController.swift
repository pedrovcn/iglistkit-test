//
//  ViewController.swift
//  IGListKitTest
//
//  Created by compline on 19/07/2018.
//  Copyright © 2018 Pedro Nascimento. All rights reserved.
//

import UIKit
import IGListKit

enum CellViewMode {
    case grid
    case list
}

class ViewController: UIViewController, ListAdapterDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var people = [Person]()
    var adapter: ListAdapter!
    
    let emptyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "There's no people here..."
        label.backgroundColor = .clear
        return label
    }()
    
    var viewMode = CellViewMode.grid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initListAdapter()
    }
    
    func initListAdapter() {
        let updater = ListAdapterUpdater()
        self.adapter = ListAdapter(updater: updater, viewController: self)
        
        self.adapter.collectionView = collectionView
        self.adapter.dataSource = self
    }

    @IBAction func addCell(_ sender: Any) {
        let number = Int(arc4random_uniform(100) + 1)
        let person = Person(age: number)
        self.people.append(person)
        self.adapter.performUpdates(animated: true, completion: nil)
    }
    
    @IBAction func changeViewMode(_ sender: Any) {
        if self.viewMode == .grid {
            self.viewMode = .list
        } else {
            self.viewMode = .grid
        }
        
        self.adapter.reloadData(completion: nil)
    }
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return people
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return TextSectionController(mode: self.viewMode)
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return self.emptyLabel
    }
}
