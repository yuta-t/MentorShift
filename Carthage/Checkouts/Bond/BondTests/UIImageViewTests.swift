//
//  UIImageViewTests.swift
//  Bond
//
//  Created by Anthony Egerton on 11/03/2015.
//  Copyright (c) 2015 Bond. All rights reserved.
//

import UIKit
import XCTest
import Bond

class UIImageViewTests: XCTestCase {

  func testUIImageViewBond() {
    let image = UIImage()
    let observable = Observable<UIImage?>(nil)
    let imageView = UIImageView()
    
    imageView.image = image
    XCTAssert(imageView.image == image, "Initial value")
    
    observable.bindTo(imageView.bnd_image)
    XCTAssert(imageView.image == nil, "Value after binding")
    
    imageView.image = image
    XCTAssert(imageView.image == image, "Value after observable change")
  }
}
