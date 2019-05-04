//
//  ArrayChoiceTableViewController.swift
//  ChoicePopup
//
//  Created by Spoke on 2019/2/17.
//  Copyright © 2019年 Spoke. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
open class ArrayChoiceTableViewController: UITableViewController {
    
    public typealias SelectionHandler = (String) -> Void
    
    private let values: [String]
    private let onSelect: SelectionHandler?
    private let height: CGFloat
    
    public init(_ values: [String], _ popOverHeight: CGFloat, popOverWidth: CGFloat, onSelect: SelectionHandler?) {
        self.values = values
        self.onSelect = onSelect
        self.height = popOverHeight
        super.init(style: .plain)
        self.tableView.tableFooterView = UIView()
        self.preferredContentSize = CGSize(width: popOverWidth, height: popOverHeight)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }
    
    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = (values[indexPath.row])
        return cell
    }
    
    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true)
        onSelect?(values[indexPath.row])
    }
    
    override open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return height / CGFloat(values.count)
    }
    
    open func setPopupView(sourceView: UIView) {
        
        let presentationController = AlwaysPresentAsPopover.configurePresentation(forController: self)
        
        // 利用 sourceView 指到某個特定的 view
        presentationController.sourceView = sourceView
        
        let conRecVar = sourceView.frame
        
        print(sourceView.frame)
        // 設定 sourceRect 控制箭頭指到的位置
        presentationController.sourceRect = CGRect(x: conRecVar.width / 4, y: conRecVar.origin.y / 2, width: conRecVar.width / 2, height: conRecVar.height / 2)
        
        // popup view 位於特定 view 的位置
        presentationController.permittedArrowDirections = [.init(rawValue: 0)]
    }
    
}
