//
//  Tutorial3ViewController.swift
//  Swift_AppTutorials
//
//  Created by Santhosh Kumar on 26/03/20.
//  Copyright © 2020 WeKanCode. All rights reserved.
//

import UIKit
import SwiftIconFont

class Tutorial3ViewController: UIViewController {
  
  @IBOutlet weak var imvTut: UIImageView!
  @IBOutlet weak var btnTut1: UIButton!
  @IBOutlet weak var btnTut2: UIButton!
  @IBOutlet weak var btnTut3: UIButton!
  
  lazy var tutorialVC: KJOverlayTutorialViewController = {
    return KJOverlayTutorialViewController()
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
      self.showTutorial()
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func showTutorial() {
    
    // tut1
    let focusRect1 = self.imvTut.frame
    let message1 = "Hello, this is your avatar"
    let message1Center = CGPoint(x: self.view.bounds.width/2, y: focusRect1.maxY + 24)
    var tut1 = KJTutorial.textTutorial(focusRectangle: focusRect1, text: message1, textPosition: message1Center)
    tut1.isArrowHidden = true
    
    // tut2
    let focusRect2 = self.btnTut1.frame
    
    let icon2 = UIImage(from: .fontAwesome, code: "handoup", textColor: .white, backgroundColor: .clear, size: CGSize(width: 72, height: 72))
    let icon2Frame = CGRect(x: self.view.bounds.width/2-72/2, y: focusRect2.maxY + 12, width: 72, height: 72)
    let message2 = "Tap to update your profile"
    let message2Center = CGPoint(x: self.view.bounds.width/2, y: icon2Frame.maxY + 24)
    let tut2 = KJTutorial.textWithIconTutorial(focusRectangle: focusRect2, text: message2, textPosition: message2Center, icon: icon2, iconFrame: icon2Frame)
    
    // tut3
    let focusRect3 = self.btnTut2.frame
    let icon3 = UIImage(from: .fontAwesome, code: "handoup", textColor: .white, backgroundColor: .clear, size: CGSize(width: 72, height: 72))
    let icon3Frame = CGRect(x: self.view.bounds.width/2-72/2, y: focusRect3.maxY + 12, width: 72, height: 72)
    let message3 = "Tap to update your payments"
    let message3Center = CGPoint(x: self.view.bounds.width/2, y: icon3Frame.maxY + 24)
    let tut3 = KJTutorial.textWithIconTutorial(focusRectangle: focusRect3, text: message3, textPosition: message3Center, icon: icon3, iconFrame: icon3Frame)
    
    // tut4
    let focusRect4 = self.btnTut3.frame
    let icon4 = UIImage(from: .fontAwesome, code: "handoup", textColor: .white, backgroundColor: .clear, size: CGSize(width: 72, height: 72))
    let icon4Frame = CGRect(x: self.view.bounds.width/2-72/2, y: focusRect4.maxY + 12, width: 72, height: 72)
    let message4 = "Tap to edit your settings"
    let message4Center = CGPoint(x: self.view.bounds.width/2, y: icon4Frame.maxY + 24)
    let tut4 = KJTutorial.textWithIconTutorial(focusRectangle: focusRect4, text: message4, textPosition: message4Center, icon: icon4, iconFrame: icon4Frame)
    
    // tuts
    let tutorials = [tut1, tut2, tut3, tut4]
    self.tutorialVC.tutorials = tutorials
    self.tutorialVC.showInViewController(self)
  }
}
