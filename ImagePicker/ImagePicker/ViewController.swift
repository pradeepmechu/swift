//
//  ViewController.swift
//  ImagePicker
//
//  Created by Pradeep Kumar on 29/12/2016.
//  Copyright © 2016 Pradeep Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imgView: UIImageView!
    
    @IBAction func pickImgBtn(_ sender: AnyObject) {
        
        let img = UIImagePickerController()
        img.delegate = self
        
        img.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        img.allowsEditing = false
        self.present(img, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let img = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imgView.image = img
        }else{
            // Error message
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

