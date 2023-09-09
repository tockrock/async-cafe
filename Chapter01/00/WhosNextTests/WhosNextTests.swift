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
    let result = await vendor.entry(for: 5)
    XCTAssertEqual(result, entry3)
  }
  
  func testErrorEntryCreation() async {
    let result = await vendor.entry(for: 5)
    XCTAssertEqual(result, errorEntry())
  }
  
  func testImageNameCreatesEntry() async throws {
    let result = try await vendor.imageName(for: 5)
    XCTAssertEqual(result, entry3.imageName)
  }
}
