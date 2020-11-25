//
//  resultadosViewController.swift
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 24/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//




class customTableViewCell: UITableViewCell{
    //celda customized
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var detalleLabel: UILabel!
    
}


import UIKit

class resultadosViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    let nums =  [1,2]
    let fechas = ["20-nov-2020", "24-nov-20"]
    let detalle = ["Cerrada", "En proceso"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cell") as! customTableViewCell
        celda.numLabel.text = String(nums[indexPath.row])
        celda.fechaLabel.text = "Fecha: " + fechas[indexPath.row]
        celda.detalleLabel.text = "Detalle: " + detalle[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 101.0
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Resultados"
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! resultadosAnterioresViewController
        let indice = table.indexPathForSelectedRow!
        view.num = nums[indice.row]
    }
    

}
