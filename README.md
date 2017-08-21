# Swift-Useful-Files

**Useful files for speeding up development, reusability and clean code!**

Requirements: 
- Swift 3.1

### Extensions
  - Notification+Extension (add custom notification names)
  - PKHUD+Extension (hide HUD after timeout)
  - UIApplication+Extension (get topViewController)
  - UICollectionView+Extension (easy Cell Registration & Reusing)
  - UIColor+Extension 
  - UILabel+Extension (set letterSpacing and  lineHeight)
  - UINavigationController+Extension (set custom transitionAnimation)
  - UITableView+Extension (easy Cell Registration & Reusing, centered loading spinner)
  - UIView+Extension (easy loading from Nib)
  - UIImage+Extension (cropping image)
  
### Protocols
  - NibLoadableView
  - ReusableView
  - Alertable (easy showing alert with message)
  - Backable
  - UnwrappableNetworkResponse
  
### Helpers
  - GlobalAppearance (configure appearance for the App)
  - Reachability (checking isInternetAvailable)
  - Utils (getting deviceScaleMultiplier for text size)

### Scripts
  - Command line script for showing number of lines in project:
```
find . -type f -exec wc -l {} + | sort -n
```
  - swiftTODOScript (show "TODO:|FIXME:" as warnings) 

Scripts Usage:
1. Copy Scripts folder into your project's root directory
2. Build Phases -> Click '+' -> New Run Script Phase
3. You should then see a new section added where you can inject your bash script:
``` 
/bin/sh ${SRCROOT}/Scripts/SCRIPT_NAME.swift 
```
### Build time optimizations
  - Use plain “DWARF” instead of “DWARF with dSYM File” as your “Debug Information Format”.
  - Cocoa Pods
  To fix the slow "Copy pods resources" problem you can copy the resources only if they haven't been copied before.
  In the Podfile for your project add the following post install hook:
  
```
post_install do |installer|
    Dir.glob(installer.sandbox.target_support_files_root + "Pods-*/*.sh").each do |script|
        flag_name = File.basename(script, ".sh") + "-Installation-Flag"
        folder = "${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
        file = File.join(folder, flag_name)
        content = File.read(script)
        content.gsub!(/set -e/, "set -e\nKG_FILE=\"#{file}\"\nif [ -f \"$KG_FILE\" ]; then exit 0; fi\nmkdir -p \"#{folder}\"\ntouch \"$KG_FILE\"")
        File.write(script, content)
    end
end
```
  
  P.S. This solution required to Clean project аfter each Podfile change (because of caching)

  - Writing High-Performance Swift Code
  
  https://github.com/apple/swift/blob/master/docs/OptimizationTips.rst
  
  - Generate file with sections of code that are complex for compilation
  
  ```
  xcodebuild -workspace App.xcworkspace -scheme App clean build OTHER_SWIFT_FLAGS="-Xfrontend -debug-time-function-bodies" | grep .[0-9]ms | grep -v ^0.[0-9]ms | sort -nr > functions_build_analysis.txt
  ```
  
  where «App.xcworkspace» — workspace name, «App» — scheme name.
  
  - Build Time Analyzer for Xcode
  
  https://github.com/RobertGummesson/BuildTimeAnalyzer-for-Xcode
  
## Articles
  - Cool Debugging Feature (UIDebuggingInformationOverlay)
  
  http://ryanipete.com/blog/ios/swift/objective-c/uidebugginginformationoverlay/

# Author

Husar Maksym, mkgusar@gmail.com

_Please Share Your Feedback And Suggestions. I Am Waiting To Hear From You._

# License

Swift-Useful-Files is available under the MIT license. See the LICENSE file for more info.
