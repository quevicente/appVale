//
//  ViewController.swift
//  appVale
//
//  Created by Vicente Patricio on 20/01/20.
//  Copyright © 2020 Vicente Patricio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alcoolTextField: UITextField?
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var gasolinaTextField: UITextField?
    
    func calculoAlcoolGasolina(_ valorAlcool: Double, _ valorGasolina: Double) -> Double{
        //Dividir o valor do álcool por o valor de gasolina
        //SE o resultado for menor que 0.7, abasteça com álcool
        //SE o resultado for maior que 0/7, abasteça com gasolina
        
        let resultadoDivisao = valorAlcool / valorGasolina
        
        return resultadoDivisao
    }
    
    @IBAction func calcularButton(_ sender: Any) {
        guard let auxAlcool = alcoolTextField?.text, let valorAlcool = Double(auxAlcool)else{return}
        guard let auxGasolina = gasolinaTextField?.text, let valorGasolina = Double(auxGasolina)else{return}
        
        print("Alcool: \(valorAlcool) Gasolina: \(valorGasolina) ")
        
        if calculoAlcoolGasolina(valorAlcool, valorGasolina) < 0.7{
            print("Abasteça com álcool! :D")
            resultadoLabel.text = "Abasteça com álcool! :D"
            resultadoLabel.sizeToFit()
            resultadoLabel.isHidden = false
        } else {
            print("Abasteça com gasolina! :D")
            resultadoLabel.text = "Abasteça com gasolina! :D"
            resultadoLabel.sizeToFit()
            resultadoLabel.isHidden = false
        }
    }
}
