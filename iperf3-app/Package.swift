import PackageDescription

let package = Package(
    name: "iperfSwift",
    products: [
        .library(
            name: "iperfSwift",
            targets: ["Ciperf", "iperfSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Ciperf",
            dependencies: [],
            path: "Sources/Ciperf"
        ),
        .target(
            name: "iperfSwift",
            dependencies: ["Ciperf"],
            path: "Sources/iperfSwift"
        ),
    ]
)
