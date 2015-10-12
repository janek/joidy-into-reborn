//
//  ViewController.swift
//  JoidyIntro
//
//  Created by Janek Szynal on 27.08.2015.
//  Copyright © 2015 PJM. All rights reserved.
//

import UIKit
import RazzleDazzle


class ViewController: AnimatedPagingScrollViewController {
    
    //static elements
    // add dots ... here (as xib?)
    private let pageControl = UIPageControl()
    
    //page control
    private let pageOneIndicator = UIView(frame: CGRectMake(50.0, 50.0, 8.0, 8.0))
    private let pageTwoIndicator = UIView(frame: CGRectMake(50.0, 50.0, 8.0, 8.0))
    private let pageThreeIndicator = UIView(frame: CGRectMake(50.0, 50.0, 8.0, 8.0))
    
    private let facebookLoginButon = UIButton()
    private let emailLabel = UILabel()
    private let loginLabel = UILabel()
    
    //page 1 elements
    private let page1Group = UIImageView(image: UIImage(named: "page1Group"))
    private let pacMan = UIImageView(image: UIImage(named: "pacMan"))
    private let headingLabel = UILabel()
    private let longTextLabel = UILabel()
    
    //page 2 elements 
//    private let ribbon = UIImageView(image: UIImage(named: "ribbon"))
    private let camera = UIImageView(image: UIImage(named: "camera"))
    private let pencil = UIImageView(image: UIImage(named: "pencil"))
    private let microphone = UIImageView(image: UIImage(named: "microphone"))
    private let gift = UIImageView(image: UIImage(named: "gift"))
    private let secondHeadingLabel = UILabel()
    private let secondLongTextLabel = UILabel()
    
