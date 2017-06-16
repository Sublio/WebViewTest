
xcodebuild \
  -project WebViewTest.xcodeproj \
  -scheme WebViewTest\
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 5s,OS=8.4' \
  -destination 'platform=iOS Simulator,name=iPhone 5s,OS=9.3' \
  -destination 'platform=iOS Simulator,name=iPhone 5s,OS=11.0' \
  test | xcpretty --report junit