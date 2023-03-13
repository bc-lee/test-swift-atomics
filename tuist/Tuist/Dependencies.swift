import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(
                url: "https://github.com/apple/swift-atomics",
                requirement: .exact("1.0.3")
            )
        ],
        productTypes: [
            "Atomics": .staticLibrary,
            "_AtomicsShims": .staticLibrary,
        ],
        targetSettings: [
            "_AtomicsShims": [
                "DEFINES_MODULE": true
            ]
        ]
    ),
    platforms: [.iOS]
)
