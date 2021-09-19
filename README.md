# RSEssentialsXC

⚠️ RSEssentials is meant to be used internally, there will be no support for any breaking changes between releases ⚠️

### Full documentation for internal usage available [here](https://github.com/rursache/RSEssentials/blob/master/README.md)

## Installation
- Swift Package Manager (SPM) - `https://github.com/rursache/RSEssentialsXC`

**Note**: Versions up to v1.1.3 supports Xcode 12.x, however you need Xcode 13 for v1.1.4 and newer 
**Note 2**: There is no Mac Catalyst slice on RSEssentialsXC, if you need Mac Catalyst support ask for access to RSEssentials

## Setup
- In your `Info.plist` add the key `NSCameraUsageDescription` with value `We are using the camera to scan QR codes` (or anything you see fit)
- In your `Info.plist` add the key `ITSAppUsesNonExemptEncryption` with value `NO`

## License
RSEssentialsXC is available under the **MPL-2.0 license**. See the [LICENSE](https://github.com/rursache/RSEssentialsXC/blob/master/LICENSE) file for more info.
