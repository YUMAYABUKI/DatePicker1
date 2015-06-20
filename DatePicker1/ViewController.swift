//
//  ViewController.swift
//  DatePicker1
//
//  Created by 矢吹祐真 on 2015/06/21.
//  Copyright (c) 2015年 矢吹祐真. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changed(sender:UIDatePicker){
        label.text = format(datePicker.date,style: "yy年MM月dd日")
    }
    
    func format(date: NSDate, style: String) ->String{
    let dateFormatter = NSDateFormatter()
    dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
    dateFormatter.dateFormat = style
    return dateFormatter.stringFromDate(date)
    }


}

