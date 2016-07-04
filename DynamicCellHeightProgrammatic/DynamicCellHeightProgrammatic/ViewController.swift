//
//  ViewController.swift
//  DynamicCellHeightProgrammatic
//
//  Created by Satinder Singh on 7/3/16.
//  Copyright © 2016 Satinder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let bookCellReuseIdentifier = "BookTableViewCellIdentifier"
    private let bookList = BookDataSource.bookList()
    private let tableview = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Books"
        configureTableView()
    }
    
    func configureTableView() {
        tableview.dataSource = self
        tableview.estimatedRowHeight = 100
        tableview.rowHeight = UITableViewAutomaticDimension
        tableview.registerClass(BookTableViewCell.self, forCellReuseIdentifier: bookCellReuseIdentifier)
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        tableview.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        tableview.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        tableview.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
    }

}

extension ViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCellWithIdentifier(bookCellReuseIdentifier, forIndexPath: indexPath) as! BookTableViewCell
        let book = bookList[indexPath.row]
        cell.nameLabel.text = book.name
        cell.detailLabel.text = book.details
        return cell
    }
    
    
}

