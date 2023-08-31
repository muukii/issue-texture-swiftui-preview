// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "TexturePreview",
  platforms: [.iOS(.v14)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "TexturePreview",
      targets: ["TexturePreview"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/FluidGroup/TextureSwiftSupport.git", branch: "main"),
    .package(url: "https://github.com/FluidGroup/TextureBridging.git", branch: "main"),
    .package(url: "https://github.com/FluidGroup/swiftui-support.git", branch: "main"),
  ],
  targets: [
    .target(
      name: "TexturePreview",
      dependencies: ["TextureSwiftSupport", "TextureBridging", .product(name: "SwiftUISupport", package: "swiftui-support")],
      linkerSettings: [.unsafeFlags(["-ObjC", "-all_load"])]
    ),
    .testTarget(
      name: "TexturePreviewTests",
      dependencies: ["TexturePreview"]
    ),
  ]
)
