UITouchPassingView
==================

Simple iOS UIView subclass that implements basic touch passing so you can relay touches to another view. Useful in cases where you want the touchable area to be larger than visible bounds of a particular view. 

Keywords: ios, xcode, view, touch, pass, through, relay.

## Usage
Super simple steps:

 1. Add to project and `#import "UITouchPassingView.h"`
 2. Create one: `UITouchPassingView *passView = [UITouchPassingView new];`
 3. Set target view to pass touches to: `passView.targetView = anotherView;`
 4. Add it to wherever you want to capture touches to it and relay it to the
		other view!

Might be worth simply embedding into another class if you're not reusing it
a whole lot.

### License
MIT
