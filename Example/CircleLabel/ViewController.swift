//
//  ViewController.swift
//  CircularText
//
//  Created by Gio Andriadze on 9/27/17.
//  Copyright © 2017 Casatrade Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customColorScheme: CircleLabel!
    @IBOutlet weak var circleFromSb: CircleLabel!
    var circle:CircleLabel?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customColorScheme.COLOR_SCHEME = [
            0xffe57373,
            0xfff06292,
            0xffba68c8,
            0xff9575cd,
            0xff7986cb,
            0xff64b5f6,
            0xff4fc3f7,
            0xff4dd0e1,
            0xff4db6ac,
            0xff81c784,
            0xffaed581,
            0xffff8a65,
            0xffd4e157,
            0xffffd54f,
            0xffffb74d,
            0xffa1887f,
            0xff90a4ae
        ]
        
        circle = CircleLabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        circle!.text = "From Code"
        
        circle!.colorFromText = "GUARAM"
        
        //Use custom color scheme
        //circle!.COLOR_SCHEME = [ 0xffe57373, 0xfff06292 ...]
        
        //Generate color based on text or user defined parameter
        circle!.useTextColor = true;
        
        //If useTextColor == false - this value will be used for circle color
        //circle!.circleColor = UIColor.blue
        
        //Change text color
        circle!.textColor = UIColor.white
        
        //Padding of inner text
        circle!.padding = 0.3
        
        //Amount of lines
        circle!.amountLines = 1
        
        self.view.addSubview(circle!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        circle?.colorFromText = "gmertmani"
        circle?.text = "JUM"
        
        self.circleFromSb.colorFromText = "Some new Text"
        self.circleFromSb.text = "SNT"
    }
    
}

