//
//  ViewTamanoController.swift
//  Ask4Pizza
//
//  Autor: Alfonso G. Urroz-Aguirre
//

import UIKit


class ViewTamanoController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate, communicationController {
  
  
  @IBOutlet weak var tamanoSelector: UIPickerView!
  @IBOutlet weak var labelTamano: UILabel!
  
  let pickerData = ["Chiquita","Mediana","Grande"]
  
  var pizza = Pizza?()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tamanoSelector.dataSource = self
    tamanoSelector.delegate = self
    labelTamano.text = "Chiquita"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  override func viewDidAppear(animated: Bool) {
    let viewController = ViewController()
    viewController.delegate = self
  }
  
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerData.count
  }
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    labelTamano.text = pickerData[row]
  }
  
  func setSize() {
    pizza?.masa = labelTamano.text
  }
  func setDough() {
    
  }
  func setCheese() {
  }
  func setIngredients() {
    
  }
  @IBAction func btnAceptar(sender: AnyObject) {
    pizza?.tamano = labelTamano.text
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}
