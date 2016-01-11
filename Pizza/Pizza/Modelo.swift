//
//  Modelo.swift
//  Pizza
//
//  Created by Personal on 09/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//


import UIKit

struct   Pizza {
    
    //Nota si no se le introducen valores adecuados a la variable pizza puede acarrear errores.
    var pizza = (tamano:  0, masa: 0, queso: 0 , ingren: "Seleccione Ingredientes")
    var Tam : [String] = ["Pizza Chica", "Pizza Medina", "Pizza Grande","Pizza Chica"]
    let masa : [String] = ["Delgada", "Crujiente", "Gruesa"]
    let queso : [String] = ["Mozarelo", "Cheddar", "Parmesano", "Sin Quesi"]
    let ingre : [String] = ["Pizza Chica", "Pizza Medina", "Pizza Grande", "Pizza Medina"]
    
    
    func Tamano()->String{
        return Tam[pizza.tamano]
    }
    func Masa()->String{
        return masa[pizza.masa]
    }
    func Queso()->String{
        return queso[pizza.queso]
    }
    func Ingrediente()->String{
        
        return pizza.ingren
    }
    /*
    override func viewWillAppear(animated: Bool) {
        Tamano.text = "Seleccione tamaño "
    }
    
    
    @IBOutlet weak var Tamano: UILabel!
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let new = segue.destinationViewController as! ControladorQueso
        new.Pizzas = Pizzas
    }
*/
    
    
}