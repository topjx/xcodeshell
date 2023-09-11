#!/bin/bash

# 打开 Xcode 项目，选择目标，并点击 Build Phases 选项卡。

# 点击左下角的加号按钮，选择 New Run Script Phase。

# 在 Shell Script 文本框中输入以下命令（其中 VERSION 和 BUILD_NUMBER 是两个预定义变量）：

buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "$INFOPLIST_FILE")
buildNumber=$(($buildNumber + 1))
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "$INFOPLIST_FILE"
buildDate=`date +%Y-%m-%d\ %H:%M:%S`
/usr/libexec/PlistBuddy -c "Set :BuildDate $buildDate" "$INFOPLIST_FILE"

# 单击菜单栏上的保存，然后再次构建项目。
# 这样每次构建时，该脚本将自动读取 Info.plist 文件中的当前版本号和构建时间，并将其更新到 Info.plist 文件中。

# 以上示例演示了如何使用 Shell Build Phases 在 Xcode 项目中执行自定义脚本以自动化完成某些任务。Shell Build Phases 还可用于很多其他用途，例如调试、测试、分析等。

# Print: Entry, "CFBundleVersion", Does Not Exist
# Set: Entry, ":BuildDate", Does Not Exist
# plist缺少必要的key
# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
# <plist version="1.0">
# <dict>
# 	<key>BuildDate</key>
# 	<string>2023-09-11 15:08:55</string>
# 	<key>CFBundleShortVersionString</key>
# 	<string>$(MARKETING_VERSION)</string>
# 	<key>CFBundleVersion</key>
# 	<string>$(CURRENT_PROJECT_VERSION)</string>