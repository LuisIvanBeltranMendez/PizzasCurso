//
//  ControladorQueso.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorQueso: UIViewController {

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
        let newVista = segue.destinationViewController as! ControladorDeMasa
        newVista.Pizzas = Pizzas
        
    }
    override func viewWillAppear(animated: Bool) {
        Tamano.text = "Seleccione tamaño "
    }


    @IBOutlet weak var Tamano: UILabel!
    
    @IBAction func HacerMoz() {
        Tamano.text = "Queso Mozarela"
Pizzas?.pizza.masa = 0
    
    }
    
    @IBAction func HacerChe() {
        Tamano.text = "Queso Cheddar"
        Pizzas?.pizza.masa = 1
    }
    @IBAction func HacerPar() {
        Tamano.text = "Queso Parmesano"
        Pizzas?.pizza.masa = 2
    }
    @IBAction func HacerSinQueso() {
        Tamano.text = "Sin Queso"
        Pizzas?.pizza.masa = 3
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
