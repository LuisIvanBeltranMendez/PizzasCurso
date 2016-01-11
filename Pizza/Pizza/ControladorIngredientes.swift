//
//  ControladorIngredientes.swift
//  Pizza
//
//  Created by Personal on 10/01/16.
//  Copyright © 2016 Byronet. All rights reserved.
//

import UIKit

class ControladorIngredientes: UIViewController {
    var seleccionados = 0
    
    var Pizzas : Pizza?
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       let newVista = segue.destinationViewController as! ControladorConfirmacion
        newVista.Pizzas = Pizzas
        
    }
    override func viewWillAppear(animated: Bool) {
       agregarIngr()
    }
    var ingredientes : [Bool] = [ false, false,
     false,
    false,
    false,
    false,
   false,
      false,
      false]
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func MensajeIngredientes()->String{
        var men = "Ingrediente : "
            if (ingredientes[0] ==  true){
            men += "Jamon "
                Jamon.backgroundColor = UIColor.blackColor()
            }else{
                Jamon.backgroundColor = UIColor.whiteColor()
                 seleccionados--
        }
        
                
                if(ingredientes[1] ==  true){
        men += "Pepperoni"
                    Peperoni.backgroundColor = UIColor.blackColor()
                }else{
                    Peperoni.backgroundColor = UIColor.whiteColor()
                     seleccionados--
        }
                    
                    if(ingredientes[2] ==  true){
                men += " Pavo "
                        Pavo.backgroundColor = UIColor.blackColor()
                    }else{
                        Pavo.backgroundColor = UIColor.whiteColor()
                         seleccionados--
        }
if(ingredientes[3] ==  true){
              men += "Salchica "
    Salchicha.backgroundColor = UIColor.blackColor()
}else{
    Salchicha.backgroundColor = UIColor.whiteColor()
     seleccionados--
        }
 if(ingredientes[4] ==  true){
                 men += "Aceituna "
    Aceituna.backgroundColor = UIColor.blackColor()
 }else{
     seleccionados--
    Aceituna.backgroundColor = UIColor.whiteColor()
        }
 if(ingredientes[5] ==  true){
                men += "Cebolla "
    Cebolla.backgroundColor = UIColor.blackColor()
 }else{
     seleccionados--
    Cebolla.backgroundColor = UIColor.whiteColor()
        }
if(ingredientes[6] ==  true){
                men += "Pimienta "
    Pimiento.backgroundColor = UIColor.blackColor()
}else{
     seleccionados--
    Pimiento.backgroundColor = UIColor.whiteColor()
        }
if(ingredientes[7] ==  true){
                men += "Piña "
    Pina.backgroundColor = UIColor.blackColor()
}else{
     seleccionados--
    Pina.backgroundColor = UIColor.whiteColor()
        }
if(ingredientes[8] ==  true){
                men += "Anchoa "
    Anchoa.backgroundColor = UIColor.blackColor()
}else{
     seleccionados--
    Anchoa.backgroundColor = UIColor.whiteColor()
        }
        return men
    }
    
    func  agregarIngr()->Bool{
        if(seleccionados < 0){
            seleccionados = 0
        }
        if(seleccionados >= 5){
    seleccionados = 5
            return false
        }
      
 Mensaje.text = MensajeIngredientes()
        Pizzas?.pizza.ingren = MensajeIngredientes()
        
         return true
        
    }
    
    @IBOutlet weak var Mensaje: UILabel!
    @IBOutlet weak var Jamon: UIButton!
    @IBOutlet weak var Pavo: UIButton!

    @IBOutlet weak var Salchicha: UIButton!

    @IBOutlet weak var Anchoa: UIButton!
    @IBOutlet weak var Pina: UIButton!
    @IBOutlet weak var Pimiento: UIButton!
    @IBOutlet weak var Cebolla: UIButton!
    @IBOutlet weak var Aceituna: UIButton!
    @IBOutlet weak var Peperoni: UIButton!
  
    @IBAction func TomarJamon() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[0] == true){
        ingredientes[0] = false
           
        }else{
        ingredientes[0] = true
            
        }
        agregarIngr()
    }
    
    @IBAction func TomarPeperoni() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[1] == true){
            ingredientes[1] = false
          
        }else{
            ingredientes[1] = true
                   }
        agregarIngr()
        
    }
    @IBAction func TomarPavo() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[2] == true){
            ingredientes[2] = false
           
        }else{
            ingredientes[2] = true
           
        }
         agregarIngr()
       
    }
    @IBAction func TomarSalchica() {
        if (agregarIngr() == false){
            return
        }

        if (ingredientes[3] == true){
            ingredientes[3] = false
          
        }else{
            ingredientes[3] = true
           
        }
           agregarIngr()
               }
    @IBAction func TomarHaceituna() {
        if (agregarIngr() == false){
        return
        }
        if (ingredientes[4] == true){
            ingredientes[4] = false
          
        }else{
            ingredientes[4] = true
            
        }
         agregarIngr()
        
    }
    @IBAction func TomarCebolla() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[5] == true){
            ingredientes[5] = false
                  }else{
            ingredientes[5] = true
                    }
         agregarIngr()
    }
    @IBAction func TomarPimiento() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[6] == true){
            ingredientes[6] = false
           
        }else{
            ingredientes[6] = true
                 }
         agregarIngr()
    }
    @IBAction func TomarPina() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[7] == true){
            ingredientes[7] = false
         
        }else{
            ingredientes[7] = true
          
        }
         agregarIngr()
    }
    @IBAction func TAnchoa() {
        if (agregarIngr() == false){
            return
        }
        if (ingredientes[8] == true){
            ingredientes[8] = false
        }else{
            ingredientes[8] = true
        }
          agregarIngr()
    }
    @IBOutlet weak var TomarAnchoa: UIButton!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
