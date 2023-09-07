struct ErrorEntryVendor  {
  func entry(for count: Int) -> Entry {
    let imageName = try imageName(for: count)
    return Entry(imageName: imageName)
  }
}

extension ErrorEntryVendor {
  private func imageName(for int: Int) throws -> String {
    if int.isMultiple(of: 5) {
      throw MultipleOfFiveError(number: int)
    }
    let number = int % 51
    return "\(number).circle"
  }
}
