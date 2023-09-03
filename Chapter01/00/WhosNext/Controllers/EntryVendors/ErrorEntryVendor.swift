struct ErrorEntryVendor  {
  func entry(for count: Int) -> Entry {
    let imageName = imageName(for: count)
    return Entry(imageName: imageName)
  }
}

extension ErrorEntryVendor {
  private func imageName(for int: Int) throws -> String {
    let number = int % 51
    return "\(number).circle"
  }
}
