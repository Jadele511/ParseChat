/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.text = "a@example.com"
        passwordTextField.text = "asdf"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLogin(sender: UIButton) {
        
        PFUser.logInWithUsernameInBackground(emailTextField.text!, password: passwordTextField.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                print ("Username \(user)")
                self.performSegueWithIdentifier("loginSegue", sender: self)
                // Do stuff after successful login.
            } else {
                    self.displayAlert("Sai user roi ban oi")
                
                // The login failed. Check error to see why.
            }
            
        }
        
    }
    
    func displayAlert(message: String?){
        
        // alert controller
        let alertController = UIAlertController(title: "Authentication",
            message: message, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertController, animated: true, completion: nil )
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
