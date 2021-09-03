//
//  ViewController.swift
//  PracticaFormulario
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnCaptura: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    @IBOutlet weak var sldTemperatura: UISlider!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtNombre: UILabel!
    @IBOutlet weak var txtNombre2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCaptura.isEnabled = true
        sldTemperatura.isEnabled = true
        
    }

    
    @IBAction func doChangeTemperatura(_ sender: Any) {
        
        lblTemperatura.text = "\(String(format: "%.1f", sldTemperatura.value))C°"
        if sldTemperatura.value >= 38.0 {
            lblTemperatura.textColor = UIColor.red
        }else{
            lblTemperatura.textColor = UIColor.black
        }
        
    }
    
    
    @IBAction func doTapCapturar(_ sender: Any) {
        
        if sldTemperatura.value >= 38.0 {
            imgResultado.image = UIImage (named: "equis")
            lblResultado.text = "Ingreso no autorizado para \(txtNombre2.text!)"
        }else{
            imgResultado.image = UIImage (named: "palimita")
            lblResultado.text = "Ingreso autorizado para \(txtNombre2.text!)"
        }
        
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCaptura.isEnabled = false
        sldTemperatura.isEnabled = false
        sldTemperatura.tintColor = UIColor.gray
        
        
    }
    
    
    @IBAction func doTapNuevo(_ sender: Any) {
        
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCaptura.isEnabled = true
        sldTemperatura.isEnabled = true
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

