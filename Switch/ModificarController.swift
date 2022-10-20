//
//  ModificarController.swift
//  Switch
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ModificarController : UIViewController{
    
    var texto : String?
    //Quiero una función que reciba de parametro un string y esa función va a regresar un void
    var callbackActualizar : ((String) -> Void)?
    
    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if texto != nil{
            txtTexto.text = texto
        }
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil {
            callbackActualizar!(txtTexto.text!)
        }
    }
    
}
