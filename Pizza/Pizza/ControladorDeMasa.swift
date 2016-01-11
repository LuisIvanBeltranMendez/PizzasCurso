//
//  ControladorDeMasa.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorDeMasa: UIViewController {
    var Pizzas : Pizza?
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       let newVista = segue.destinationViewController as! ControladorTamano
       newVista.Pizzas = Pizzas
        
    }
    
    override func viewWillAppear(animated: Bool) {
       Tamano.text = "Seleccione Tipo de Masa"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Tamano: UILabel!

    @IBOutlet weak var HacerMoz: UIButton!
    
    @IBAction func HacerM() {
        Tamano.text = "Masa Delgada"
        Pizzas?.pizza.masa = 0
    }
    
    @IBAction func HacerChe() {
        Tamano.text = "Masa Crujiente"
        Pizzas?.pizza.masa = 1
    }
    
    @IBAction func HacerParme() {
        Tamano.text = "Masa Gruesa"
        Pizzas?.pizza.masa = 2
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
