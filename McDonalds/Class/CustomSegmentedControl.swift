//
//  CustomSegmentedControl.swift
//  McDonalds
//
//  Created by Дарья on 20.11.2020.
//

import UIKit

class CustomSegmentedControl: UIControl {
    
    var labels = [UILabel] ()
    var thumbView = UIView()
    
    var items: [String] = ["Вход", "Регистрация"] {
        didSet {
            setupLabels()
        }
    }
    
    var selectedIndex: Int = 0 {
        didSet{
            displayNewSelectedIndex()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        layer.cornerRadius = 15
        layer.borderColor = UIColor.yellowColor().cgColor
        layer.borderWidth = 2
        backgroundColor = .clear
        
        setupLabels()
        
        insertSubview(thumbView, at: 0)
    }
    
    
    func setupLabels() {
        for label in labels {
            label.removeFromSuperview()
        }
        
        labels.removeAll(keepingCapacity: true)
        
        for index in 1...items.count {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            label.text = items[index - 1]
            label.textAlignment = .center
            label.textColor = .darkRedColor()
            label.font = UIFont.kohinoor13()
            self.addSubview(label)
            labels.append(label)
        }
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var selectFrame = self.bounds
        let newWidth = selectFrame.width / CGFloat(items.count)
        selectFrame.size.width = newWidth
        thumbView.frame = selectFrame
        thumbView.backgroundColor = .yellowColor()
        thumbView.layer.cornerRadius = thumbView.frame.height / 2
        
        let labelHeight = self.bounds.height
        let labelWidth = self.bounds.width / CGFloat(labels.count)
        
        for index in 0...labels.count - 1 {
            let label = labels[index]
            let xPosition = CGFloat(index) * labelWidth
            label.frame = CGRect(x: xPosition, y: 0, width: labelWidth, height: labelHeight)
            if index == 1 {
                label.textColor = .yellowColor()
            }
        }
    }
    
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let location = touch.location(in: self)
        
        var calculatedIndex: Int?
        for (index, item) in labels.enumerated() {
            if item.frame.contains(location) {
                calculatedIndex = index
            }
            
            if index != calculatedIndex {
                item.textColor = .yellowColor()
            } else if index == calculatedIndex {
                item.textColor = .darkRedColor()
            }
        }
        
        UIView.animate(withDuration: 0.4) {
            if calculatedIndex != nil {
                self.selectedIndex = calculatedIndex!
                self.sendActions(for: .valueChanged)
            }
        }
        return false
    }
    
    
    func displayNewSelectedIndex() {
        let label = labels[selectedIndex]
        self.thumbView.frame = label.frame
    }
}
