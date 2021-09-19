// swift-tools-version:5.5
import PackageDescription
 
let package = Package(
   name: "RSEssentials",
   platforms: [.iOS(.v10)],
   products: [
       .library(
           name: "RSEssentials",
           targets: ["RSEssentialsTarget"])
   ],
   dependencies: [
        .package(name: "PKHUD", url: "https://github.com/pkluz/PKHUD", .upToNextMajor(from: "5.4.0")),
        .package(name: "DeviceKit", url: "https://github.com/devicekit/DeviceKit", .upToNextMajor(from: "4.5.0"))
   ],
   targets: [
       .target(
            name: "RSEssentialsTarget",
            dependencies: [
                .target(name: "RSEssentialsWrapper", condition: .when(platforms: [.iOS, .macCatalyst]))
            ],
            path: "RSEssentialsWrap")
       .target(
            name: "RSEssentialsWrapper",
            dependencies: [
                .byName(name: "PKHUD", condition: .when(platforms: [.iOS, .macCatalyst])),
                .byName(name: "DeviceKit", condition: .when(platforms: [.iOS, .macCatalyst]))
            ],
            path: "RSEssentialsWrapper")
		.target(
			name: "RSEssentialsDesignables",
			dependencies: [
                .byName(name: "RSEssentials", condition: .when(platforms: [.iOS, .macCatalyst])),
                .byName(name: "PKHUD", condition: .when(platforms: [.iOS, .macCatalyst])),
                .byName(name: "DeviceKit", condition: .when(platforms: [.iOS, .macCatalyst]))
            ],
			path: "Files")
       .binaryTarget(
           name: "RSEssentials",
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "6a790980e0653f88e9a0b495755812024275a3e2675c2a4bf2b16d8e7e149c1f")
   ],
   swiftLanguageVersions: [.v5]
)
