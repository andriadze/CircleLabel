//
//  CircularImageView.swift
//  CircularText
//
//  Created by Gio Andriadze on 9/27/17.
//  Copyright © 2017 Casatrade Ltd. All rights reserved.
//

import UIKit

@IBDesignable
public class CircleLabel : UIImageView
{
    public static let DEFAULT_COLOR_SCHEME:[UInt32] = [
        0xfff16364,
        0xfff58559,
        0xfff9a43e,
        0xffe4c62e,
        0xff67bf74,
        0xff59a2be,
        0xff2093cd,
        0xffad62a7,
        0xff805781
    ]
    
    public var COLOR_SCHEME:[UInt32] = CircleLabel.DEFAULT_COLOR_SCHEME{
        didSet{
            setCircleAndText();
        }
    }
    
    @IBInspectable public var textColor:UIColor = UIColor.white{
        didSet{
            setCircleAndText()
        }
    }
    
    @IBInspectable public var text:String = "" {
        didSet{
            setCircleAndText()
        }
    }
    @IBInspectable public var colorFromText:String = ""{
        didSet{
            setCircleAndText()
        }
    }
    @IBInspectable public var padding:Float = 0.3{
        didSet{
            setCircleAndText()
        }
    }
    
    @IBInspectable public var useTextColor:Bool = true{
        didSet{
            setCircleAndText()
        }
    }
    
    @IBInspectable public var circleColor:UIColor = UIColor.gray{
        didSet{
            if(!useTextColor){
                setCircleAndText()
            }
        }
    }
    
    @IBInspectable public var amountLines:Int = 1{
        didSet{
            setCircleAndText()
        }
    }
    
    
    override public init(frame:CGRect)
    {
        super.init(frame: frame)
        
        setCircleAndText();
    }
    
    public init(frame:CGRect, text:String, colorText:String)
    {
        
        super.init(frame: frame)
        self.text = text;
        self.colorFromText = colorText;
        
        setCircleAndText();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setCircleAndText();

    }
    
    private func setCircleAndText() {
        self.contentMode = .scaleAspectFit
        
        let color = (useTextColor ? randomColorFrom(text: colorFromText) : circleColor)
        
        self.image = circle(diameter: self.frame.size.height, color: color)
        self.superview?.layoutIfNeeded()
       
    }
    
    
    private func circle(diameter: CGFloat, color: UIColor) -> UIImage? {
        //temp view to position label
        if(padding < 0.3)
        {
            padding = 0.3
        }
        
        
        let tempView = UIView(frame: CGRect(x: 0, y: 0, width:diameter, height:diameter));
        //main label
        let label = UILabel(frame: CGRect(x:0, y: 0, width:diameter/(CGFloat)(1 + padding), height:diameter/(CGFloat)(1 + padding)))
        label.backgroundColor = UIColor.clear
        label.textColor = self.textColor
        label.numberOfLines = amountLines;
        label.adjustsFontSizeToFitWidth = true;
        label.minimumScaleFactor = 0.01
        label.text = text
        label.textAlignment = .center
        label.baselineAdjustment = .alignCenters;
        label.font = label.font.withSize(diameter)
        label.center = tempView.center
        
        
        tempView.addSubview(label)
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: diameter, height: diameter), false, 0)
        guard let ctx = UIGraphicsGetCurrentContext() else { return nil }
        ctx.saveGState()
        //Draw the circle
        
        let rect = CGRect(x: 0, y: 0, width: diameter, height: diameter)
        ctx.setFillColor(color.cgColor)
        ctx.fillEllipse(in: rect)
        ctx.restoreGState()
        //render view with label
        tempView.layer.render(in:ctx)
        
        let img = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return img
    }
    
    private func randomColorFrom(text: String) -> UIColor
    {
        let rgb:UInt32 = COLOR_SCHEME[abs(text.hashValue) % CircleLabel.DEFAULT_COLOR_SCHEME.count]
        let red:CGFloat = CGFloat((rgb & 0xFF0000) >> 16)/255.0;
        let green = CGFloat((rgb & 0xFF00) >>  8)/255.0;
        let blue = CGFloat((rgb & 0xFF))/255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
    override public func prepareForInterfaceBuilder()
    {
        setCircleAndText();
    }
    
    
    
    
    
}
