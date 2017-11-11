//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Hayden Haddock on 11/11/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var conversions: [Converter] = []
    var currentConverter:Converter = Converter(label:"", inputUnit:"", outputUnit:"")
    
    @IBAction func convertPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: conversions[0].label, style:UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.setCurrentConverter(converter: self.conversions[0])
        }))
        alert.addAction(UIAlertAction(title: conversions[1].label, style:UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.setCurrentConverter(converter: self.conversions[1])
        }))
        alert.addAction(UIAlertAction(title: conversions[2].label, style:UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.setCurrentConverter(converter: self.conversions[2])
        }))
        alert.addAction(UIAlertAction(title: conversions[3].label, style:UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.setCurrentConverter(converter: self.conversions[3])
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func setCurrentConverter(converter:Converter) {
        currentConverter = converter
        
        inputDisplay.text = currentConverter.inputUnit
        outputDisplay.text = currentConverter.outputUnit
        
        print(currentConverter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conversions = [Converter(label:"farenheit to celcius", inputUnit:"°F", outputUnit:"°C"),
                           Converter(label:"celcius to farenheit", inputUnit:"°C", outputUnit:"°F"),
                           Converter(label:"miles to kilometers", inputUnit:"mi", outputUnit:"km"),
                           Converter(label:"kilometers to miles", inputUnit:"km", outputUnit:"mi")]
        
        setCurrentConverter(converter: conversions[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
