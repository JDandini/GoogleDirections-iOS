# GoogleDirections-iOS

[![CI Status](http://img.shields.io/travis/JDandini/GoogleDirections-iOS.svg?style=flat)](https://travis-ci.org/JDandini/GoogleDirections-iOS)
[![Version](https://img.shields.io/cocoapods/v/GoogleDirections-iOS.svg?style=flat)](http://cocoapods.org/pods/GoogleDirections-iOS)
[![License](https://img.shields.io/cocoapods/l/GoogleDirections-iOS.svg?style=flat)](http://cocoapods.org/pods/GoogleDirections-iOS)
[![Platform](https://img.shields.io/cocoapods/p/GoogleDirections-iOS.svg?style=flat)](http://cocoapods.org/pods/GoogleDirections-iOS)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

GoogleDirections-iOS is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GoogleDirections-iOS'
```
## Usage
- First we need to:
```import GoogleDirections_iOS```
- Now to use it
```Swift
// Set your APIKEY
let apiKey = "YOUR APIKEY"
// Creating origin Location
let chapultepecCastle = CLLocationCoordinate2D(latitude: 19.422503,
longitude: -99.182065)
// Creating destination Location
let garibaldiPlaza = CLLocationCoordinate2D(latitude: 19.441267,
longitude: -99.139456)
// Creating first waypoint Location
let reforma77 = CLLocationCoordinate2D(latitude: 19.433375,
longitude: -99.154434)
// Creating second waypoint Location
let independenceAngel = CLLocationCoordinate2D(latitude: 19.427021,
longitude: -99.167695)

//create the request, if you don't have waypoints set .none
let request = GoogleDirectionsRequest.directionsWithCoordinates(origin: chapultepecCastle, destination: garibaldiPlaza, mode: .bicycle, wayPoints: [reforma77, independenceAngel], apiKey: apiKey)

//Perform the request
Network.requestJSON(request) { (result, error) in

    if let e = error {
        print(e.localizedDescription)
    }
    if let jsonDic = result as? JSON, let direction = GMDirection(json: jsonDic) {
        print("status: \(direction.status ?? "")")
        print("\n\npolyline: \(direction.routes?.first?.overviewPolyline ?? "")")
    }

}


```

## Author

JDandini, jdandini.jc@gmail.com

## License

GoogleDirections-iOS is available under the MIT license. See the LICENSE file for more info.
