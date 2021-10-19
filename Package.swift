// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireXMLRPC",
    platforms: [.macOS(.v10_12),
                .iOS(.v10),
                .tvOS(.v10),
                .watchOS(.v3)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AlamofireXMLRPC",
            targets: ["AlamofireXMLRPC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/mfMeds/AEXML", .upToNextMajor(from: "4.6.2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AlamofireXMLRPC",
            dependencies: ["Alamofire", "AEXML"]),
        .testTarget(
            name: "AlamofireXMLRPCTests",
            dependencies: ["AlamofireXMLRPC"]),
    ]
)

