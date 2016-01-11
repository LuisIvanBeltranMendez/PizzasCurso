//
//  ControladorTamaño.swift
//  Pizza
//
//  Created by Personal on 09/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorTaman_o: UIViewController {

     @IBOutlet weak var Tamano: UILabel!
   
    
   var Pizzas : Pizza?
    override func viewWillAppear(animated: Bool) {
        Tamano.text = "Seleccione tamaño "
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func HacerChica() {
        Pizzas?.pizza.tamano = 0
        Tamano.text = "Tamaño Chico"
    }
   
    @IBAction func HacerMEdiana() {
        Pizzas?.pizza.tamano = 1
        Tamano.text = "Tamaño Mediano "
    }
   
    @IBAction func HacerGrande() {
        Pizzas?.pizza.tamano = 2
        Tamano.text = "Tamaño: Grande "
    }
    

 
    
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    let new = segue.destinationViewController as! ControladorQueso
    new.Pizzas = Pizzas
    }
    
   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
