//
//  ViewController.swift
//  count
//
//  Created by 張翔 on 2018/03/05.
//  Copyright © 2018年 sho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus(){
        number += 1
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func multiply(){
        number *= 2
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func divide(){
        number /= 2
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func clear(){
        number = 0
        changeColor()
    }
    
    func changeColor(){
        if number >= 10{
            label.textColor = UIColor.red
        }else if number <= -10{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.white
        }
    }


}

