import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(
            url: "https://github.com/apple/swift-atomics",
            requirement: .exact("1.0.3")
        )
    ],
    platforms: [.iOS]
)
