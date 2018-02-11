//
//  EmptyStateViewSnapshotTests.swift
//  SnapshotTestingDemoTests
//
//  Created by MAXIM TSVETKOV on 11/02/2018.
//  Copyright © 2018 MAXIM TSVETKOV. All rights reserved.
//

import FBSnapshotTestCase

@testable import SnapshotTestingDemo

class EmptyStateViewSnapshotTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        self.recordMode = true
        self.isDeviceAgnostic = true
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyStateViewConformsToOriginalState() {
        let emptyView = EmptyStateView.instanceFromNib()
        
        FBSnapshotVerifyView(emptyView)
        FBSnapshotVerifyLayer(emptyView.layer)
    }
    
    func testEmptyViewWithShortText() {
        let emptyView = EmptyStateView.instanceFromNib()
        
        emptyView.labelText?.text = "No Drinks :("
        
        FBSnapshotVerifyView(emptyView)
        FBSnapshotVerifyLayer(emptyView.layer)
    }
    
    func testEmptyViewWithLongText() {
        let emptyView = EmptyStateView.instanceFromNib()
        
        emptyView.labelText?.text = "Unfortunately you have no drinks in your fridge. Please go tho the market to buy some drinks."
        
        FBSnapshotVerifyView(emptyView)
        FBSnapshotVerifyLayer(emptyView.layer)
    }
    
    func testEmptyStateViewConformsToOriginalStateWith1PercentTolerancy() {
        let emptyView = EmptyStateView.instanceFromNib()
        
        FBSnapshotVerifyView(emptyView, tolerance: 0.01)
        FBSnapshotVerifyLayer(emptyView.layer, tolerance: 0.01)
    }
    
    func testEmptyStateViewConformsToOriginalStateWith50PercentTolerancy() {
        let emptyView = EmptyStateView.instanceFromNib()
        
        FBSnapshotVerifyView(emptyView, tolerance: 0.5)
        FBSnapshotVerifyLayer(emptyView.layer, tolerance: 0.5)
    }
}
