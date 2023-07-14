# THEOliveSDK

## Add dependency using CocoaPods

- Create a Podfile if you don't already have one. From the root of your project directory, run the following command: `pod init`
- Add `THEOliveSDK` as a dependency in your Podfile: `pod 'THEOliveSDK', '1.0.0'`
- Install the pods using `pod install` , then open your `.xcworkspace` file to see the project in Xcode.

## Embedding a player in your app

Import the SDK

```
import THEOliveSDK
```

Create a `PlayerViewController` instance

```swift swift
let playerViewController = PlayerViewController()
```

Then embed this view controller in one of your own view controllers

```
let yourViewController = UIViewController(nibName: nil, bundle: nil)
yourViewController.addChild(playerViewController)
yourViewController.view.addSubview(playerViewController.view)
playerViewController.didMove(toParent: yourViewController)
```

## Player Details
### PlayerViewController

The PlayerViewController is a `UIKit` UIViewController that shows the contents of your channel.

| Property / Method                                        | Description                                                                     |
| :------------------------------------------------------- | :------------------------------------------------------------------------------ |
| var player: Player                                       | An object to control the media player that is assigned to this view controller. |
| var presentationMode: PresentationMode { get }           | Returns the current presentation mode.                                          |
| func request(presentationMode: PresentationMode) -> Void | Set the mode to 'fullscreen' or 'inline'.                                       |

### Player

A media player that plays channels from THEO.live

**Properties** 

| Property    | Type   | Description                                                                                                                                   |
| :---------- | :----- | :-------------------------------------------------------------------------------------------------------------------------------------------- |
| muted       | Bool   | Get or set whether the audio is muted.                                                                                                        |
| paused      | Bool   | Returns whether the player is paused.                                                                                                         |
| volume      | Float  | Get or set the current volume percentage as a floating point value between 0 and 1. (Not supported on iOS safari due to browser restrictions) |
| currentTime | Double | The time of the playhead in seconds.                                                                                                          |

 **Methods** 

| Method                                                       | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| play()                                                       | Start or resume playback.                                    |
| pause()                                                      | Pause playback.                                              |
| goLive()                                                     | Seek to the time that is closest to live.                    |
| loadChannel(channelId: string)                               | Load a channel.<br />  _channelId_: The id of the channel to load. |
| addEventListener(type: string, listener: (event: Event) -> Void) | Add a event listener for the given event type.               |
| removeEventListener(type: string, listener: (event: Event) -> Void) | Remove a previously registered event listener.               |
| reset()                                                      | Resets the player. This will stop playback and reset the state. |



**Player Events**

| Event name    | Description                                                                                                                                        |
| :------------ | :------------------------------------------------------------------------------------------------------------------------------------------------- |
| play          | Fired when the player is no longer paused, when play() is called or autoplay is enabled.                                                           |
| pause         | Fired when the player is paused, when pause() is called.                                                                                           |
| playing       | Fired when the player is not paused and starts progressing playback, so initially when the player starts or when the player recovers from a stall. |
| waiting       | Fired when the player is not paused but stops progressing, when the buffer is empty.                                                               |
| volumechange  | Fired when either the volume or the muted property changes.  (Not supported on iOS safari due to browser restrictions)                             |
| channelloaded | Fired when the player has loaded a channel.                                                                                                        |
| error         | Fired when the player enters a state from which it cannot recover without a new loadChannel call.                                                  |

### PresentationMode

| case        | Description                                                     |
| :---------- | :-------------------------------------------------------------- |
| .inline     | The video is visible in between other UI components of your app |
| .fullscreen | The video is covering the entire screen                         |
