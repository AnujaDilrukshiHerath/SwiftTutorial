//
//  ViewController.swift
//  Color
//
//  Created by Anuja Dilrukshi on 2023-02-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewerSlide: UIView!
    @IBOutlet weak var uiRedSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var red:Float = 0.0
    var green:Float = 0.0
    var blue :Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        red=uiRedSlider.value
        green=greenSlider.value
        blue=blueSlider.value
        updateColor()
    }
    
    @IBAction func uiChangeRed(_ sender: UISlider) {
        red = sender.value
        updateColor()
    }
    
   
    @IBAction func uiChangeGreen(_ sender: UISlider) {
        green = sender.value
        updateColor()
    }
    
    @IBAction func uiChangeBlue(_ sender: UISlider) {
        blue = sender.value
        updateColor()
    }
    
    
    
    func updateColor() {
        let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
        
        viewerSlide.backgroundColor=color
        
    }
}

