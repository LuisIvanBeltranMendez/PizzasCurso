//
//  ControladorConfirmacion.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorConfirmacion: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var Pizzas : Pizza?
    override func viewWillAppear(animated: Bool) {
      Ingredientes.text = Pizzas?.pizza.ingren
      
        Queso.text =   Pizzas?.Queso()
        Masa.text = Pizzas?.Masa()
        Tamano.text = Pizzas?.Tamano()
       

       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Ingredientes: UILabel!
    @IBOutlet weak var Queso: UILabel!
    @IBOutlet weak var Masa: UILabel!

    @IBOutlet weak var Tamano: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
