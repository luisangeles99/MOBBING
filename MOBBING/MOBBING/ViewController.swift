//
//  ViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 10/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        
        logo.image = UIImage(named: "LOGO")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }


}

