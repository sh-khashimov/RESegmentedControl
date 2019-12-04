import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RESegmentedControlTests.allTests),
    ]
}
#endif
