//
//  CameraViewController.swift
//  Parstagram
//
//  Created by Leo Samuelson on 2/17/20.
//  Copyright © 2020 NDNU. All rights reserved.
//

import UIKit
import AlamofireImage

class CameraViewController: UIViewController, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var commentField: UITextField!
    
    @IBAction func onSubmitButton(_ sender: Any) {
        
        
    }
    
    @IBAction func onCameraButton(_ sender: Any) {
    let picker = UIImagePickerController()
       
    picker.allowsEditing = true

    if UIImagePickerController.isSourceTypeAvailable(.camera) {
    picker.sourceType = .camera
    } else {
    picker.sourceType = .photoLibrary
}
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
            
        let size = CGSize(width: 300, height: 300)
        let scaledImage = image.af_imageAspectScaled(toFill: size)
            
        imageView.image = scaledImage
        
        
        dismiss(animated: true, completion: nil)
        }
   }

}
