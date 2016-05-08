//
//  ViewController.swift
//  xib_cell_training_2
//
//  Created by Takahiro Noguchi on 2016/05/09.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        tableView.registerNib(UINib(nibName: "TVSCustomCell", bundle: nil), forCellReuseIdentifier: "maimai")
        tableView.registerNib(UINib(nibName: "TVSCustomCell2", bundle: nil), forCellReuseIdentifier: "daisuke")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier: String = indexPath.row % 2 == 0 ? "maimai" : "daisuke"
        let cell: TVSCustomCell? = tableView.dequeueReusableCellWithIdentifier(identifier) as? TVSCustomCell
        cell!.bodyLabel.text = "\(indexPath.row)"
        
        return cell!
    }

}

