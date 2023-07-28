# THEOliveSDK

## Add dependency using CocoaPods

- Create a Podfile if you don't already have one. From the root of your project directory, run the following command: `pod init`
- Add `THEOliveSDK` as a dependency in your Podfile: `pod 'THEOliveSDK', '1.0.0'`
- Install the pods using `pod install` , then open your `.xcworkspace` file to see the project in Xcode.

## Embedding a player in your app

To play a video from a THEO.live channel:
 - create create a ``THEOlivePlayer``
 - call ``loadChannel(_:)`` to load a channel
 - use the ``THEOlivePlayerViewController`` to present the rendered video in a UIView along with some basic playback controls or use the ``THEOliveChromelessPlayerViewController`` when you want no controls overlays.

**UIKit example**

```swift
import UIKit
import THEOliveSDK

class ViewController: UIViewController {
    let player: THEOlivePlayer
    let playerViewController: THEOlivePlayerViewController

    required init?(coder: NSCoder) {
        player = THEOlivePlayer()
        playerViewController = THEOlivePlayerViewController(player: player)
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        player.loadChannel("Write your channel ID here")
                
        let playerView = playerViewController.view!
        playerView.frame = CGRect(
            origin: [0,50],
            size: [view.bounds.width, 200]
        )
        playerView.autoresizingMask = [.flexibleWidth]
        playerView.translatesAutoresizingMaskIntoConstraints = true
        
        addChild(playerViewController)
        view.addSubview(playerView)
        playerViewController.didMove(toParent: self)

        // Do any additional setup after loading the view.
    }

}
```

**SwiftUI example**

To use the ``THEOlivePlayerViewController`` or the ``THEOliveChromelessPlayerViewController`` in SwiftUI wrap them in a View like this: 
```swift
struct PlayerView: UIViewControllerRepresentable {
    let player: THEOlivePlayer

    func updateUIViewController(_ uiViewController: THEOlivePlayerViewController, context: Context) {}

    func makeUIViewController(context: Context) -> THEOlivePlayerViewController {
        THEOlivePlayerViewController(player: player)
    }
}
```

