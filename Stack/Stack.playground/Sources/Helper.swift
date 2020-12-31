public func example(of description: String, _ callback: () -> ()) {
    print("-----example of \(description) ------")
    callback()
    print()
}
