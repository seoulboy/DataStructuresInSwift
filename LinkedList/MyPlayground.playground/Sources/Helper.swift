public func example (of description: String, action: () -> ()) {
    print("-----example of \(description)-----")
    action()
    print()
}
