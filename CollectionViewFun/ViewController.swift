//
//  ViewController.swift
//  CollectionViewFun
//
//  Created by Flatiron School on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Collection View DataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    } // how many cells (colored squares) get returned
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath) //
        
        cell.backgroundColor = UIColor.getRandomColor()
        return cell
    }
}

/*
 1) collectionView gets passed the location of where to put item info (indexPath)
 2) dequeueReusableCell - allow cells to be loaded in chunks as they become relevant, 0-4 -> 5-9 -> 10-14 etc. as the user scrolls/sees relevant cells.
 3) call then gets populated with a random color (ln 37)
 4) return the cell.
 
 5) dimentions of the cell get specified in CollectionView>SizeInspector.
 */
