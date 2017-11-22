//
//  ViewController.swift
//  iOS_Playground
//
//  Created by Marvin Krüger on 21.11.17.
//  Copyright © 2017 Marvin Krüger. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var displayLayer: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var outTextArea: UITextView!
    @IBOutlet weak var passWd: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func encryptMessage(_ sender: Any) {
        let passwordText = passWd.text
        let messageText = textArea.text
        let cryptedText = CipherClass.crypt(message: messageText!, password: passwordText!, algorithm: "aes")
        /*let alert = UIAlertController(title: "Alert", message: cryptedText, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)*/
        outTextArea.text = cryptedText
    }
    /*
    @IBAction func clickButton(_ sender: Any) {
        displayLayer.text = "Hello World"
        let alert = UIAlertController(title: "Alert", message: inputField.text, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }*/
    
    
    @IBAction func inputChanged(_ sender: Any) {
        displayLayer.text = inputField.text
    }
    
    

}

