// swift-tools-version:5.8
import PackageDescription
 
let package = Package(
   name: "RSEssentials",
   platforms: [.iOS("13.2")],
   products: [
       .library(
           name: "RSEssentials",
           targets: ["RSEssentialsTarget"]
       ),
   ],
   targets: [
       .target(
            name: "RSEssentialsTarget",
            dependencies: ["RSEssentials", "RSEssentialsDesignables"],
            path: "Wrapper"),
		.target(
			name: "RSEssentialsDesignables",
			dependencies: ["RSEssentials"],
			path: "Files"),
       .binaryTarget(
           name: "RSEssentials",
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "49bd8cae35a6c65ce172739f381ed0bcd19f0461f098a11ebb2e811c266eef21")
   ]
)
