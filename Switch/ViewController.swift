//
//  ViewController.swift
//  Switch
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    @IBOutlet weak var lblTexto: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        lblAdvertenciaSwitch.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackActualizar = actualizarTexto 
    }
    
    @IBAction func doTapIrOtroVC(_ sender: Any) {
        lblAdvertenciaSwitch.isHidden = true
        if swPermisoNavegacion.isOn{
            performSegue(withIdentifier: "goToModificar", sender: self)
        } else{
            lblAdvertenciaSwitch.isHidden = false
        }
    }
    
    func actualizarTexto(texto: String){
        lblTexto.text = texto
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

///////////hola
}

