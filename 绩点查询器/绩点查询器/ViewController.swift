//
//  ViewController.swift
//  绩点查询器
//
//  Created by 王京 on 2019/1/6.
//  Copyright © 2019 王京. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count=1//次数
    var GPA:Double=0
    var all:Double=0.0
    var averageGPA:Double=0.0
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
            GPA = calPoint(grade: grade)
            if display.text==""{
                display.text = ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
            }else {
                display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
            }
            all+=GPA*Double(StudyMark.text!)!
            point=point+Double(StudyMark.text!)!
            Grade.text=""
            StudyMark.text=""
            ClassName.text=""
            count=count+1
            
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
        all=0
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
            if count==1 {
                GPA = calPoint(grade: grade)
                averageGPA=GPA
                Average.text=String(averageGPA)
                if display.text==""{
                    display.text=ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
                }else {
                    display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
                }
            } else {
                all+=GPA*Double(StudyMark.text!)!
                point+=Double(StudyMark.text!)!
                averageGPA=all/point
                Average.text=String(format: "%.2f",averageGPA)
                if display.text==""{
                    display.text = ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
                }else {
                    display.text = display.text!+ClassName.text!+"       "+StudyMark.text!+"       "+Grade.text!+"  "+String(GPA)+"\n"
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

