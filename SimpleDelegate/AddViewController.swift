//
//  AddViewController.swift
//  SimpleDelegate example
//
//  Created by Prof. H on 9/20/18.
//  Copyright © 2018 Prof. H. All rights reserved.


import UIKit

// Step 1: Define a protocol for being a delegate for
//         Object A (AddViewController)
protocol DataEnteredDelegate {
  func userDidEnterInformation(info:String)
}

class AddViewController: UIViewController {

  @IBOutlet weak var inputData:UITextField!
  
  // Step 3: Give object A an optional delegate variable
  var delegate:DataEnteredDelegate?
  
  
  @IBAction func sendData(_ sender: AnyObject) {
    // identifying my delegate
    print("\n* My delegate is: \(String(describing: delegate))")
    
    if let delegate = delegate {
      let information:String = inputData.text!
      
      // Step 5: Send info to my delegate so it can handle it appropriately on my behalf
      print("* Telling my delegate what was entered: \(information)\n")
      delegate.userDidEnterInformation(info: information)

      // even if you comment out the next line, the delegate will do its job (you just won't see it in the app...)
      self.navigationController?.popViewController(animated: true)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}
