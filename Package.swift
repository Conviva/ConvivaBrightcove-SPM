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
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.9/Framework/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "acfe6933863e97dbedaf70bf805483e2837cf90583c1fc2d7b3e6bd2186a2a94"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.17/Framework/ConvivaSDK.xcframework.zip",
            checksum: "e374b6d356c9984c9b032affccd0b4550decd87f6fa6df6742c0787fa72a2a86"),

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
