//
//  HomeViewController.swift
//  SplitDemo
//
//  Created by Zhou Hao on 18/5/17.
//  Copyright © 2017 Zhou Hao. All rights reserved.
//

import UIKit

class HomeViewController: ViewWithSideMenuButtonController {

    @IBAction func onMenu(_ sender: Any) {
        toggleMenu()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
