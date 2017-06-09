
xcodebuild \
  -project WebViewTest.xcodeproj \
  -scheme WebViewTest\
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 5,OS=8.4' \
  -destination 'platform=iOS Simulator,name=iPhone 5,OS=9.3' \
   -destination 'platform=iOS Simulator,name=iPhone 5,OS=10.3.1' \
  test | xcpretty