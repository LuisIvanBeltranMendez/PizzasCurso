//
//  ControladorTamano.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorTamano: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var Pizzas : Pizza?
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
           let newVista = segue.destinationViewController as! ControladorIngredientes
          newVista.Pizzas = Pizzas
        
    }
    override func viewWillAppear(animated: Bool) {
        Tamano.text = "Seleccione Tipo de Masa"
    }

    @IBOutlet weak var Tamano: UILabel!
    

    @IBAction func HacerMediana() {
        Tamano.text = "Pizza Mediana"
        Pizzas?.pizza.tamano = 1
    }
  
    @IBAction func HacerChica() {
        Tamano.text = "Pizza Chica"
        Pizzas?.pizza.tamano = 0
    }
    @IBAction func HacerGrande() {
        Tamano.text = "Pizza Grande"
        Pizzas?.pizza.tamano = 2
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
