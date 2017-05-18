//
//  ContainerViewController.swift
//  SplitDemo
//
//  Created by Zhou Hao on 18/5/17.
//  Copyright © 2017 Zhou Hao. All rights reserved.
//

import UIKit

class ContainerViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override public var traitCollection: UITraitCollection {        
        return UITraitCollection(traitsFrom: [UITraitCollection(horizontalSizeClass: .regular),UITraitCollection(verticalSizeClass: .regular)])
    }
    
    public func splitViewController(_ svc: UISplitViewController, willChangeTo displayMode: UISplitViewControllerDisplayMode) {
        
        if let masterVC = self.viewControllers.first {
            setupShadow(isCollapsed: displayMode == .primaryHidden, view: masterVC.view)
        }
    }

    func setupShadow(isCollapsed: Bool,view: UIView) {
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 0)
        view.layer.shadowOpacity = isCollapsed ? 0 : 0.34
        view.layer.shadowRadius = 1.0
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
