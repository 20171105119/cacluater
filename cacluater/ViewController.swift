//
//  ViewController.swift
//  cacluater
//
//  Created by  王京 on 2018/9/27.
//  Copyright © 2018年  王京. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp=0
    var sum=0
    var val=" "
    @IBOutlet var caculater: UITextField!
    @IBAction func button1(_ sender: Any) {
        caculater.text=caculater.text!+"1";
    }
    @IBAction func button2(_ sender: Any) {
        caculater.text=caculater.text!+"2";
    }
    @IBAction func button3(_ sender: Any) {
        caculater.text=caculater.text!+"3";
    }
    @IBAction func button4(_ sender: Any) {
        caculater.text=caculater.text!+"4";
    }
    @IBAction func button5(_ sender: Any) {
        caculater.text=caculater.text!+"5";
    }
    @IBAction func button6(_ sender: Any) {
        caculater.text=caculater.text!+"6";
    }
    @IBAction func button7(_ sender: Any) {
        caculater.text=caculater.text!+"7";
    }
    @IBAction func button8(_ sender: Any) {
        caculater.text=caculater.text!+"8";
    }
    @IBAction func button9(_ sender: Any) {
        caculater.text=caculater.text!+"9";
    }
    @IBAction func buttonadd(_ sender: Any) {
        caculater.text=caculater.text!+"+"
        caculater.text=" "
    }
    @IBAction func button0(_ sender: Any) {
        caculater.text=caculater.text!+"0";
    }
    @IBAction func buttonreduce(_ sender: Any) {
        temp=Int(caculater.text!)!
        caculater.text=caculater.text!+"-"
        caculater.text=" "
    }
    @IBAction func buttonmul(_ sender: Any) {
        caculater.text=caculater.text!+"*"
        caculater.text=" "
    }
    @IBAction func buttondivision(_ sender: Any) {
        caculater.text=caculater.text!+"/"
        caculater.text=" "
    }
    @IBAction func buttonresult(_ sender: Any) {
        switch val{
            
        }
    }
    @IBAction func buttonclear(_ sender: Any) {
        caculater.text=" "
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

