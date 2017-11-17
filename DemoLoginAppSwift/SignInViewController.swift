//
//  SignInViewController.swift
//  DemoLoginAppSwift
//
//  Created by Chandan Anand on 11/17/17.
//  Copyright © 2017 Chandan Anand. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate=self
        userPasswordTextField.delegate=self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonPressed(_ sender: Any){
        
        if((userNameTextField.text?.contains("chandan"))! && (userPasswordTextField.text?.contains("chandan"))!)
        {
            print("Login Successfull")
            let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(ViewController, animated: true)
        }
        else
        {
            let userName = userNameTextField.text
            let userPassword = userPasswordTextField.text
            
            if (userName?.isEmpty)! || (userPassword?.isEmpty)!
            {
                print("Field Empty")
                let alertController = UIAlertController(title: "One of the required fields is empy!", message: nil, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                present(alertController, animated: true, completion: nil)
            }
            else
            {
                print("Login Failed")
                let alertController = UIAlertController(title: "Wrong Credential!", message: nil, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                present(alertController, animated: true, completion: nil)
            }
        }
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool    {
        userNameTextField.resignFirstResponder()
        userPasswordTextField .resignFirstResponder()
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
