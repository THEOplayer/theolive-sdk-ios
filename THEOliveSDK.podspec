Pod::Spec.new do |s|
  s.name                   = 'THEOliveSDK'
  s.version                = '3.18.8'
  s.swift_version          = '5.8.1'
  s.author                 = 'THEO Technologies'
  s.license                = { :type => 'Commercial', :text => 'SEE LICENSE AT https://www.theoplayer.com/terms' }
  s.homepage               = 'https://developers.theo.live/docs/welcome'
  s.source                 = { :http => 'https://cdn.theo.live/artifacts/apple/THEOlive-3.18.8.xcframework.zip', :sha256 => 'f055c49971d6cec2822f9f44ffc2cba1e1861f57d26024131f27d1ef5c1158fb' }
  s.summary                = 'The THEOlive SDK provides HTTP-based, low latency streaming to any number of iOS devices.'
  s.description            = "Interactive entertainment, sports betting, iGaming, ... can rely on the HTTP-based streaming API of THEOlive to scale their low latency video services to a global audience, enabling cutting-edge video to any iOS device in the world. For more info, please visit https://www.theoplayer.com/product/theolive"
  s.ios.deployment_target  = '12.0'
  s.tvos.deployment_target = '12.0'
  s.vendored_frameworks    = 'THEOliveSDK.xcframework'
end