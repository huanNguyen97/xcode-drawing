//
//  ViewController.swift
//  Drawing3
//
//  Created by BSP Macbook on 3/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    let canvas = Canvas()
    
    // Create undo button
    let undoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Undo", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleUndo), for: .touchUpInside)
        return button
    }()
    // End creating
    
    @objc fileprivate func handleUndo() {
        print("Undo lines app")
        
        canvas.undo()
    }
    
    override func loadView() {
        self.view = canvas
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.addSubview(canvas)
        canvas.backgroundColor = .white
        setupLayout()
    }
    
    // Refactor the code to show layout
    fileprivate func setupLayout() {
        //        canvas.frame = view.frame
        
        let stackView = UIStackView(arrangedSubviews: [undoButton])
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }}
    // End refactoring

