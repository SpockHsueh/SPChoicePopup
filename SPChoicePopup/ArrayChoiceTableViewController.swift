//
//  ArrayChoiceTableViewController.swift
//  ChoicePopup
//
//  Created by Spoke on 2019/2/17.
//  Copyright © 2019年 Spoke. All rights reserved.
//

import Foundation
import UIKit

class ArrayChoiceTableViewController: UITableViewController {
    
    typealias SelectionHandler = (String) -> Void
    
    private let values: [String]
    private let onSelect: SelectionHandler?
    private let height: CGFloat
    
    init(_ values: [String], _ height: CGFloat, onSelect: SelectionHandler?) {
        self.values = values
        self.onSelect = onSelect
        self.height = height
        super.init(style: .plain)
        self.tableView.tableFooterView = UIView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = (values[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true)
        onSelect?(values[indexPath.row])
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return height / CGFloat(values.count)
    }
    
}

