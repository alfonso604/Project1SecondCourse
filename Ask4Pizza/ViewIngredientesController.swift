//
//  ViewIngredientesController.swift
//  Ask4Pizza
//
//  Autor: Alfonso G. Urroz-Aguirre
//

import UIKit

class ViewIngredientesController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,communicationController {
  
  var pizza = Pizza?()
  
  var ingrediente1: String = "Pelada"
  var ingrediente2: String = "Jamon"
  var ingrediente3: String = "Pepperoni"
  var ingrediente4: String = "Pavo"
  var ingrediente5: String = "Chorizo"
    
  let pickerData = ["Pelada","Jamon", "Pepperoni", "Pavo", "Chorizo"]
  
  @IBOutlet weak var ingredienteSelector1: UIPickerView!
  @IBOutlet weak var ingredienteSelector2: UIPickerView!
  @IBOutlet weak var ingredienteSelector3: UIPickerView!
  @IBOutlet weak var ingredienteSelector4: UIPickerView!
  @IBOutlet weak var ingredienteSelector5: UIPickerView!
    override func viewDidLoad() {
    super.viewDidLoad()
    ingredienteSelector1.delegate = self
    ingredienteSelector1.dataSource = self
    
    ingredienteSelector2.delegate = self
    ingredienteSelector2.dataSource = self
    
    ingredienteSelector3.delegate = self
    ingredienteSelector3.dataSource = self
    
    ingredienteSelector4.delegate = self
    ingredienteSelector4.dataSource = self
    
    ingredienteSelector5.delegate = self
    ingredienteSelector5.dataSource = self
    }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  override func viewDidAppear(animated: Bool) {
    let controllerView = ViewController()
    controllerView.delegate = self
  }
  
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerData.count
  }
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
    if (pickerView == ingredienteSelector1) {
      ingrediente1 = pickerData[row]
    }
    if (pickerView == ingredienteSelector2) {
      ingrediente2 = pickerData[row]
    }
    if (pickerView == ingredienteSelector3) {
      ingrediente3 = pickerData[row]
    }
    if (pickerView == ingredienteSelector4) {
      ingrediente4 = pickerData[row]
    }
    if (pickerView == ingredienteSelector5) {
      ingrediente5 = pickerData[row]
    }
    
    return pickerData[row]
  }
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
  }
  func setSize() {
    
  }
  func setCheese() {
    
  }
  func setDough() {
    
  }
  func setIngredients() {
    pizza?.ingredientes!.append(ingrediente1)
    pizza?.ingredientes!.append(ingrediente2)
    pizza?.ingredientes!.append(ingrediente3)
    pizza?.ingredientes!.append(ingrediente4)
    pizza?.ingredientes!.append(ingrediente5)
    //print(pizza!.ingredientes)
  }
  
  @IBAction func btnAceptar(sender: AnyObject) {
    
    pizza?.ingredientes!.append(ingrediente1)
    pizza?.ingredientes!.append(ingrediente2)
    pizza?.ingredientes!.append(ingrediente3)
    pizza?.ingredientes!.append(ingrediente4)
    pizza?.ingredientes!.append(ingrediente5)
    //print(pizza!.ingredientes)
    
    self.dismissViewControllerAnimated(true, completion: nil)
    
  }
}
