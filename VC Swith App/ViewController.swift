//
//  ViewController.swift
//  VC Swith App
//
//  Created by Aplus on 09/01/2020.
//  Copyright © 2020 Tutorialscache. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flyClick(_ sender: Any) {
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstControllerVC") as! FirstController
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    @IBAction func swimClick(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondControllerVC") as! SecondController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    // Hide Topbar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

