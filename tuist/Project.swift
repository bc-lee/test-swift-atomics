import ProjectDescription

let deploymentTarget = DeploymentTarget.iOS(
    targetVersion: "12.0",
    devices: DeploymentDevice.iphone
)

let project = Project(
    name: "MyFramework",
    settings: .settings(),
    targets: [
        Target(
            name: "MyFramework",
            platform: .iOS,
            product: .framework,
            bundleId: "com.example.MyFramework",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: [
                "MyFramework/Foo.swift"
            ],
            dependencies: [
                .external(name: "Atomics")
            ]
        ),
        Target(
            name: "MyFrameworkTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.example.MyFrameworkTests",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: [
                "MyFrameworkTests/MyFrameworkTests.swift"
            ],
            dependencies: [
                .target(name: "MyFramework")
            ]
        ),
    ]
)
