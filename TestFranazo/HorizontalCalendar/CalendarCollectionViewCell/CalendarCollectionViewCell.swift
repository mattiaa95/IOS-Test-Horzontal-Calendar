//
//  CalendarCollectionViewCell.swift
//  HorizontalCalendar
//
//  Created by Raphael Seher on 29/12/15.
//  Copyright © 2015 Raphael Seher. All rights reserved.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
  
  //@IBOutlet weak var reddotImageView: UIView!
  @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var CircleDay: UIView!
    
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }
  
  @objc override func configureCalendarCell(_ cell: UICollectionViewCell, date: Date, active: Bool) -> UICollectionViewCell {
    self.CircleDay.backgroundColor = UIColor.white
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd"
    dayLabel.text = dateFormatter.string(from: date)
    dayLabel.textColor = UIColor.lightGray
    dayLabel.font = UIFont.systemFont(ofSize: 20.0)
    
    if active {
        dayLabel.textColor = UIColor.white
        self.CircleDay.backgroundColor = UIColor.blue
        dayLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        print("active Date "+dateFormatter.string(from: date))
    }
    
    return cell;
  }
}
