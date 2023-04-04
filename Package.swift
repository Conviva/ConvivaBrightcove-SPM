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
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.25/Framework/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "6e0f7ccf338d45fb1b602302fa104622e835c0cbccd776a97b7091579532f3f6"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.37/Framework/ConvivaSDK.xcframework.zip",
            checksum: "4f750e8963229a76e63bc7226edb3c598f7607e0d3c92bc9f73e153c0bc480c4"),

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
