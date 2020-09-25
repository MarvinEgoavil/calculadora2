//
//  ViewController.swift
//  calculadora
//
//  Created by Alumnos on 25/09/2020.
//  Copyright © 2020 Alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CalculadoraProtocol {
    
    @IBOutlet weak var display: UILabel!
    
    
    func suma(num1: Int, num2: Int) -> Int {
    let resultadoSuma = num1+num2
    return resultadoSuma
        
    }
    
    func resta(num1: Int, num2: Int) -> Int {
        let resultadoResta=num1-num2
            if(num1<num2) {
                print("ordena la resta")
            }else {
                print("ResultadoResta")}
            return resultadoResta
        
    }
    
    func division(num1: Int, num2: Int) -> Float {
         let resultadoDiv=num1/num2
         return Float((resultadoDiv))    }
    
    func multiplicacion(num1: Int, num2: Int) -> Int {
        let resultadoMul=num1*num2
        print(resultadoMul)
        return resultadoMul
    }
    
    func modulo(num1: Int, num2: Int) -> Int {
        let resultadoMod = num1%num2
        return resultadoMod    }
    
    
    @IBAction func nuevoNumero (sender: UIButton) {
        
        switch sender.accessibilityIdentifier {
            
        case "numberSeven":
            display.text="7"
        break
            
        case "numberEight":
            display.text="8"
        break
        case "numberNine":
            display.text="9"
        break
                
        case "numberFour":
            display.text="4"
        break
        case "numberFive":
            display.text="5"
        break
                
        case "numberSix":
            display.text="6"
        break
        case "numberOne":
            display.text="1"
        break
                    
        case "numberTwo":
            display.text="2"
        break
        case "numberThree":
            display.text="3"
        break
        case "numberZero":
            display.text="0"
        break
    
        default:
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}


protocol CalculadoraProtocol {
    func suma (num1: Int, num2:Int) -> Int
    
    func resta(num1:Int, num2:Int)-> Int
    
    func division(num1:Int, num2:Int) ->Float
    
    func multiplicacion(num1:Int,num2:Int) ->Int
    
    func modulo(num1:Int,num2:Int)->Int
    
    
    
}

