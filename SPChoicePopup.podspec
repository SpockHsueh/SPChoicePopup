Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "SPChoicePopup"
s.summary = "SPChoicePopup allow users to use pop-up windows."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Spock Hsueh" => "Spock.hsu@gmail.com" }

# 5
s.homepage = "https://github.com/SpockHsueh/SPChoicePopup.git"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/SpockHsueh/SPChoicePopup.git"}

# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.7'
s.dependency 'MBProgressHUD', '~> 1.1.0'

# 8
s.source_files = "SPChoicePopup/**/*.{swift}"

# 9
s.resources = "SPChoicePopup/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "4.2"

end
