//
//  ViewController.swift
//  Tables Made Easy
//
//  Created by Shikhar Vats on 7/8/15.
//  Copyright (c) 2015 IceAuror. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func slider(sender: AnyObject) {
    
        table.reloadData()
        
    }
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 20
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let number = Int(sliderValue.value)
        
        let multiple = indexPath.row + 1
        
        cell.textLabel?.text = " \(number) X \(multiple) = \(number * multiple) "
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

