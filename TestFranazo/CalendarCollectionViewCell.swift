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

  
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }
  
  @objc override func configureCalendarCell(_ cell: UICollectionViewCell, date: Date, active: Bool) -> UICollectionViewCell {
    self.backgroundColor = UIColor.white;
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd"
    dayLabel.text = dateFormatter.string(from: date)
    dayLabel.textColor = UIColor.lightGray;
    
    if active {
        dayLabel.textColor = UIColor.white;
      self.backgroundColor = UIColor.blue;
        print("active Date "+dateFormatter.string(from: date))
    }
    
    return cell;
  }
}
