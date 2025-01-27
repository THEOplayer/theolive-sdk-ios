Pod::Spec.new do |s|
  s.name                   = 'THEOliveSDK'
  s.version                = '3.18.7'
  s.swift_version          = '5.8.1'
  s.author                 = 'THEO Technologies'
  s.license                = { :type => 'Commercial', :text => 'SEE LICENSE AT https://www.theoplayer.com/terms' }
  s.homepage               = 'https://developers.theo.live/docs/welcome'
  s.source                 = { :http => 'https://cdn.theo.live/artifacts/apple/THEOlive-3.18.7.xcframework.zip', :sha256 => '4aa9a6f54d787cc4ea34b34a345936d5c7cb6e427b81a3d9f510a91357da6b7c' }
  s.summary                = 'The THEOlive SDK provides HTTP-based, low latency streaming to any number of iOS devices.'
  s.description            = "Interactive entertainment, sports betting, iGaming, ... can rely on the HTTP-based streaming API of THEOlive to scale their low latency video services to a global audience, enabling cutting-edge video to any iOS device in the world. For more info, please visit https://www.theoplayer.com/product/theolive"
  s.ios.deployment_target  = '12.0'
  s.tvos.deployment_target = '12.0'
  s.vendored_frameworks    = 'THEOliveSDK.xcframework'
end