//
//  WhosNextTests.swift
//  WhosNextTests
//
//  Created by Takeshi Suzuki on 2023/09/09.
//

import XCTest
@testable import WhosNext

final class WhosNextTests: XCTestCase {
  let vendor = AsyncEntryVendor()
  let entry3 = Entry(imageName: "3.circle")
  
  func testEntryCreation() async {
    let result = await vendor.entry(for: 3)
    XCTAssertEqual(result, entry3)
  }
}
