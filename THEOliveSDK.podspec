Pod::Spec.new do |s|
  s.name                   = 'THEOliveSDK'
  s.version                = '3.18.0'
  s.swift_version          = '5.8.1'
  s.author                 = 'THEO Technologies'
  s.license                = { :type => 'Commercial', :text => 'SEE LICENSE AT https://www.theoplayer.com/terms' }
  s.homepage               = 'https://developers.theo.live/docs/welcome'
  s.source                 = { :http => 'https://cdn.theo.live/artifacts/apple/THEOlive-3.18.0.xcframework.zip', :sha256 => '994c5ab0533eb102306cc59d66331b7b2daa1db648d631e526be56438b9cb074' }
  s.summary                = 'The THEOlive SDK provides HTTP-based, low latency streaming to any number of iOS devices.'
  s.description            = "Interactive entertainment, sports betting, iGaming, ... can rely on the HTTP-based streaming API of THEOlive to scale their low latency video services to a global audience, enabling cutting-edge video to any iOS device in the world. For more info, please visit https://www.theoplayer.com/product/theolive"
  s.ios.deployment_target  = '12.0'
  s.tvos.deployment_target = '12.0'
  s.vendored_frameworks    = 'THEOliveSDK.xcframework'
end