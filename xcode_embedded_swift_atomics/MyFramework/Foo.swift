import Atomics
import Foundation

public class Foo {
    private var enabled = ManagedAtomic<Bool>(false)

    public init() {
    }

    public func foo() -> String {
        var currentValue = enabled.load(ordering: .sequentiallyConsistent)
        var exchanged = false
        while true {
            (exchanged, currentValue) = enabled.weakCompareExchange(
                expected: currentValue,
                desired: !currentValue,
                successOrdering: .sequentiallyConsistent,
                failureOrdering: .sequentiallyConsistent
            )
            if exchanged {
                break
            }
        }

        return "Hello, World, enabled: " + String.init(describing: currentValue)
    }
}
