# swift-app-tutorials

A sample implementation of app tutorials for the app

We are using the library [KJOverlayTutorial](https://github.com/tranquan/KJOverlayTutorial)

![alt text](https://github.com/WekanCompany/swift-app-tutorials/blob/master/appTutorialPreview.gif)


## How to get it work ##

#### 1. Install pod
````
pod 'pop', '~> 1.0'
pod 'SwiftIconFont'
````

#### 2. Drag and drop these class to your project.
````
KJTutorial.swift
KJOverlayTutorialViewController.swift
ClassExt.swift
````

#### 3. In your ````ViewController```` class 

##### This is a sample to show tutorial for a textview
````
  import SwiftIconFont

  @IBOutlet weak var textView: UITextView!
  
  lazy var tutorialVC: KJOverlayTutorialViewController = {
    return KJOverlayTutorialViewController()
  }()

  func showTutorial() {
    // tut1
    let focusRect1 = self.textView.frame
    let icon1 = UIImage(from: .fontAwesome, code: "handoup", textColor: .white, backgroundColor: .clear, size: CGSize(width: 72, height: 72))
    let icon1Frame = CGRect(x: self.view.bounds.width/2-72/2, y: focusRect1.maxY + 12, width: 72, height: 72)
    let message1 = "Hello, this is tutorial 1"
    let message1Center = CGPoint(x: self.view.bounds.width/2, y: icon1Frame.maxY + 24)
    let tut1 = KJTutorial.textWithIconTutorial(focusRectangle: focusRect1, text: message1, textPosition: message1Center, icon: icon1, iconFrame: icon1Frame)
    
    // tuts
    let tutorials = [tut1]
    self.tutorialVC.tutorials = tutorials
    self.tutorialVC.showInViewController(self)
  }
  
````
