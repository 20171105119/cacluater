//
//  ViewController.swift
//  绩点查询器
//
//  Created by 王京 on 2019/1/6.
//  Copyright © 2019 王京. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n=1
    var jd:Double=0
    var a:Double=0.0
    var b:Double=0.0
    var grade:Double=0.0
    var point:Double=0.0
    func calPoint(grade:Double)->Double {
        if(grade<=100&&grade>=90)
        {
            return 4.0
        }
        if(grade<=89&&grade>=85)
        {
            return 3.7
        }
        if(grade<=84&&grade>=82)
        {
            return 3.3
        }
        if(grade<=81&&grade>=78)
        {
            return 3.0
        }
        if(grade<=77&&grade>=75)
        {
            return 2.7
        }
        if(grade<=74&&grade>=71)
        {
            return 2.3
        }
        if(grade<=70&&grade>=66)
        {
            return 2.0
        }
        if(grade<=65&&grade>=62)
        {
            return 1.7
        }
        if(grade>60&&grade<=61)
        {
            return 1.3
        }
        if(grade==60)
        {
            return 1.0
        }else {
            return 0
        }
    }
    @IBOutlet weak var display: UILabel!
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
        } else {
            jd = calPoint(grade: grade)
            if display.text==""{
                display.text = ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
            }else {
                display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
            }
            a+=jd*Double(StudyMark.text!)!
            point=point+Double(StudyMark.text!)!
            Grade.text=""
            StudyMark.text=""
            ClassName.text=""
            n=n+1
            
        }
    }
    @IBOutlet weak var ClassName: UITextField!
    @IBOutlet weak var StudyMark: UITextField!
    @IBAction func cz(_ sender: Any) {
        Grade.text=""
        StudyMark.text=""
        ClassName.text=""
        Average.text=""
        display.text=""
        point=0
        a=0
    }
    @IBAction func ResultButton(_ sender: Any) {
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
        } else {
            if n==1 {
                jd = calPoint(grade: grade)
                b=jd
                Average.text=String(b)
                if display.text==""{
                    display.text=ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
                }else {
                    display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
                }
            } else {
                point+=Double(StudyMark.text!)!
                a+=jd*Double(StudyMark.text!)!
                b=a/point
                Average.text=String(format: "%.2f",b)
                if display.text==""{
                    display.text = ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
                }else {
                    display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(jd)+"\n"
                }
            }
        }
    }
    @IBOutlet weak var Average: UILabel!
    @IBOutlet weak var Grade: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        display.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        display.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

