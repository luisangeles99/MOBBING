//
//  mostrarResultadosViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 11/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit

class mostrarResultadosViewController: UIViewController {
    
    @IBOutlet weak var puntajeLabel: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    @objc var respuestas : NSDictionary!
    var preguntas : NSArray!
    var key : NSDictionary!
    var valor : Int = 0
    
    //resultados posibles
    let results: [String] = ["¡Acude inmediatamente con el departamento de Recursos Humanos!", "¡Acude con tu líder y comenta el caso, él se contactará con el departamento de Recursos Humanos para analizarlo y dar solución!", "¡Comenta el caso con tu líder!"]
    let names: [String] = ["acoso1", "acoso2", "acoso3", "acoso4", "acoso5", "acoso6", "acoso7", "acoso8", "acoso9","acoso10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        title = "Resultados"
        
        preguntas = respuestas["data"] as? NSArray
        for i in 3...preguntas.count-1 {
            key = preguntas[i] as? NSDictionary
            let temp : String = key["answer"]! as! String
            valor = valor + Int(temp)!
        }
        
        if valor >= 35{
            labelResult.text = results[0]
        }else if valor >= 20{
            labelResult.text = results[1]
        }else{
            labelResult.text = results[2]
        }
        
        puntajeLabel.text = String(valor) + " / 50"
        
        
        
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnAceptar(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: listaOpcionesViewController.self) {            self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
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
