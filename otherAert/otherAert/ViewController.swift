//
//  ViewController.swift
//  otherAert
//
//  Created by 2020-2 on 15/01/20.
//  Copyright © 2020 JossRM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let nombreDeUsuario = ""
     
let misPreferencias = UserDefaults.standard
        
        override func viewDidLoad() {
            super.viewDidLoad()
            misPreferencias.set("Joss", forKey: "nombre")
        }
        override func viewDidAppear(_ animated: Bool) {
            let miNombre = misPreferencias.string(forKey: "nombre") ?? "" //busca mi llabe y dame lo que hay ahi
            if miNombre != ""{
                label.text = miNombre
            } else {
                let alertController = UIAlertController(title: "No te conozco", message: nil, preferredStyle: .alert)
                let confirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertController.addAction(confirmar)
                self.present(alertController, animated: true, completion: nil)
            }
            
            
            
        }


    }
