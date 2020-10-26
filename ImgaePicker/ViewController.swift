//
//  ViewController.swift
//  ImgaePicker
//
//  Created by NINKAL GUPTA on 28/05/20.
//  Copyright © 2020 NINKAL GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//, UIImagePickerControllerDelegate ,UINavigationControllerDelegate
//{
//
    
    let imagePicker = UIImagePickerController()
      var selectedVew: UIView!
    
    var flag = 0
var videoURL: NSURL?
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!

    //var imagePicker = UIImagePickerController()
  
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//       imagePicker.delegate = self
//       imagePicker.sourceType = .savedPhotosAlbum
//       imagePicker.allowsEditing = false
//
//       [imageView1,imageView2].forEach {
//           $0?.isUserInteractionEnabled = true
//           $0?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(chooseImage)))
//       }
    }
    
    
    

//        @objc func chooseImage(_ gesture: UITapGestureRecognizer) {
//            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
//                selectedVew = gesture.view
//                present(imagePicker, animated: true)
//            }
//        }
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            (selectedVew as? UIImageView)?.image = info[.originalImage] as? UIImage
//            dismiss(animated: true)
//        }
//
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            dismiss(animated: true)
//        }
    

    @IBAction func onTapSelectBtn(_ sender: Any) {
        flag = 1
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        // alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
        //     self.openCamera()
        // }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            self.openGallary()
        }))
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        
        
    }
    
    @IBAction func selectImage1Btn(_ sender: Any) {
  
    
     flag = 2
    let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
           // alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
           //     self.openCamera()
           // }))
           
           alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
               self.openGallary()
           }))
           
           alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
           self.present(alert, animated: true, completion: nil)
           
           
           
           
    
    
    }
}

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    func openCamera() {
//        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)) {
//            imagePicker.sourceType = UIImagePickerController.SourceType.camera
//            imagePicker.allowsEditing = true
//            self.present(imagePicker, animated: true, completion: nil)
//        }
//        else{
//            UIAlertController.showInfoAlertWithTitle("Warning", message: "You don't have camera", buttonTitle: "Okay")
//        }
//    }

    func openGallary() {
      imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
//        imagePicker.mediaTypes = ["public.image", "public.movie"]
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        imagePicker.navigationBar.tintColor = .black
        self.present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:  [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            if flag == 1 {
                self.imageView.image = pickedImage
            }
          else if flag == 2 {
                self.imageView2.image = pickedImage
            }
          


        }
//        else if let pickedImage = info[.editedImage] as? UIImage {
//            self.imageView.image = pickedImage
//
//        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}



 
    
