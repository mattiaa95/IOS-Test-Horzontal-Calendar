//
//  ViewController.swift
//  TestFranazo
//
//  Created by Mattia on 15/03/2019.
//  Copyright © 2019 Mattia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HorizontalCalendarDelegate {
   
    @IBOutlet weak var interfaceDesignerCalendarView: HorizontalCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interfaceDesignerCalendarView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        interfaceDesignerCalendarView.moveToDate(Date(), animated: true)
    }

    func horizontalCalendarViewDidUpdate(_ calendar: HorizontalCalendarView, date: Date) {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "dd.MM.YYYY"
    }
    
}
