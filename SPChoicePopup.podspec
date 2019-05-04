Pod::Spec.new do |s|

# 1
s.platform = :ios, "11.0"
s.ios.deployment_target = '12.0'
s.name = "SPChoicePopup"
s.summary = "SPChoicePopup allow users to use pop-up windows."
s.requires_arc = true

# 2
s.version = "0.1.2"

# 3
s.license = "MIT"

# 4
s.author = { "Spock Hsueh" => "Spock.hsu@gmail.com" }

# 5
s.homepage = "https://github.com/SpockHsueh/SPChoicePopup.git"

# 6
s.source = { :git => "https://github.com/SpockHsueh/SPChoicePopup.git", :tag => "0.1.2"}

# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.7'
s.dependency 'MBProgressHUD', '~> 1.1.0'

# 8
s.source_files = "SPChoicePopup/**/*.{h,m,swift}"

s.swift_version = "4.2"

end
