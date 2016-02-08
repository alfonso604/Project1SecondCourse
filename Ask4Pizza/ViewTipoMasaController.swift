//
//  TamanoMasaViewController.swift
//  Ask4Pizza
//
//  Autor: Alfonso G. Urroz-Aguirre
//

import UIKit

class ViewTipoMasaController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,communicationController  {
  
  @IBOutlet weak var tipoMasaLabel: UILabel!
  @IBOutlet weak var tipoMasaSelector: UIPickerView!
  
  let pickerData = ["Delgadita","Achicharronada","Gruesa"]
  
  var pizza = Pizza?()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tipoMasaSelector.dataSource = self
    tipoMasaSelector.delegate = self
    tipoMasaLabel.text = "Delgadita"
    
  }
  
  override func viewDidAppear(animated: Bool) {
    let controllerView = ViewController()
    controllerView.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
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
    tipoMasaLabel.text = pickerData[row]
  }
  func pickerView(pickerView:UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
    let attributedString = NSAttributedString(string: pickerData[row], attributes: [NSForegroundColorAttributeName : UIColor.whiteColor()])
    return attributedString
    
  }

  @IBAction func btnAceptar(sender: AnyObject) {
    pizza?.masa = tipoMasaLabel.text
    self.dismissViewControllerAnimated(true, completion: nil)
  }
  
  func setDough() {
    pizza?.masa = tipoMasaLabel.text
  }
  func setSize() {
    
  }
  func setCheese() {
    
  }
  func setIngredients() {
    
  }
  
  

  
}
