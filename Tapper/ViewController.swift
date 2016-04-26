//
//  ViewController.swift
//  Tapper
//
//  Created by Tayseer Edouni on 4/25/16.
//  Copyright © 2016 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOfTaps: Int = 0
    
    @IBOutlet weak var TapperTitle: UIImageView!
    
    
    @IBOutlet weak var tapTextField: UITextField!
    
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var output: UILabel!
    
    @IBOutlet weak var coinBtn: UIButton!
    
    @IBAction func coinButton(sender: AnyObject) {
        
        
    }
    
    
    @IBAction func PlayButton(sender: AnyObject) {
        
        
        //guard check if nil aka textfield is empty
        guard var _ = Double(tapTextField.text!) else{
            //NEVER want an empty field. If user clears old subtotal, replace value with 0
            numberOfTaps = 0
            
        
            return
        }
        
        //If not nil update values
        numberOfTaps = Int(tapTextField.text!)!
        TapperTitle.hidden = true
        tapTextField.hidden = true
        self.playBtn.hidden = true
        coinBtn.hidden = false
        output.hidden = false
        output.text = String(numberOfTaps)
        
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        coinBtn.hidden = true
        output.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func dismissKeyboard() {
        view.endEditing(true)
    }



}

