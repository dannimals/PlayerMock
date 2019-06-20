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
    @IBOutlet weak var scrubberView: UIView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var commentTrack: UIView!
    @IBOutlet weak var playerControlsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let contentType = ContainerView.ContentType.streamable
        if contentType == .image {
            heightConstraint.constant = 250
            scrubberView.isHidden = true
            playerControlsView.isHidden = true
            commentTrack.isHidden = true
        }
        containerView.configure(contentType: contentType)

        containerView.delegate = self
    }

    @IBAction func toggleSpeedScrubber(_ sender: Any) {
        scrubberView.isHidden = !scrubberView.isHidden
    }
}

extension ViewController: ContainerViewDelegate {

    func scrubberTapped() {
        scrubberView.isHidden = !scrubberView.isHidden
    }
}
