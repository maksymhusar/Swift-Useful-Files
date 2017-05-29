# Swift-Useful-Files

**Useful files for speeding up development, reusability and clean code!**

Requirements: 
- Swift 3.1
- Xcode 8.3.2

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
  - swiftTODOScript (show "TODO:|FIXME:" as warnings) 

Scripts Usage:
1. Copy Scripts folder into your project's root directory
2. Build Phases -> Click '+' -> New Run Script Phase
3. You should then see a new section added where you can inject your bash script: 
/bin/sh ${SRCROOT}/Scripts/SCRIPT_NAME.swift


# Author

Husar Maksym, mkgusar@gmail.com

_Please Share Your Feedback And Suggestions. I Am Waiting To Hear From You._
