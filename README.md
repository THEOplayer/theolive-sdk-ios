# THEOliveSDK

## Add dependency using SPM

Add a `dependencies` clause to your `Package` and `targets` in the `Package.swift` manifest

```swift
// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(
      url: "https://github.com/THEOplayer/theolive-sdk-ios", 
      .upToNextMinor(from: "3.17.2") // or `.upToNextMajor
    )
  ],
  targets: [
    .target(
      name: "MyTarget",
      dependencies: [
        .product(name: "THEOliveSDK", package: "theolive-sdk-ios")
      ]
    )
  ]
)
```

## Add dependency using CocoaPods

- Create a Podfile if you don't already have one. From the root of your project directory, run the following command: `pod init`
- Add `THEOliveSDK` as a dependency in your Podfile: `pod 'THEOliveSDK'`
- Install the pods using `pod install` , then open your `.xcworkspace` file to see the project in Xcode.
