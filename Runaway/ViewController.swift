//
//  ViewController.swift
//  Runaway
//
//  Created by Paco Lee on 2015-12-26.
//  Copyright © 2015 Paco Lee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var look = AVAudioPlayer()
    var ladies = AVAudioPlayer()
    var stars = AVAudioPlayer()
    var intro = AVAudioPlayer()
    var verseHook = AVAudioPlayer()
    var hook = AVAudioPlayer()
    var bridge = AVAudioPlayer()
    
    func cutAudio()
    {
        look.stop()
        look.currentTime = 0
        ladies.stop()
        ladies.currentTime = 0
        stars.stop()
        stars.currentTime = 0
        intro.stop()
        intro.currentTime = 0
        verseHook.stop()
        verseHook.currentTime = 0
        hook.stop()
        hook.currentTime = 0
        bridge.stop()
        bridge.currentTime = 0

    }
    
    @IBOutlet var myAudioController: UISlider!
    
    @IBAction func playLook(sender: AnyObject) {
        look.currentTime = 0
        look.play()
    }
    
    @IBAction func playLadies(sender: AnyObject) {
        ladies.currentTime = 0
        ladies.play()
    }
    
    @IBAction func playStars(sender: AnyObject) {
        stars.currentTime = 0
        stars.play()
    }

    @IBAction func playIntro(sender: AnyObject) {
        cutAudio()
        intro.currentTime = 0
        intro.play()
        intro.numberOfLoops = -1
    }
    
    @IBAction func playVerse(sender: AnyObject) {
        cutAudio()
        verseHook.currentTime = 0
        verseHook.play()
        verseHook.numberOfLoops = -1
    }
    
    @IBAction func playHook(sender: AnyObject) {
        cutAudio()
        hook.currentTime = 0
        hook.play()
        hook.numberOfLoops = -1
    }

    @IBAction func playBridge(sender: AnyObject) {
        cutAudio()
        bridge.currentTime = 0
        bridge.play()
        bridge.numberOfLoops = -1
    }
    
    @IBAction func stopAudio(sender: AnyObject){
        cutAudio()
    }
    
    @IBAction func controlAudio(sender: AnyObject) {
        look.volume = myAudioController.value
        ladies.volume = myAudioController.value
        stars.volume = myAudioController.value
        intro.volume = myAudioController.value
        verseHook.volume = myAudioController.value
        hook.volume = myAudioController.value
        bridge.volume = myAudioController.value
    }
    
    

    override func viewDidLoad() {
            
        //get the path our files
        let myFilePathString1 = NSBundle.mainBundle().pathForResource("Look At You", ofType: "wav")
                
        let myFilePathString2 = NSBundle.mainBundle().pathForResource("Ladies ", ofType: "wav")
            
        let myFilePathString3 = NSBundle.mainBundle().pathForResource("Stars", ofType: "wav")
            
        let myFilePathString4 = NSBundle.mainBundle().pathForResource("Intro", ofType: "mp3")
        
        let myFilePathString5 = NSBundle.mainBundle().pathForResource("Verse & Hook", ofType: "mp3")

        let myFilePathString6 = NSBundle.mainBundle().pathForResource("Hook", ofType: "mp3")
            
        let myFilePathString7 = NSBundle.mainBundle().pathForResource("Bridge", ofType: "mp3")

        if let myFilePathString1 = myFilePathString1
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString1)
            
            do{
                try look = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString2 = myFilePathString2
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString2)
            
            do{
                try ladies = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString3 = myFilePathString3
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString3)
            
            do{
                try stars = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString4 = myFilePathString4
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString4)
            
            do{
                try intro = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString5 = myFilePathString5
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString5)
            
            do{
                try verseHook = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString6 = myFilePathString6
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString6)
            
            do{
                try hook = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        if let myFilePathString7 = myFilePathString7
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString7)
            
            do{
                try bridge = AVAudioPlayer(contentsOfURL: myFilePathURL)
                
            }catch
            {
                print("error")
            }
        }
        
        super.viewDidLoad()
    }
}

