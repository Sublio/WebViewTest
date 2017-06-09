
xcodebuild \
  -project WebViewTest.xcodeproj \
  -scheme WebViewTest\
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 5,OS=8.4' \
  test | xcpretty