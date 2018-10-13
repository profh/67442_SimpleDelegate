//
//  ViewController.swift
//  SimpleDelegate example
//
//  Created by Prof. H on 9/20/18.
//  Copyright © 2018 Prof. H. All rights reserved.
//

import UIKit

// Step 2: Make Object B (ViewController) conform to the
//         delegate protocol. First step is to declare
//         that VC will adopt the protocol
class ViewController: UIViewController, DataEnteredDelegate {

  @IBOutlet weak var displayData: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    displayData.text = "Data from add page displayed here."
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // Step 2b: Implementing the protocol; in this case,
  //          simply taking the data and displaying
  //          it in the outlet
  func userDidEnterInformation(info: String) {
    displayData.text = info
    print("-- Doing my job as a delegate")
    print("-- Sending to displayData outlet: \(info)\n")
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "addDataVC" {
      let addDataVC:AddViewController = segue.destination as! AddViewController
      
      // Step 4: Tell object A (AddVC) that object B (VC) is now its delegate
      addDataVC.delegate = self as DataEnteredDelegate
      // declaring that this VC is acting as the delegate
      print("\n-- I'm \(String(describing: addDataVC))'s delegate: \(String(describing: addDataVC.delegate))\n")
    }
  }

}

