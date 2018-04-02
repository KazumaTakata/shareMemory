//
//  takePhotoViewController.swift
//  firebaseLogIn
//
//  Created by Kazuma Takata on 2018/04/02.
//  Copyright © 2018 Kazuma Takata. All rights reserved.
//

import UIKit

class takePhotoViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    
    var imagePickerController : UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func onPhotoButton(_ sender: Any) {
        
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    

    
    @IBAction func onSaveButton(_ sender: Any) {
    }
    
    
    @IBAction func onGalleryButton(_ sender: Any) {
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
