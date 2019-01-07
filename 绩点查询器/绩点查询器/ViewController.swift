//
//  ViewController.swift
//  绩点查询器
//
//  Created by 王京 on 2019/1/6.
//  Copyright © 2019 王京. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n=1.0
    var jd:Double=0
    var a:Double=0.0
    var b:Double=0.0
    var grade:Double=0.0
    @IBAction func AddButton(_ sender: Any) {
        grade = Double(Grade.text!)!
        if(grade>100||grade<0)
        {
            let alertController = UIAlertController(title: "分数输入错误!",
                                                    message: nil, preferredStyle: .alert)
            //显示提示框
            self.present(alertController, animated: true, completion: nil)
            //两秒钟后自动消失
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
        }
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
        a+=jd*Double(StudyMark.text!)!
        Grade.text=""
        StudyMark.text=""
        ClassName.text=""
        n=n+1
    }
    @IBOutlet weak var ClassName: UITextField!
    @IBOutlet weak var StudyMark: UITextField!
    @IBAction func ResultButton(_ sender: Any) {
        if(grade>100||grade<0)
        {
            let alertController = UIAlertController(title: "分数输入错误!",
                                                    message: nil, preferredStyle: .alert)
            //显示提示框
            self.present(alertController, animated: true, completion: nil)
            //两秒钟后自动消失
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
        }
        if(StudyMark>6||StudyMark<0)
        {
            let alertController = UIAlertController(title: "分数输入错误!",
                                                    message: nil, preferredStyle: .alert)
            //显示提示框
            self.present(alertController, animated: true, completion: nil)
            //两秒钟后自动消失
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
        }
        b=a/n
        Average.text=String(b)
    }
    @IBOutlet weak var Average: UILabel!
    @IBOutlet weak var Grade: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

