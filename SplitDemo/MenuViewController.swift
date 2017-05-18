//
//  MenuViewController.swift
//  SplitDemo
//
//  Created by Zhou Hao on 18/5/17.
//  Copyright © 2017 Zhou Hao. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSplitViewController()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    
//        if let splitViewController = splitViewController {
//            setupShadow(isCollapsed: splitViewController.isCollapsed)            
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupShadow(isCollapsed: Bool) {
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 0)
        view.layer.shadowOpacity = isCollapsed ? 0.5 : 0
        view.layer.shadowRadius = 1.0
    }
    
    func setupSplitViewController() {
        splitViewController?.preferredDisplayMode = .primaryHidden
        
        if let splitViewController = self.splitViewController {
            splitViewController.preferredPrimaryColumnWidthFraction = 0.4;
            let minimumWidth = min(splitViewController.view.bounds.width, splitViewController.view.bounds.height)
            splitViewController.minimumPrimaryColumnWidth = minimumWidth / 2;
            splitViewController.maximumPrimaryColumnWidth = minimumWidth;
        }        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
