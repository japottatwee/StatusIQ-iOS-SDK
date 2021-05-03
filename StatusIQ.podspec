Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "StatusIQ"
  s.version      = "1.0"
  s.summary      = "StatusIQ"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.homepage = "https://git.csez.zohocorpin.com/site24x7/statusiq-ios-sdk.git"
  s.description  = "description"
  s.license      = { :type => "MIT", :text=> <<-LICENSE
  MIT License

  Copyright (c) 2017 Zoho

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in allcd 
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE
  LICENSE
}
  s.author       = { "nandhini guru" => "nandhini.guru@zohocorp.com" }
  # s.platform     = :ios, '8.0'
  s.ios.deployment_target = '10.0'
  # s.dependency 'ZAssistCore'#, '0.0.1'#, :git=> 'https://git.csez.zohocorpin.com/site24x7/statusiq-ios-sdk.git'


  s.frameworks = 'UIKit','Foundation', 'CoreMedia'
    
    
  s.source_files = ["native/StatusIQFramework/*{swift}"] 
  s.resources = ["native/StatusIQFramework/*{xcassets,storyboard,xib}"]
  #s.exclude_files = ["StatusIQ/StatusIQFramework/*{plist}"]
  s.resource_bundles = { 'StatusIQBundle' => ['native/StatusIQFramework/*.{plist,xib,storyboard,xcassets}']}


  s.source       = { :git => "https://git.csez.zohocorpin.com/site24x7/statusiq-ios-sdk.git", :tag => s.version.to_s} # commit ID from Authkey support


  s.module_name  = 'StatusIQ'
  s.requires_arc = true
end
