# CircleLabel

[![Version](https://img.shields.io/cocoapods/v/CircleLabel.svg?style=flat)](http://cocoapods.org/pods/CircleLabel)
[![License](https://img.shields.io/cocoapods/l/CircleLabel.svg?style=flat)](http://cocoapods.org/pods/CircleLabel)
[![Platform](https://img.shields.io/cocoapods/p/CircleLabel.svg?style=flat)](http://cocoapods.org/pods/CircleLabel)

## Description and Features

Lib automatically creates labels with circular backgrounds(Like in contacts app in Android).

Library is written in swift
```swift
    iOS Version >= 8.0
```

It is highly customizable.
It has text based color generator(Same text will always be same color)
It has full Storyboard integration.

## Installation

CircleLabel is available through [CocoaPods](http://cocoapods.org).
To install it, simply add the following line to your Podfile:

```ruby
pod 'CircleLabel'
```

### Manual Installation

Dowload files from lib folder and copy them into your project.


## Usage

CircleLabel extends UIImageView. It has full Storyboard support you will see how it looks directly in Interface Builder.


```swift
import CircleLabel
```

### StoryBoard
Drag UIView to your view and set class to CircleLabel.

You can set parameters directly from Storyboard or Manually from code.
<img src="https://i.imgur.com/bLpKgz4.png" width="500">



### Parameters
```swift

var circle:CircleLabel

//Set text within color
circle.text = "From Code"

//This text will be used to generate circle color
circle.colorFromText = "GUARAM"

//Use custom color scheme
circle.COLOR_SCHEME = [ 0xffe57373, 0xfff06292 ...]

//Generate color based on text or user defined parameter
circle.useTextColor = true;

//If useTextColor == false - this value will be used for circle color
circle.circleColor = UIColor.blue

//Change text color
circle.textColor = UIColor.white

//Padding of inner text
circle.padding = 0.3

//Amount of lines
circle!.amountLines = 1

```


## Author

Gio Andriadze, g.andriadze2@gmail.com

## License

CircleLabel is available under the MIT license. See the LICENSE file for more info.
