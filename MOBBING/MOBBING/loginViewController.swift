//
//  loginViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 11/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    
    
    
    @IBOutlet weak var nombreTf: UITextField!
    @IBOutlet weak var mailTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Inicia sesión"
        
        self.navigationController?.navigationBar.isHidden = false
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! listaOpcionesViewController
        view.nombre = nombreTf.text
        
    }
    

    @IBAction func registro(_ sender: Any) {
        performSegue(withIdentifier: "inicio", sender: nil)
        
    }
}
