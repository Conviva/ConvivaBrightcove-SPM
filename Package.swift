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
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.10/Framework/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "ab6bd0c0465cd59cbb2c727b54ceb6ba363aefd8cc209af35e2221c9a28140ce"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.18/Framework/ConvivaSDK.xcframework.zip",
            checksum: "b8bd913a1ecd5d2592273045e938ea06cdfa55e4471d328c42e02330ecb48cfd"),

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
