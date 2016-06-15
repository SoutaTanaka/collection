//
//  ViewController.swift
//  collectionview
//
//  Created by 田中颯太 on 2016/06/15.
//  Copyright © 2016年 田中颯太. All rights reserved.
//参考　https://akira-watson.com/iphone/collectionview.html

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let photo = ["testing.jpg","tess.png","m1.png","m2.png","m3.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexParh: NSIndexPath) -> UICollectionViewCell{
        
        let testCell:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexParh)
        let imageView = testCell.contentView.viewWithTag(1)as? UIImageView
        let cellImage = UIImage(named: photo[indexParh.row])
        imageView!.image = cellImage
        
        
        return testCell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellSize:CGFloat = self.view.frame.size.width/2-2
        return CGSizeMake(cellSize, cellSize)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

