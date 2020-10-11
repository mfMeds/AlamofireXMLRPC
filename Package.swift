// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireXMLRPC",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.2.2"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.6.0")
    ]
)

