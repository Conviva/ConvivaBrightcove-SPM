// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaBrightcove",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaBrightcove",
            targets: ["ConvivaBrightcoveTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaBrightcove",
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.21/Framework/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "0aa6e9ef270ce7a6b0aba05242668afa96c127e8625b0f55eb6c359de6c51fb5"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.33/Framework/ConvivaSDK.xcframework.zip",
            checksum: "45f40a974c5bcfdcbb09d0dc9dece7d9d062488eda8a5ca2aa0fcb1de105b260"),

        .target(
              name: "ConvivaBrightcoveTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaBrightcove")
              ],
              path: "PlatformExcludes"
            )
     ]
)
