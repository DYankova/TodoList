//
//  TaskHeaderCell.swift
//  todolist
//
//  Created by Dilyana Yankova on 7/2/18.
//  Copyright © 2018 Dilyana Yankova. All rights reserved.
//

import Foundation
import UIKit


class TaskHeader: BaseCell {
    
    var viewController : ViewController?
    
    //add the new task here
    let taskNameTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "add task"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.borderStyle = .roundedRect
        return textfield
        
    }()
    
    let addTaskButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func setupViews(){
        addSubview(taskNameTextField)
        addSubview(addTaskButton)
        
        addTaskButton.addTarget(self, action:#selector(addTask), for: .touchUpInside)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-[v1(80)]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : taskNameTextField, "v1" : addTaskButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-24-[v0]-24-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : taskNameTextField]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : addTaskButton]))
    }
    
    @objc func addTask(){
        viewController?.addNewTask(taskName: taskNameTextField.text!)
        taskNameTextField.text = ""
    }
    
}
