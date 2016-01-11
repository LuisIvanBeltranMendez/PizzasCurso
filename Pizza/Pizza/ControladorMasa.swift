//
//  ControladorMasa.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorMasa: UIViewController {

    var Pizzas : Pizza?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        Mensaje.text = "Seleccione Masa "
    }
    

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let new = segue.destinationViewController as! ControladorQueso
        new.Pizzas = Pizzas
    }
    @IBAction func HacerDelgada() {
        Mensaje.text = "Masa Delgada "
        Pizzas?.pizza.masa = 0
    }
    @IBAction func HacerCrujiente() {
        Mensaje.text = "Masa Crujiente"
        Pizzas?.pizza.masa = 1
    }
    @IBAction func HacerGruesa() {
        Mensaje.text = "Masa Gruesa"
        Pizzas?.pizza.masa = 2 
    }
    
    @IBOutlet weak var Mensaje: UILabel!
}
