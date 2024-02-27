# animated_icon

<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-android-blue">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-blue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-web-blue">
</a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License"></a>

This package supports an animated icon with some customization. It includes an icon type, animation as well as onTap() parameters through the user to get the values as per the requirements.

# Preview
<img  src="https://github.com/Mindinventory/animated_icons/blob/master/assets/animated_icon_gif/animated_icon.gif?raw=true"  width="275" height=550/>

## Example
```dart
    AnimateIcon(
            key: UniqueKey(),
            onTap: () {},
            iconType: IconType.continueAnimation,
            height: 70,
            width: 70,
            color: Color.fromRGBO(
                Random.secure().nextInt(255),
                Random.secure().nextInt(255),
                Random.secure().nextInt(255),
                1),
            animateIcon: AnimateIcons.bell,
        );
```

### Required parameters

##### onTap():
This is a callback. Through user can call anythings.

##### animateIcons:
This is a parameter which will send by user from enum of AnimateIcons.

##### iconType:
This is a parameter which will send by user from enum of IconType.


## Optional parameters

##### Color:
This is for user can set the color for animate icon.

##### height:
This is for user can set the height for animate icon.

##### width:
This is for user can set the width for animate icon.

##### onHover():
This is a callback. Through user can call anythings.

## Guideline for contributors
Contribution towards our repository is always welcome, we request contributors to create a pull request to the develop branch only.

## Guideline to report an issue/feature request
It would be great for us if the reporter can share the below things to understand the root cause of the issue.
- Library version
- Code snippet
- Logs if applicable
- Device specification like (Manufacturer, OS version, etc)
- Screenshot/video with steps to reproduce the issue.

### Dependencies

* [lottie](https://pub.dev/packages/lottie): ^2.3.2

# LICENSE!
Bubble Slider is [MIT-licensed](https://github.com/mi-ghanshyam/animated_icons/blob/master/LICENSE "MIT-licensed").

# Let us know!
We’d be really happy if you send us links to your projects where you use our component. Just send an email to sales@mindinventory.com And do let us know if you have any questions or suggestion regarding our work.
