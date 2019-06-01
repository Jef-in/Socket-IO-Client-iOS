Library Socket.IO link https://github.com/socketio/socket.io-client-swift

Must be set to be manual. If you want to use the pod, use_frameworks! Which is only used for Swift projects

Carthage

Add this line to your Cartfile:

github "socketio/socket.io-client-swift" ~> 15.1.0
Run carthage update --platform ios,macosx.

Add the Starscream and SocketIO frameworks to your projects and follow the usual Carthage process.

CocoaPods 1.0.0 or later

Create Podfile and add pod 'Socket.IO-Client-Swift':

use_frameworks!
target 'YourApp' do
    pod 'Socket.IO-Client-Swift', '~> 15.1.0'
end

Install pods:

$ pod install

Import the module:

Swift:

import SocketIO

Objective-C:

@import SocketIO;

Swift Package Manager

Add the project as a dependency to your Package.swift:

// swift-tools-version:4.2
import PackageDescription
let package = Package(
    name: "socket.io-test",
    products: [
        .executable(name: "socket.io-test", targets: ["YourTargetName"])
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMinor(from: "15.0.0"))
    ],
    targets: [
        .target(name: "YourTargetName", dependencies: ["SocketIO"], path: "./Path/To/Your/Sources")
    ]
)
