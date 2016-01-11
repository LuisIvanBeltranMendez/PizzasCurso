//
//  ViewController.swift
//  Pizza
//
//  Created by Personal on 07/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pizza = Pizza()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let newVista = segue.destinationViewController as! ControladorQueso
        newVista.Pizzas = pizza
        
    }
    @IBOutlet weak var Mensaje: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

}

