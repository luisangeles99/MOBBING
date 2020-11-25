//
//  resultadosAnterioresViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 11/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit

class resultadosAnterioresViewController: UIViewController {

    
    @IBOutlet weak var puntajeLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var titLabel: UILabel!
    var num: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titLabel.text = "Caso #00" + String(num!)
        
        if num == 1{
            puntajeLabel.text = "35/50"
        }else{
            puntajeLabel.text = "42/50"
        }
        
        title = "Resultados anteriores"
        self.navigationController?.navigationBar.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnInfo(_ sender: Any) {
        let alert = UIAlertController(title: "Estado", message: "El estado actual de tu caso es: departamento de recursos humanos ya tomó acciones.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
