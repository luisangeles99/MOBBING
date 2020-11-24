//
//  cuestionarioViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 11/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

import UIKit
import QULQuestionnaire


class cuestionarioViewController: UIViewController {

    var data : Data!
    var preguntas : NSArray!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCuestionario()
        self.navigationController?.navigationBar.isHidden = false
        // Do any additional setup after loading the view.
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! realizarQul
        view.arr = preguntas as? [Any]
    }
    
    
    func loadCuestionario(){
        
        if let path = Bundle.main.path(forResource: "preguntas", ofType: "json") {
            do {
                  data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                  let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                  preguntas = jsonResult as? NSArray
                  print(preguntas!)
              } catch {
                   print(error)
              }
        }
    }
    
}
