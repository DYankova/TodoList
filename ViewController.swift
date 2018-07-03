//
//  ViewController.swift
//  todolist
//
//  Created by Dilyana Yankova on 7/2/18.
//  Copyright © 2018 Dilyana Yankova. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    //keep tasks here
    var tasks = ["smile", "kiss", "love"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "To - Do List"
        collectionView?.backgroundColor = UIColor.white
        collectionView?.alwaysBounceVertical = true
        //register two cells
        collectionView?.register(Taskcell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.register(TaskHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerId")

    }
    //number of items of the collection view
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tasks.count
    }

    //each of the cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let taskcell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for : indexPath) as! Taskcell
        taskcell.nameLabel.text = tasks[indexPath.item]
        taskcell.viewController = self
        return taskcell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: view.frame.width - 30, height: 50)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath ) as! TaskHeader
        header.viewController = self
        return header
        
    }


    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize( width: view.frame.width, height: 100)
    }
    
    func addNewTask(taskName : String){
        tasks.append(taskName)
        collectionView?.reloadData()
    
   }

    
    func deleteTask(taskName : String){
        tasks.append(taskName)
        tasks = tasks.filter{$0 != taskName}
        collectionView?.reloadData()
        
    }
}





    
    
    
