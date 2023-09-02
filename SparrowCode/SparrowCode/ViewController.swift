//
//  ViewController.swift
//  SparrowCode
//
//  Created by Илья Дубровский on 02.09.2023.
//

import UIKit

class ViewController: UIViewController {

    private var squareView: UIView = {
        let view = GradientView(gradientStartColor: .customBlue, gradientEndColor: .customRed, cornerRadius: 15.0, needForShadow: true)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(squareView)
        squareView.widthAnchor.constraint(equalToConstant: 118).isActive = true
        squareView.heightAnchor.constraint(equalToConstant: 118).isActive = true
        squareView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 100).isActive = true
        squareView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
