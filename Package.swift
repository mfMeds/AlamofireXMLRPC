// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireXMLRPC",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AlamofireXMLRPC",
            targets: ["AlamofireXMLRPC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.2.2"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AlamofireXMLRPC",
            dependencies: []),
        .testTarget(
            name: "AlamofireXMLRPCTests",
            dependencies: ["AlamofireXMLRPC"]),
    ]
)

