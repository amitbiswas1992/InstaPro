//
//  ViewController.swift
//  InstaPro
//
//  Created by Maze Geek on 8/24/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = image
        } else {
            print("There was a problem getting the image")
        }
        // dismiss controller
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func chooseImageButton(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//  let comment = PFObject(className: "Comment")
//        comment["text"] = "Nice Shot"
//        comment.saveInBackground{ (success, error) in
//            if (success){
//                print("Save successful")
//            }else {
//                print("Save failed")
//            }
//        }
        
//      let twetter = PFObject(className: "twetter")
//
//        twetter["comment"] = "Welcome to New York"
//
//        twetter.saveInBackground(block: {(success, error) in
//            if (success){
//                print("Success")
//            }else {
//                print("Failed")
//            }
//
//        })
        
        let query = PFQuery(className: "twetter")
        
        query.getObjectInBackground(withId: "M1HFLotT8K", block: {(object,error) in
            
            if let twetter = object {
                print(twetter)
            }else {
                print("Retrieve failed")
            }
            
        })
        
}
}
