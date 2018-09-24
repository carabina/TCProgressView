Pod::Spec.new do |s|

  s.name         = "TCProgressView"
  s.version      = "0.0.1"
  s.summary      = "Progress View"
  s.description  = <<-DESC
  A progress view just like iOS Photos app.
                   DESC

  s.homepage     = "https://github.com/RandallWang/TCProgressView"
  s.license      = "MIT"
  s.author       = { "RandallWang" => "randallwang93@gmail.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/RandallWang/TCProgressView.git", :tag => "#{s.version}" }

  s.source_files  = "TCProgressView/Source/*.{h,m}"

end
