//
//  ViewController.swift
//  firebaseLogIn
//
//  Created by Kazuma Takata on 2018/03/30.
//  Copyright © 2018 Kazuma Takata. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
//    let ref = Database.database().reference()
    
    @IBAction func submitButton(_ sender: Any) {
        print(passwordInput.text!)
        Auth.auth().createUser(withEmail: emailInput.text!, password: passwordInput.text!) { (user, error) in
//            print("\(user?.email!) created")
//            print(error)
            let id = user?.uid
            let setValue = ["id": id, "userName": user?.email]
            Database.database().reference().child("/user/\(id!)").setValue(setValue)
            self.performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
//        Auth.auth().createUser(withEmail: "neilbuzztakata@gmail.com", password: "neileeeee") { (user, error) in
//            print("\(user?.email!) created")
//            print(error)
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
}




