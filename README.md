# THEOliveSDK

## Getting started

To play a video from a HESP.live channel:
 - Create a `TheoLiveChannelController`:
   - with optional parameter `disableAudio`: prevents the player form processing audio, which could be useful in a multi-player setup with identical audio streams
 - Call its `loadChannel(configuration)` method to load a channel. `configuration` is an object where you can specify the following properties:
   - `channelID`
   - `abrStrategy`
   - `showControlsOverlay`
   - `videoScaleType`

 - Use the `TheoLiveChannelView` to present the rendered video in a UIView along with some basic playback controls. Each TheoLiveChannelView is connected to one TheoLiveChannelController (passed in the initialisation), serves as a wrapper around the playerLayer and can be used to animate, reposition, resize, ... the stream output.

### UIKit example

```swift
import UIKit
import THEOliveSDK

class ViewController: UIViewController {
    var channelController: TheoLiveChannelController?

    override func viewDidLoad() {
        super.viewDidLoad()

        let channelController = TheoLiveChannelController(disableAudio: false)
        self.channelController = channelController

        let sampleConfig = TheoLiveChannelController.Configuration(
          channelID: "43zv5lk11zh8498th3ejzscj5",
          abrStrategy: .AVERAGE_QUALITY,
          showControlsOverlay: true,
          videoScaleType: .RESIZE_ASPECT_FILL
        )
        channelController.loadChannel(sampleConfig)
                
        let playerView = TheoLiveChannelView(
            channelController: channelController
        )
        playerView.frame = CGRect(
            origin: [0,50],
            size: [view.bounds.width, 200]
        )
        playerView.autoresizingMask = [.flexibleWidth]
        playerView.translatesAutoresizingMaskIntoConstraints = true
        
        view.addSubview(playerView)

        // Do any additional setup after loading the view.
    }

}
```

### SwiftUI example

To use the `TheoLiveChannelView` in SwiftUI it can be wrapped in a SwiftUI View like this: 
```swift
struct PlayerWrapper<Controller: ObservableTheoLiveChannelController>: UIViewRepresentable {
    let channelController: Controller
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    func makeUIView(context: Context) -> UIView {
        TheoLiveChannelView(channelController: channelController)
    }
}
```

### Any further questions?

please contact us @ Theo