# Device Detect
A simple piece of code to help you detect the iPhone model in order to call a specific storyboard.

### Installation

Import .h and .m into your project and add

```objc
#import "ViewController.h"
```

Then, use the following method that returns a string:

```objc
[DeviceDetect thisDevice]
```

Possible returns:
* SB40 for iPhones 5, 5S, 5C and SE
* SB47 for iPhones 6, 6S and 7
* SB55 for iPhone 6+, 6S+ and 7+

### Development

Want to contribute? Great! Make a PR.
