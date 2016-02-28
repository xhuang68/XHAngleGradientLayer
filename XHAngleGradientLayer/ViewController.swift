//
//  ViewController.swift
//  XHAngleGradientLayer
//
//  Created by Henry Huang on 2/26/16.
//  Copyright © 2016 XiaoHuang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 61.0/255.0, green: 66.0/255.0, blue: 78.0/255.0, alpha: 1.0)
        
        let green = UIColor(red: 52.0/255.0, green: 168.0/255.0, blue: 83.0/255.0, alpha: 1.0)
        let blue = UIColor(red: 66.0/255.0, green: 133.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        let yellow = UIColor(red: 251.0/255.0, green: 188.0/255.0, blue: 5.0/255.0, alpha: 1.0)
        let red = UIColor(red: 234.0/255.0, green: 67.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        let colors: [UIColor] = [green, blue, yellow, red, green]
        let locations: [Double] = [0.0, 0.3 ,0.55, 0.8, 1.0]
        let frame = CGRectMake(50, (view.frame.size.height - (view.frame.size.width - 100))/2, view.frame.size.width - 100, view.frame.size.width - 100)

        let shadowView = UIView(frame: frame)
        shadowView.layer.shadowColor = UIColor.blackColor().CGColor
        shadowView.layer.shadowOffset = CGSizeZero
        shadowView.layer.shadowRadius = 10.0
        shadowView.layer.shadowOpacity = 0.8
        
        let subview = XHAngleGradientView(frame: shadowView.bounds, withColors: colors, withLocations: locations, shape: .Oval)
        subview.clipsToBounds = true
        
        shadowView.addSubview(subview)
        view.addSubview(shadowView)
        
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let radius = (view.frame.width - 20 * 3)/4
        let gapX = CGFloat(20.0)
        let gapY = CGFloat(22.5 + 0.0675 * view.frame.size.width)
        
        var colors = [UIColor.cyanColor(), UIColor.redColor()]
        var locations:[Double] = []
        let frame0 = CGRectMake(gapX, gapY, radius * 2, radius * 2)
        let subview0 = XHAngleGradientView.init(frame: frame0, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Oval)
        view.addSubview(subview0)
        let frame1 = CGRectMake(2 * gapX + 2 * radius, gapY, radius * 2, radius * 2)
        let subview1 = XHAngleGradientView.init(frame: frame1, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Rect)
        view.addSubview(subview1)
        
        var c1 = UIColor.whiteColor()
        var c2 = UIColor.darkGrayColor()
        colors = [c1, c2, c1, c2, c1, c2, c1]
        locations = [0.0, 0.16, 0.32, 0.48, 0.64, 0.80, 0.96]
        let frame2 = CGRectMake(gapX, 2 * gapY + 2 * radius, radius * 2, radius * 2)
        let subview2 = XHAngleGradientView.init(frame: frame2, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Oval)
        view.addSubview(subview2)
        colors = [UIColor.cyanColor()]
        locations = []
        let frame3 = CGRectMake(2 * gapX + 2 * radius, 2 * gapY + 2 * radius, radius * 2, radius * 2)
        let subview3 = XHAngleGradientView.init(frame: frame3, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Oval)
        view.addSubview(subview3)
        
        
        c1 = UIColor(red: 156.0/255.0, green: 35.0/255.0, blue: 100.0/255.0, alpha: 1.0)
        c2 = UIColor(red: 250.0/255.0, green: 175.0/255.0, blue: 76.0/255.0, alpha: 1.0)
        colors = [c1, c1, c2, c2, c1, c1, c2, c2, c1, c1, c2, c2, c1, c1, c2, c2, c1, c1, c2, c2]
        locations = [0.0, 0.1, 0.1, 0.2, 0.2, 0.3, 0.3, 0.4, 0.4, 0.5, 0.5, 0.6, 0.6, 0.7, 0.7, 0.8, 0.8, 0.9, 0.9, 1.0]
        let frame4 = CGRectMake(gapX, 3 * gapY + 4 * radius, radius * 2, radius * 2)
        let subview4 = XHAngleGradientView.init(frame: frame4, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Oval)
        view.addSubview(subview4)
        
        c1 = UIColor.yellowColor()
        c2 = UIColor.redColor()
        let c3 = UIColor.purpleColor()
        let c4 = UIColor.blueColor()
        let c5 = UIColor.cyanColor()
        let c6 = UIColor.greenColor()
        colors = [c1, c1, c2, c2, c3, c3, c4, c4, c5, c5, c6, c6]
        locations = [0.0, 0.16, 0.16, 0.32, 0.32, 0.5, 0.5, 0.66, 0.66, 0.82, 0.82, 0.98]
        let frame5 = CGRectMake(2 * gapX + 2 * radius, 3 * gapY + 4 * radius, radius * 2, radius * 2)
        let subview5 = XHAngleGradientView.init(frame: frame5, withColors: colors, withLocations: locations, shape: XHAngleGradientView.Shape.Oval)
        view.addSubview(subview5)
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

