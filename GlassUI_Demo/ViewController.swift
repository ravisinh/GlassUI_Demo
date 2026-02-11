//
//  ViewController.swift
//  GlassUI_Demo
//
//  Created by Ravisinh on 2026/02/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img_Logo: UIImageView!
    @IBOutlet weak var txt_Email: UITextField!
    @IBOutlet weak var txt_Password: UITextField!
    @IBOutlet weak var btn_Login: UIButton!
    @IBOutlet weak var lbl_Privacy_Policy: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.makeGlassUI()
    }
    
    //Convert normal-UI into glass-UI
    func makeGlassUI(){
        GlobalFunction.makeGlassView(to: self.view)
        GlobalFunction.makeGlassImageView(self.img_Logo)
        GlobalFunction.makeGlassTextField(self.txt_Email)
        GlobalFunction.makeGlassTextField(self.txt_Password)
        GlobalFunction.makeGlassButton(self.btn_Login)
        GlobalFunction.makeGlassLabel(self.lbl_Privacy_Policy)
        self.lbl_Privacy_Policy.text = "Privacy Policy..."
    }

}

