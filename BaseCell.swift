//
//  BaseCell.swift
//  todolist
//
//  Created by Dilyana Yankova on 7/2/18.
//  Copyright © 2018 Dilyana Yankova. All rights reserved.
//

import Foundation
import UIKit

class BaseCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
    }
    
}
