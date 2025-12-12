// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "OspedrobilroCapacitorManifestPlaceholder",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OspedrobilroCapacitorManifestPlaceholder",
            targets: ["ManifestPlaceholderCapPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ManifestPlaceholderCapPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ManifestPlaceholderCapPlugin"),
        .testTarget(
            name: "ManifestPlaceholderCapPluginTests",
            dependencies: ["ManifestPlaceholderCapPlugin"],
            path: "ios/Tests/ManifestPlaceholderCapPluginTests")
    ]
)
