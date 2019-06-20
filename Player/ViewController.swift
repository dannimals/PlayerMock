//
//  ViewController.swift
//  Player
//
//  Created by Danning Ge on 6/19/19.
//  Copyright © 2019 Danning Ge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: ContainerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        containerView.configure(contentType: .streamable)
    }

}
