# LiveSplash
Dynamic Animation Paired with Blurring, Ideal for Splash Screens or Onboarding. Completely customisable and easy to use!

# Installation
Drag and drop LiveSplash.framework, to your project, and change the Embed option to 'Embed and Sign' as show below.
<img width="1680" alt="image" src="https://github.com/codebreaker5163/LiveSplash/assets/33778814/e4272cca-28db-4a49-960c-c2838c739fd7">

Import in your ViewController, where you need to display it.
```
import LiveSplash
```

# Usage
Here is a short simple code to use it in your project:
```
func addBlurredLiveView(){
    // Initialise object with - CGRect for the size of blurred dynaminc background, and UIImage to be used to create animation
    let splash = LiveSplash(size: self.view.frame, image: UIImage(named: "demoLiveSplash")!)
    // Call startAnimation, if you want the image to animate, to give live effect, Pass number of seonds duration to complete 360 rotation.
    splash.startAnimation(delayInSec:15.0)
    // Call addBlur, if you want to add blur layer to the view. Pass UIBlurEffect.Style (.light, .dark etc) and opacity(blurLevel: 1 means lowest)
    splash.addBlur(blurMode: .light,blurLevel: 3)
    // Add the generated view as Subview to desired UIView, or UIElement(TableCell etc.)
    self.view.addSubview(splash.animatedView())
    // Optionally send generated view to back, to make your other UIElemets visible and interactive
    self.view.sendSubviewToBack(splash.animatedView())
}
```

# Functions Available
```startAnimation(delayInSec: Double)``` - To start the animation with number of seconds to complete one rotation.<br>
```addBlur(blurMode: UIBlurEffect.Style, blurLevel: Int)``` - To add a Blurred layer, with BlurStyle and opacity(1 lowest).<br>
```stopAnimation()``` - To stop Animation at any time.

# Demo
https://github.com/codebreaker5163/LiveSplash/assets/33778814/963d9061-a48e-4164-881d-d9e80453c7fa



