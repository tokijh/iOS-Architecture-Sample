//
//  BaseViewController.swift
//  MVC-Code
//
//  Created by giftbot on 2017. 10. 4..
//  Copyright © 2017년 giftbot. All rights reserved.
//

import UIKit

protocol ViewBindable: class {
  associatedtype View: UIView
  var v: View! { get set }
}

extension ViewBindable where Self: BaseViewController, View: BaseView<BaseViewController> {
  func bindView(withViewController viewController: BaseViewController) {
    v = View(controlBy: viewController)
    view = v
  }
}

class BaseViewController: UIViewController {
  // Impl. if needed
  
  override func didReceiveMemoryWarning() {
    print("\(self) did Receive Memory Warning")
  }
  
  deinit {
    print("\(self) has deinitialized")
  }
}
