// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "example-spm-compile-error",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "example-spm-compile-error",
            type: .dynamic,
            targets: ["example-spm-compile-error"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gregcotten/swift-com.git", branch: "example-spm-compile-error"),
    ],
    targets: [
        .target(
            name: "example-spm-compile-error",
            dependencies: [.product(name: "SwiftCOM", package: "swift-com")]),
        .testTarget(
            name: "example-spm-compile-errorTests",
            dependencies: ["example-spm-compile-error"]),
    ]
)
