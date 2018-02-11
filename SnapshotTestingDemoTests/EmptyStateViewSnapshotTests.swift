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
        self.recordMode = true
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
}
