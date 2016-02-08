//
//  ViewConfirmationController.swift
//  Ask4Pizza
//
//  Autor: Alfonso G. Urroz-Aguirre
//

import UIKit

class ViewConfirmationController: UIViewController {
  
  var pizza = Pizza?()

  @IBOutlet weak var labelSeleccion: UILabel!

  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      if let pizzaSeleccion = pizza {
        var textoIngredientes:String = ""
        for ingredientes in pizzaSeleccion.ingredientes! {
          if (ingredientes != "Pelada") {
             textoIngredientes += "\(ingredientes) , "
          }
        }
        labelSeleccion.text = "\(pizzaSeleccion.tamano!) , \(pizzaSeleccion.masa!) , \(pizzaSeleccion.queso!), \(textoIngredientes)"
      }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
  @IBAction func btnEnviarCocina(sender: AnyObject) {
    self.performSegueWithIdentifier("enviarCocina", sender: nil)
    
    
  }
  @IBAction func btnCambiarIngredientes(sender: AnyObject) {
    self.dismissViewControllerAnimated(true, completion: nil)
    
  }


}
