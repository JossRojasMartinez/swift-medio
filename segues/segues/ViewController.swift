//
//  ViewController.swift
//  segues
//
//  Created by 2020-2 on 13/01/20.
//  Copyright © 2020 JossRM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var cambiar: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad() //para hacer cambios antes de que aparezca
        cambiar.isOn = false
        print("Cycle Life - View Did Load")
    }
    @IBAction func siguiente(_ sender: Any) {
        if cambiar.isOn{
          performSegue(withIdentifier: "verde", sender: nil)
        } else{
            performSegue(withIdentifier: "amarillo", sender: nil)
            
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("Cycle Life - View Will Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print ("Cycle Life - View Will Disappear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         print ("Cycle Life - View Did Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
         print ("Cycle Life - View Did Disappear")
    }

}

