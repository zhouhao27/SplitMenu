//
//  ViewWithSideMenuButtonController.swift
//  SplitDemo
//
//  Created by Zhou Hao on 18/5/17.
//  Copyright © 2017 Zhou Hao. All rights reserved.
//

import UIKit

class ViewWithSideMenuButtonController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let displayModeButton = splitViewController?.displayModeButtonItem
        let menuBtn = UIBarButtonItem(barButtonSystemItem: .action, target: displayModeButton?.target, action: displayModeButton?.action)

        navigationItem.leftBarButtonItem = menuBtn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleMenu() {
        if let splitViewController = self.splitViewController {
            splitViewController.preferredDisplayMode = splitViewController.displayMode == .allVisible ? .primaryHidden : .allVisible
        }
    }
}
