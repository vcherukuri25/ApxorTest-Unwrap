//
//  TakeChallengeTableViewCell.swift
//  Unwrap
//
//  Created by Julian Schiavo on 27/4/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

class ChallengeTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator

        textLabel?.text = "Start"
        textLabel?.font = .preferredFont(forTextStyle: .title1)

        detailTextLabel?.text = "Each daily challenge may be attempted only once."
        detailTextLabel?.font = Unwrap.scaledBaseFont
        detailTextLabel?.numberOfLines = 0
        
       // let  longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector("longPressed:"))
       //       self.addGestureRecognizer(longPressRecognizer)
        let long = UILongPressGestureRecognizer(target: self, action: #selector(longPressed(sender:)))
        self.addGestureRecognizer(long)
    }
    
  @objc  func longPressed(sender: UILongPressGestureRecognizer)
    {
        print("longpressed")
    }

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return self;
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
