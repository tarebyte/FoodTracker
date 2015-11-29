//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mark Tareshawty on 11/29/15.
//  Copyright © 2015 Mark Tareshawty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var mealNameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Handle the text field’s user input through delegate callbacks.
    nameTextField.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // MARK: UITextFieldDelegate

  func textFieldDidEndEditing(textField: UITextField) {
    mealNameLabel.text = textField.text
  }

  func textFieldShouldReturn(textField: UITextField) -> Bool {
    // Hide the keyboard
    textField.resignFirstResponder()
    return true
  }

  // MARK: actions

  @IBAction func setDefaultTextLabel(sender: UIButton) {
    mealNameLabel.text = "Default Text"
  }

}