    //page 3 elements
    private let world = UIImageView(image: UIImage(named: "world"))
    private let thirdHeadingLabel = UILabel()
    private let thirdLongTextLabel = UILabel()
    
    
    override func numberOfPages() -> Int {
        return 3
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: .Fade)
        scrollView.pagingEnabled = true
        configureViews()
        configureAnimations()
    }
    
    private func configureViews() {
        //static elements
//        contentView.addSubview(pageControl)
        contentView.addSubview(pageOneIndicator)
        contentView.addSubview(pageTwoIndicator)
        contentView.addSubview(pageThreeIndicator)
        contentView.addSubview(facebookLoginButon)
        contentView.addSubview(emailLabel)
        contentView.addSubview(loginLabel)
        
        //page 1 elements 
        contentView.addSubview(page1Group)
        contentView.addSubview(pacMan)
        contentView.addSubview(headingLabel)
        contentView.addSubview(longTextLabel)
        
        //page 2 elements
        contentView.addSubview(camera)
        contentView.addSubview(pencil)
        contentView.addSubview(microphone)
//        contentView.addSubview(ribbon)
        contentView.addSubview(secondHeadingLabel)
        contentView.addSubview(secondLongTextLabel)
        
        //page 3 elements
        contentView.addSubview(world)
        contentView.addSubview(gift)
        contentView.addSubview(thirdHeadingLabel)
        contentView.addSubview(thirdLongTextLabel)
        
        
        
    }

    private func configureAnimations() {
        //static
        configurePageControl()
        configureFacebookLoginButton()
        configureEmailLabel()
        configureLoginLabel()
        
        //page1
        configurePage1Group()
        configurePacMan()
        configureHeadingLabel()
        configureLongTextLabel()
        
        //page2
//        configureRibbon()
        configureCamera()
        configurePencil()
        configureMicrophone()
        configureGift()
        configureSecondHeadingLabel()
        configureSecondLongTextLabel()
        
        //page3
        configureWorld()
        configureThirdHeadingLabel()
        configureThirdLongTextLabel()
        
        //additional animations
        configureGiftCollapseAnimation()
        
    }
    
    //configure static elements
    private func configurePageControl(){
//        pageControl.numberOfPages = 3
//        pageControl.backgroundColor = UIColor.redColor()
//        scrollView.addConstraint(NSLayoutConstraint(item: pageControl, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -100))
//        keepView(pageControl, onPages: [-0.5, 3.5])
        pageOneIndicator.backgroundColor = UIColor.grayColor()
        pageTwoIndicator.backgroundColor = UIColor.grayColor()
        pageThreeIndicator.backgroundColor = UIColor.grayColor()
        
        pageOneIndicator.layer.cornerRadius = 4.0
        pageTwoIndicator.layer.cornerRadius = 4.0
        pageThreeIndicator.layer.cornerRadius = 4.0
//    
        keepView(pageOneIndicator, onPage: 0)
        keepView(pageTwoIndicator, onPages: [-0.5, 2.5])
        keepView(pageThreeIndicator, onPages: [-0.5, 3.5])
        
        
//        scrollView.addConstraint(NSLayoutConstraint(item: pageOneIndicator, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -100))
//        scrollView.addConstraint(NSLayoutConstraint(item: pageTwoIndicator, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -100))
//        scrollView.addConstraint(NSLayoutConstraint(item: pageThreeIndicator, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -100))
        
        
    }
    
    private func configureFacebookLoginButton() {
        //basic attributes
        facebookLoginButon.backgroundColor = UIColor(red: 74.0/255.0, green: 144.0/255.0, blue: 226.0/255.0, alpha: 1.0)
        facebookLoginButon.titleLabel?.font = UIFont.headingApplicationFontOfSize(18)
        facebookLoginButon.setTitle("Sign Up with Facebook", forState: .Normal)

        
        //change to left and right distance
        facebookLoginButon.addConstraint(NSLayoutConstraint(item: facebookLoginButon, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        
        facebookLoginButon.addConstraint(NSLayoutConstraint(item: facebookLoginButon, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 50))
        
        scrollView.addConstraint(NSLayoutConstraint(item: facebookLoginButon, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -50))
        
        
        keepView(facebookLoginButon, onPages: [-0.5, 3.5])
    }
    
    private func configureEmailLabel() {
        emailLabel.text = "Sign In with E-Mail"
        emailLabel.font = UIFont.applicationFontOfSize(14)
        emailLabel.textColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addConstraint(NSLayoutConstraint(item: emailLabel, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -15))
   
        keepView(emailLabel, onPages: [-0.5, 3.5], withAttribute: .Left)
    }
    
    private func configureLoginLabel() {
        loginLabel.text = "Login"
        loginLabel.font = UIFont.applicationFontOfSize(14)
        loginLabel.textColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addConstraint(NSLayoutConstraint(item: loginLabel, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -15))
        
        keepView(loginLabel, onPages: [-0.5, 3.5], withAttribute: .Right)

    }

    
    //configure page 1 elements
    private func configurePage1Group() {
        scrollView.addConstraint(NSLayoutConstraint(item: page1Group, attribute: .Top, relatedBy: .GreaterThanOrEqual, toItem: contentView, attribute: .Top, multiplier: 1, constant: 5))
        scrollView.addConstraint(NSLayoutConstraint(item: page1Group, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -20))
        
        keepView(page1Group, onPage: 0)
    }
    
    private func configurePacMan() {

        scrollView.addConstraint(NSLayoutConstraint(item: pacMan, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -92))
        
        keepView(pacMan, onPages: [0.111, 0.889, 1.889, 2.2], atTimes: [0, 1, 2, 3])
    }
    
    private func configureHeadingLabel() {
        headingLabel.text = "Welcome to Joidy"
        headingLabel.font = UIFont.headingApplicationFontOfSize(20)
        headingLabel.textAlignment = .Center
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        headingLabel.addConstraint(NSLayoutConstraint(item: headingLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        headingLabel.addConstraint(NSLayoutConstraint(item: headingLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 20))
        
        scrollView.addConstraint(NSLayoutConstraint(item: headingLabel, attribute: .Bottom, relatedBy: .Equal, toItem: longTextLabel, attribute: .Top, multiplier: 1, constant: -5))
        
        keepView(headingLabel, onPages: [-0.5, 3,5])
        
        // Fade the heading out after page one
        let headingFadeAnimation = AlphaAnimation(view: headingLabel)
        headingFadeAnimation[0] = 1
        headingFadeAnimation[0.5] = 0
        headingFadeAnimation[1] = 0
        headingFadeAnimation[1.5] = 0
        headingFadeAnimation[2] = 0

        animator.addAnimation(headingFadeAnimation)
    }
    
    private func configureLongTextLabel() {
        longTextLabel.text = "Discover Music, Film, E-Books, Travel and more.. \n   Or let us find something for you!"
        longTextLabel.font = UIFont.applicationFontOfSize(13)
        longTextLabel.textAlignment = .Center
        longTextLabel.textColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        longTextLabel.numberOfLines = 0
        longTextLabel.translatesAutoresizingMaskIntoConstraints = false
        //change to left and right distance
        longTextLabel.addConstraint(NSLayoutConstraint(item: longTextLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        longTextLabel.addConstraint(NSLayoutConstraint(item: longTextLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 80))
        
        scrollView.addConstraint(NSLayoutConstraint(item: longTextLabel, attribute: .Bottom, relatedBy: .Equal, toItem: facebookLoginButon, attribute: .Top, multiplier: 1, constant: -25))
        
        keepView(longTextLabel, onPage: 0)
        
    }
    
    //configure page 2 elements
//    private func configureRibbon(){
//        scrollView.addConstraint(NSLayoutConstraint(item: ribbon, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -130))
//        keepView(ribbon, onPages: [0, 1])
//        
//        let ribbonFadeAnimation = AlphaAnimation(view: ribbon)
//        ribbonFadeAnimation[0.7] = 0
//        ribbonFadeAnimation[1] = 1
//        ribbonFadeAnimation[1.2] = 0
//        animator.addAnimation(ribbonFadeAnimation)
//        
//        let ribbonMoveAnimation = TranslationAnimation(view: ribbon)
//        ribbonMoveAnimation[0.8] = CGPoint(x: 0.0, y: 0.0)
//        ribbonMoveAnimation[1] = CGPoint(x: 0.0, y: -30.0)
//        animator.addAnimation(ribbonMoveAnimation)
//        
//        
//    }
    
    private func configureCamera(){
        let cameraVerticalConstraint = NSLayoutConstraint(item: camera, attribute: .CenterY, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -380)
        scrollView.addConstraint(cameraVerticalConstraint)
        
        keepView(camera, onPages: [0.111, 1.111, 2.111], atTimes: [0, 1, 2])
        
        // Move the camera from above the view down to near the top of the view between pages 1 and 2
        let cameraVerticalAnimation =  ConstraintConstantAnimation(superview: scrollView, constraint: cameraVerticalConstraint)
        cameraVerticalAnimation[0] = -580
        cameraVerticalAnimation[1] = -124
        animator.addAnimation(cameraVerticalAnimation)
        
        //fade the camera in?
    }
    
    private func configurePencil(){
        
        let pencilVerticalConstraint = NSLayoutConstraint(item: pencil, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -22)
        scrollView.addConstraint(pencilVerticalConstraint)
        keepView(pencil, onPages: [0.889, 1.889], atTimes: [1, 2])
    
    }
    
    private func configureMicrophone(){
        let microphoneVerticalConstraint = NSLayoutConstraint(item: microphone, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -22)
        scrollView.addConstraint(microphoneVerticalConstraint)

        keepView(microphone, onPages: [1.111, 2.111], atTimes: [1, 2])
        
    }
    
    private func configureGift(){
        
        let giftVerticalConstraint = NSLayoutConstraint(item: gift, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -30)
        scrollView.addConstraint(giftVerticalConstraint)
        
        keepView(gift, onPages: [1, 2])
        
        
        //At time 1.2, we want to switch up the 4 separate rectangles for a single gift image that contains them all
        
        // Fade the gift in the moment the 4 icon rectangles disappear
        let giftFadeInAnimation = AlphaAnimation(view: gift)
        giftFadeInAnimation[1.199] = 0
        giftFadeInAnimation[1.20] = 1
        animator.addAnimation(giftFadeInAnimation)
        
        //postion the gift in the same exact spot as the rectangles are positioned
        let giftPositioningAnimation = TranslationAnimation(view: gift)
        giftPositioningAnimation[1.199] = CGPoint(x: 0.0, y: 0.0)
        giftPositioningAnimation[1.2] = CGPoint(x: 4.0, y: 1.6)
        //the last position is for delivery to the right square of the world on page [2]
        giftPositioningAnimation[2] = CGPoint(x: 9.0, y: -25.0)
        animator.addAnimation(giftPositioningAnimation)
        
        
        //scale it down to 1/8 size
        let giftScaleAnimation = ScaleAnimation(view: gift)
        giftScaleAnimation.addKeyframe(0, value: 1)
        giftScaleAnimation[1.2] = 1
        giftScaleAnimation[2] = 0.125
        animator.addAnimation(giftScaleAnimation)
        
        
        
    }
    
    private func configureSecondHeadingLabel(){
        secondHeadingLabel.text = "Personalize and Wrap Up"
        secondHeadingLabel.font = UIFont.headingApplicationFontOfSize(20)
        secondHeadingLabel.textAlignment = .Center
        secondHeadingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        secondHeadingLabel.addConstraint(NSLayoutConstraint(item: secondHeadingLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        secondHeadingLabel.addConstraint(NSLayoutConstraint(item: secondHeadingLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 20))
        
        scrollView.addConstraint(NSLayoutConstraint(item: secondHeadingLabel, attribute: .Bottom, relatedBy: .Equal, toItem: longTextLabel, attribute: .Top, multiplier: 1, constant: -5))
        
        keepView(secondHeadingLabel, onPages: [-0.5, 3,5])
        
        // Fade the second heading in on page two, out after page two
        let secondHeadingFadeAnimation = AlphaAnimation(view: secondHeadingLabel)
        secondHeadingFadeAnimation[0] = 0
        secondHeadingFadeAnimation[0.5] = 0
        secondHeadingFadeAnimation[1] = 1
        secondHeadingFadeAnimation[1.5] = 0
        secondHeadingFadeAnimation[2] = 0
        
        animator.addAnimation(secondHeadingFadeAnimation)
        

        
    }
    
    private func configureSecondLongTextLabel(){
        secondLongTextLabel.text = "Füge eine Audio, Video oder Textnachricht \n hinzu und verpacke…"
        secondLongTextLabel.font = UIFont.applicationFontOfSize(13)
        secondLongTextLabel.textAlignment = .Center
        secondLongTextLabel.textColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        secondLongTextLabel.numberOfLines = 0
        secondLongTextLabel.translatesAutoresizingMaskIntoConstraints = false
        //change to left and right distance
        secondLongTextLabel.addConstraint(NSLayoutConstraint(item: secondLongTextLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        secondLongTextLabel.addConstraint(NSLayoutConstraint(item: secondLongTextLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 80))
        
        scrollView.addConstraint(NSLayoutConstraint(item: secondLongTextLabel, attribute: .Bottom, relatedBy: .Equal, toItem: facebookLoginButon, attribute: .Top, multiplier: 1, constant: -25))
        
        keepView(secondLongTextLabel, onPage: 1)
        
    }
    
    //configure page 3 elements
    private func configureWorld(){
        scrollView.addConstraint(NSLayoutConstraint(item: world, attribute: .Bottom, relatedBy: .Equal, toItem: headingLabel, attribute: .Top, multiplier: 1, constant: -22))
        keepView(world, onPage: 2)
        
        let worldFlashAnimation = AlphaAnimation(view: world)
        worldFlashAnimation.addKeyframe(1.5, value: 0.1)
        worldFlashAnimation.addKeyframe(2, value: 1)
        animator.addAnimation(worldFlashAnimation)
        
    }
    
    private func configureThirdHeadingLabel(){
        thirdHeadingLabel.text = "Send Gifts to All Your Friends"
        thirdHeadingLabel.font = UIFont.headingApplicationFontOfSize(20)
        thirdHeadingLabel.textAlignment = .Center
        thirdHeadingLabel.translatesAutoresizingMaskIntoConstraints = false

        thirdHeadingLabel.addConstraint(NSLayoutConstraint(item: thirdHeadingLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        thirdHeadingLabel.addConstraint(NSLayoutConstraint(item: thirdHeadingLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 20))
        
        scrollView.addConstraint(NSLayoutConstraint(item: thirdHeadingLabel, attribute: .Bottom, relatedBy: .Equal, toItem: longTextLabel, attribute: .Top, multiplier: 1, constant: -5))
        
        keepView(thirdHeadingLabel, onPages: [-0.5, 3,5])
        
        // Fade the third heading in on page three
        let thirdHeadingFadeAnimation = AlphaAnimation(view: thirdHeadingLabel)
        thirdHeadingFadeAnimation[0] = 0
        thirdHeadingFadeAnimation[0.5] = 0
        thirdHeadingFadeAnimation[1] = 0
        thirdHeadingFadeAnimation[1.5] = 0
        thirdHeadingFadeAnimation[2] = 1
        
        animator.addAnimation(thirdHeadingFadeAnimation)
        
    }
    
    private func configureThirdLongTextLabel(){
        thirdLongTextLabel.text = "Versende an alle Facebook Freunde oder an \nbeliebige E-Mail oder Tel. Nr…"
        thirdLongTextLabel.font = UIFont.applicationFontOfSize(13)
        thirdLongTextLabel.textAlignment = .Center
        thirdLongTextLabel.textColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        thirdLongTextLabel.numberOfLines = 0
        thirdLongTextLabel.translatesAutoresizingMaskIntoConstraints = false
        //change to left and right distance
        thirdLongTextLabel.addConstraint(NSLayoutConstraint(item: thirdLongTextLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        thirdLongTextLabel.addConstraint(NSLayoutConstraint(item: thirdLongTextLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 80))
        
        scrollView.addConstraint(NSLayoutConstraint(item: thirdLongTextLabel, attribute: .Bottom, relatedBy: .Equal, toItem: facebookLoginButon, attribute: .Top, multiplier: 1, constant: -25))
        
        keepView(thirdLongTextLabel, onPage: 2)
    }
    
    //additonal animations
    private func configureGiftCollapseAnimation(){
        let pacManMoveAnimation = TranslationAnimation(view: pacMan)
        pacManMoveAnimation.addKeyframe(0, value: CGPoint(x: 0.0, y: 0.0))
        pacManMoveAnimation[1] = CGPoint(x: 0.0, y: 0.0)
        pacManMoveAnimation[1.2] = CGPoint(x: 7.2, y: 0.0)
        animator.addAnimation(pacManMoveAnimation)
        
        let pencilMoveAnimation = TranslationAnimation(view: pencil)
        pencilMoveAnimation.addKeyframe(0, value: CGPoint(x: 0.0, y: 0.0))
        pencilMoveAnimation[1] = CGPoint(x: 0.0, y: 0.0)
        pencilMoveAnimation[1.2] = CGPoint(x: 7.2, y: -7.2)
        animator.addAnimation(pencilMoveAnimation)
        
        let microphoneMoveAnimation = TranslationAnimation(view: microphone)
        microphoneMoveAnimation.addKeyframe(0, value: CGPoint(x: 0.0, y: 0.0))
        microphoneMoveAnimation[1] = CGPoint(x: 0.0, y: 0.0)
        microphoneMoveAnimation[1.2] = CGPoint(x: 0.0, y: -7.2)
        animator.addAnimation(microphoneMoveAnimation)
        
        let pacManFadeAnimation = AlphaAnimation(view: pacMan)
        pacManFadeAnimation.addKeyframe(1.199, value: 1)
        pacManFadeAnimation.addKeyframe(1.20, value: 0)
        animator.addAnimation(pacManFadeAnimation)
        
        let pencilFadeAnimation = AlphaAnimation(view: pencil)
        pencilFadeAnimation.addKeyframe(1.199, value: 1)
        pencilFadeAnimation.addKeyframe(1.20, value: 0)
        animator.addAnimation(pencilFadeAnimation)
        
        let microphoneFadeAnimation = AlphaAnimation(view: microphone)
        microphoneFadeAnimation.addKeyframe(1.199, value: 1)
        microphoneFadeAnimation.addKeyframe(1.20, value: 0)
        animator.addAnimation(microphoneFadeAnimation)
        
        let cameraFadeAnimation = AlphaAnimation(view: camera)
        cameraFadeAnimation.addKeyframe(1.199, value: 1)
        cameraFadeAnimation.addKeyframe(1.20, value: 0)
        animator.addAnimation(cameraFadeAnimation)
        
    
    }
    

}

