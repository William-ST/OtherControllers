//
//  ViewController.swift
//  OtherControllers
//
//  Created by Alumno on 21/03/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var prgLoading: UIProgressView!
    @IBOutlet weak var stepperNumber: UIStepper!
    @IBOutlet weak var vmContenido: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var options = Array<String>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblNumber.text = String(stepperNumber.value)
        
        for i in 1...5 {
            options.append("Opción \(i)")
        }
        
        scrollView.addSubview(vmContenido)
        scrollView.contentSize = vmContenido.frame.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionStepperValueChanged(_ sender: UIStepper) {
    
    }

    @IBAction func actionStart(_ sender: AnyObject) {
    }
    
    @IBAction func DatePickerValueChanged(_ sender: UIDatePicker) {
        //print(sender.date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        
        let resultado = dateFormatter.string(from: sender.date)
        
        print(resultado)
        
        dateFormatter.date(from: "31/03/2017 08:00:00 AM")
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Se seleción la: \(options[row])")
    }
    
    
    @IBAction func btnCancelarTouchUp(_ sender: UIBarButtonItem) {
        
        print("Cancelar")
        
    }
    
    
}

