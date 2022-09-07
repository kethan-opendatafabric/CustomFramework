// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomFramework",
    platforms: [
          .iOS(.v11)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CustomFramework",
            targets: ["CustomFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/DeclarativeHub/Bond", from: "7.0.0"),
        .package(url: "https://github.com/marinofelipe/CurrencyText.git", from: "3.0.0"),
        .package(url: "https://github.com/alankarmisra/SwiftSignatureView.git", from: "3.0.0"),
        .package(url: "https://github.com/alexruperez/lottie-ios.git", from: "3.0.0"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit", from: "3.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                       name: "CustomFramework",
                       path: "./Sources/CustomFramework.xcframework")
    ]
)
