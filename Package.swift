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
            url: "https://github.com/Conviva/ConvivaBrightcove/raw/4.0.26/Framework/ConvivaBrightcove/ConvivaBrightcove.xcframework.zip",
            checksum: "d825ab850ba4d7cf7f2978b927f1a8a453aac4eec220a803659ce82f7095c3df"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.38/Framework/ConvivaSDK.xcframework.zip",
            checksum: "50d04bef78f28e94bc20d47bd3f0010defb7fd915855f89eadebb307faf140e7"),

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
