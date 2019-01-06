//
//  ViewController.swift
//  绩点查询器
//
//  Created by 王京 on 2019/1/6.
//  Copyright © 2019 王京. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var n=0
var jd:Float=0
    @IBAction func AddButton(_ sender: Any) {
        Grade.text=""
        StudyMark.text=""
        ClassName.text=""
        n=n+1
    }
    @IBOutlet weak var ClassName: UITextField!
    @IBOutlet weak var StudyMark: UITextField!
    @IBOutlet weak var Grade: UITextField!
    @IBOutlet weak var Average: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let grade = Int("Grade.text")!
        if(grade<=100&&grade>=90)
        {
            jd=4.0
        }
        if(grade<=89&&grade>=85)
        {
            jd=3.7
        }
        if(grade<=84&&grade>=82)
        {
            jd=3.3
        }
        if(grade<=81&&grade>=78)
        {
            jd=3.0
        }
        if(grade<=77&&grade>=75)
        {
            jd=2.7
        }
        if(grade<=74&&grade>=71)
        {
            jd=2.3
        }
        if(grade<=70&&grade>=66)
        {
            jd=2.0
        }
        if(grade<=65&&grade>=62)
        {
            jd=1.7
        }
        if(grade>60&&grade<=61)
        {
            jd=1.3
        }
        if(grade==60)
        {
            jd=1.0
        }
        if(grade<60)
        {
            jd=0
        }
        
        Average.text=Int(StudyMark.text!)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

