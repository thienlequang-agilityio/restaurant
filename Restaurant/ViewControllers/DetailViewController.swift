//
//  DetailViewController.swift
//  Restaurant
//
//  Created by thienle on 6/26/15.
//  Copyright (c) 2015 thienle. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet var tableview:UITableView!
    
    var restaurant:Restaurant!
    
    var restaurantImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.restaurantImageView.image = UIImage(named: restaurant.image)
        self.tableview.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 0.8)
        self.tableview.tableFooterView = UIView(frame: CGRectZero)
        title = self.restaurant.name
        tableview.estimatedRowHeight = 36.0
        tableview.rowHeight = UITableViewAutomaticDimension
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnSwipe = false
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showReview" {
            
            let destinationController = segue.destinationViewController as! ReviewViewController
                destinationController.restaurant = self.restaurant
        }
        
        if segue.identifier == "showShare" {
            let destinationController = segue.destinationViewController as! ShareViewController
            destinationController.restaurant = self.restaurant
        }
    }
    
    
    @IBAction func close(seque:UIStoryboardSegue) {
        
    }
    
    // UITABLEVIEW DATASOURCE
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DetailTableViewCell
        cell.backgroundColor = UIColor.clearColor()
        cell.mapButton.hidden = true
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
            cell.mapButton.hidden = false
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
            
        }
        
        return cell
    }
}
