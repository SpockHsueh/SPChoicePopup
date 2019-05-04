//
//  AlwaysShowPopup.swift
//  ChoicePopup
//
//  Created by Spoke on 2019/2/17.
//  Copyright © 2019年 Spoke. All rights reserved.
//

import Foundation
import UIKit

class AlwaysPresentAsPopover: NSObject, UIPopoverPresentationControllerDelegate {
    
    // because the delegate property is weak - the delegate instance needs to be retained
    
    private static let sharedInstance = AlwaysPresentAsPopover()
    
    private override init() {
        super.init()
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    static func configurePresentation(forController controller : UIViewController) -> UIPopoverPresentationController {
        
        // 以 popover 的效果呈現
        controller.modalPresentationStyle = .popover
        
        
        let presentationController = controller.presentationController as! UIPopoverPresentationController
        
        presentationController.delegate = AlwaysPresentAsPopover.sharedInstance
        
        return presentationController
    }
}
