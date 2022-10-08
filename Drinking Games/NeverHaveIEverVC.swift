//
//  NeverHaveIEverVC.swift
//  Drinking Games
//
//  Created by Tim Drevitch on 4/27/20.
//  Copyright © 2020 Tim Drevitch. All rights reserved.
//

import UIKit

class NeverHaveIEverVC: UIViewController, UITextFieldDelegate {

    var gameChosen = 0
    
    var screenWorks = false
    var players = ["", "", "", "", "", ""]
    var p1score = 0
    var p2score = 0
    var p3score = 0
    var p4score = 0
    var p5score = 0
    var p6score = 0
    var haveOrHaveNot = ""
    var everyoneOrNot = ""
    var count = 0
    var singleOutPlayer = 0
    var playersPlaying = 6
    
    @IBOutlet weak var check: UIImageView!
    
    @IBOutlet weak var CSBackground: UILabel!
    @IBOutlet weak var CSLabel: UILabel!
    @IBOutlet weak var p1l: UILabel!
    @IBOutlet weak var p2l: UILabel!
    @IBOutlet weak var p3l: UILabel!
    @IBOutlet weak var p4l: UILabel!
    @IBOutlet weak var p5l: UILabel!
    @IBOutlet weak var p6l: UILabel!
    @IBOutlet weak var p1s: UISwitch!
    @IBOutlet weak var p2s: UISwitch!
    @IBOutlet weak var p3s: UISwitch!
    @IBOutlet weak var p4s: UISwitch!
    @IBOutlet weak var p5s: UISwitch!
    @IBOutlet weak var p6s: UISwitch!
    @IBOutlet weak var CSDone: UIButton!
    
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    
    @IBOutlet weak var PlayerOneTextBox: UITextField!
    
    @IBOutlet weak var playerChoiceBackground: UILabel!
    @IBOutlet weak var PCDone: UIButton!
    @IBOutlet weak var PCLabel: UILabel!
    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    @IBOutlet weak var player3: UITextField!
    @IBOutlet weak var player4: UITextField!
    @IBOutlet weak var player5: UITextField!
    @IBOutlet weak var player6: UITextField!
    
    @IBOutlet weak var transparent: UILabel!
    @IBOutlet weak var background: UILabel!
    @IBOutlet weak var words: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    @IBOutlet weak var bubbleImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    
    @IBOutlet weak var playerPic1: UILabel!
    @IBOutlet weak var playerPic2: UILabel!
    @IBOutlet weak var playerPic3: UILabel!
    @IBOutlet weak var playerPic4: UILabel!
    @IBOutlet weak var playerPic5: UILabel!
    @IBOutlet weak var playerPic6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.player1.delegate = self
        self.player2.delegate = self
        self.player3.delegate = self
        self.player4.delegate = self
        self.player5.delegate = self
        self.player6.delegate = self
        
        screenWorks = false

        transparent.isHidden = false
        background.isHidden = false
        words.isHidden = false
        exitButton.isHidden = false
        
        CSBackground.isHidden = true
        CSLabel.isHidden = true
        p1l.isHidden = true
        p2l.isHidden = true
        p3l.isHidden = true
        p4l.isHidden = true
        p5l.isHidden = true
        p6l.isHidden = true
        p1s.isHidden = true
        p2s.isHidden = true
        p3s.isHidden = true
        p4s.isHidden = true
        p5s.isHidden = true
        p6s.isHidden = true
        CSDone.isHidden = true
        
        background.layer.cornerRadius = 20
        words.layer.cornerRadius = 20
        
        nextButton.layer.cornerRadius = 20
        backButton.layer.cornerRadius = 10
        
        check.isHidden = true
        
        
        
    }
    
    
    
    @IBAction func playersChosen(_ sender: Any) {
        
        if PlayerOneTextBox.text == "" {
            PlayerOneTextBox.placeholder = "Player 1 (at least one name required)"
        }
        else {
            
            if gameChosen == 1 {
                words.text = "The game of Have's and Have-Not's targets those who do or do not get out of their comfort zones.  The rules are simple.  Read what the bubble says and drink!"
            }
            if gameChosen == 2 {
                words.text = "The Game of Tasks is all about challanges.  The rules are simple.  Do the challange and make everyone else drink, or drink yourself!"
            }
            if gameChosen == 3 {
                words.text = "The game of Have's and Have-Not's (DIRTY) is much more inapproprate than its clean counterpart.  The rules are simple.  Read what the bubble says and drink!"
            }
            if gameChosen == 4 {
                words.text = "The Most Likely game is a group decision game.  Whoever is most likely to do what is written in the bubble must drink!  The group decides (ties are allowed)."
            }
            
            players[0] = player1.text!
            players[1] = player2.text!
            players[2] = player3.text!
            players[3] = player4.text!
            players[4] = player5.text!
            players[5] = player6.text!
        
            playerPic1.text = players[0]
            playerPic2.text = players[1]
            playerPic3.text = players[2]
            playerPic4.text = players[3]
            playerPic5.text = players[4]
            playerPic6.text = players[5]
        
        
        
        
        
            if players[0] == "" {
                playerPic1.isHidden = true
                p1l.isHidden = true
                p1s.isHidden = true
                score1.isHidden = true
                playersPlaying = playersPlaying - 1
            }
            if players[1] == "" {
                playerPic2.isHidden = true
                p2l.isHidden = true
                p2s.isHidden = true
                score2.isHidden = true
                playersPlaying = playersPlaying - 1
            }
            if players[2] == "" {
                playerPic3.isHidden = true
                p3l.isHidden = true
                p3s.isHidden = true
                score3.isHidden = true
                playersPlaying = playersPlaying - 1
            }
            if players[3] == "" {
                playerPic4.isHidden = true
                p4l.isHidden = true
                p4s.isHidden = true
                score4.isHidden = true
                playersPlaying = playersPlaying - 1
            }
            if players[4] == "" {
                playerPic5.isHidden = true
                p5l.isHidden = true
                p5s.isHidden = true
                score5.isHidden = true
                playersPlaying = playersPlaying - 1
            }
            if players[5] == "" {
                playerPic6.isHidden = true
                p6l.isHidden = true
                p6s.isHidden = true
                score6.isHidden = true
                playersPlaying = playersPlaying - 1
            }
        
        
        
            playerChoiceBackground.isHidden = true
            PCDone.isHidden = true
            PCLabel.isHidden = true
            player1.isHidden = true
            player2.isHidden = true
            player3.isHidden = true
            player4.isHidden = true
            player5.isHidden = true
            player6.isHidden = true
        }
    }
    
    @IBAction func Exit(_ sender: Any) {
        transparent.isHidden = true
        background.isHidden = true
        words.isHidden = true
        exitButton.isHidden = true
        screenWorks = true
        
        
    }
    
    
    @IBAction func scoresRecorded(_ sender: Any) {
        
        if p1s.isOn{
            p1score = p1score + 1
            //p1s.turnOFF
        }
        if p2s.isOn{
            p2score = p2score + 1
            //p2s.turnOFF
        }
        if p3s.isOn{
            p3score = p3score + 1
            //p1s.turnOFF
        }
        if p4s.isOn{
            p4score = p4score + 1
            //p4s.turnOFF
        }
        if p5s.isOn{
            p5score = p5score + 1
            //p5s.turnOFF
        }
        if p6s.isOn{
            p6score = p6score + 1
            //p6s.turnOFF
        }
        
        score1.text = "\(p1score)"
        score2.text = "\(p2score)"
        score3.text = "\(p3score)"
        score4.text = "\(p4score)"
        score5.text = "\(p5score)"
        score6.text = "\(p6score)"
        
        CSBackground.isHidden = true
        CSLabel.isHidden = true
        p1l.isHidden = true
        p2l.isHidden = true
        p3l.isHidden = true
        p4l.isHidden = true
        p5l.isHidden = true
        p6l.isHidden = true
        p1s.isHidden = true
        p2s.isHidden = true
        p3s.isHidden = true
        p4s.isHidden = true
        p5s.isHidden = true
        p6s.isHidden = true
        CSDone.isHidden = true
        
        check.isHidden = false
        
        screenWorks = true
        count = count + 1
    }
    
    @IBAction func ChangeText(_ sender: Any) {
        
        if gameChosen == 1 {
            check.isHidden = true
            
            count = count + 1
            
            if count % 2 == 0 {
                
                screenWorks = false
                
                CSBackground.isHidden = false
                CSLabel.isHidden = false
                p1l.isHidden = false
                p2l.isHidden = false
                p3l.isHidden = false
                p4l.isHidden = false
                p5l.isHidden = false
                p6l.isHidden = false
                p1s.isHidden = false
                p2s.isHidden = false
                p3s.isHidden = false
                p4s.isHidden = false
                p5s.isHidden = false
                p6s.isHidden = false
                CSDone.isHidden = false
                
                
                
                p1l.text = players[0]
                p2l.text = players[1]
                p3l.text = players[2]
                p4l.text = players[3]
                p5l.text = players[4]
                p6l.text = players[5]
                
                if players[0] == "" {
                    playerPic1.isHidden = true
                    p1l.isHidden = true
                    p1s.isHidden = true
                    score1.isHidden = true
                }
                if players[1] == "" {
                    playerPic2.isHidden = true
                    p2l.isHidden = true
                    p2s.isHidden = true
                    score2.isHidden = true
                }
                if players[2] == "" {
                    playerPic3.isHidden = true
                    p3l.isHidden = true
                    p3s.isHidden = true
                    score3.isHidden = true
                }
                if players[3] == "" {
                    playerPic4.isHidden = true
                    p4l.isHidden = true
                    p4s.isHidden = true
                    score4.isHidden = true
                }
                if players[4] == "" {
                    playerPic5.isHidden = true
                    p5l.isHidden = true
                    p5s.isHidden = true
                    score5.isHidden = true
                }
                if players[5] == "" {
                    playerPic6.isHidden = true
                    p6l.isHidden = true
                    p6s.isHidden = true
                    score6.isHidden = true
                }
                
            }
            
            if screenWorks {
                
                let randomNumberOneOrZero = (arc4random_uniform(2))
                if randomNumberOneOrZero == 0 {
                    haveOrHaveNot = "HAS"
                }
                else {
                    haveOrHaveNot = "HAS NEVER"
                }
                
                singleOutPlayer = (Int(arc4random_uniform((UInt32(playersPlaying)))))
                var addInWords = ""
                var playerName = ""
                let everyoneOrOnePerson = (arc4random_uniform(1)) //1/1 chance
                if everyoneOrOnePerson == 0 {
                    everyoneOrNot = "If \(players[singleOutPlayer])"
                    playerName = "\(players[singleOutPlayer])"
                    addInWords = "then they alone have to "
                }
                else {
                    everyoneOrNot = "EVERYONE who"
                    playerName = "people"
                }
                
                //40% chance 1 sip, 30% chance 2 sips, 20% chance 3 sips, 10% chance finish drink
                let sipCount = ["take ONE sip", "take ONE sip", "take ONE sip", "take ONE sip", "take TWO sips", "take TWO sips", "take TWO sips", "take THREE sips", "take THREE sips", "FINISH their drink"]
                
                let randomIndexSips =  Int(arc4random_uniform(UInt32(sipCount.count)))
                
                let array = ["\(everyoneOrNot) \(haveOrHaveNot) been outside the timezone they were born in \(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone to a concert \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone skydiving \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) tried pet food \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) riden in a helicopter \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) deleted an Instagram post \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone tubing, wakeboarding, or water skiing \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten a final grade in a class with a C or worse \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had surgery before \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone surfing \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) riden a horse \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been on a cruise \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had siblings \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) ice skated before \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) ran a marathon \(addInWords)\(sipCount[randomIndexSips]). It's not that hard \(playerName)!",
                    "\(everyoneOrNot) \(haveOrHaveNot) been able to speak more than one language fluently \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) learned how to play a musical instrument \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) held a snake \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) played a full round of golf \(addInWords)\(sipCount[randomIndexSips]) (not mini golf \(playerName)).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten a spray tan before \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) shot a gun \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen the White House in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen the Hollywood sign in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen Mount Rushmore in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been anywhere in the continent of Europe \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been anywhere in the continent of Africa \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been anywhere in the continent of Asia \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been anywhere in the continent of South America \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been anywhere in the Oceana/Australia continent \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) swam in the Atlantic Ocean \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) swam in the Pacific Ocean \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been to Hawaii \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been in a relationship \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen the Eiffel Tower in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) attended a NFL football game live \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) attended a NHL hockey game live \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) attended a MLB baseball game live \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) attended a NBA basketball game live \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) hitchhiked \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been stung by a bee \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten stitches \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) broken a bone \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) stayed the night at the location where this game is being played \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) driven a car over 100mph \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) crashed a car \(addInWords)\(sipCount[randomIndexSips]) (good for you if you haven't though \(playerName)👍).",
                    "⛷\(everyoneOrNot) \(haveOrHaveNot) gone skiing or snowboarding \(addInWords)\(sipCount[randomIndexSips]).🏂",
                    "\(everyoneOrNot) \(haveOrHaveNot) flown in a hot air balloon \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen the Grand Canyon in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen Niagara Falls in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) seen the Statue of Liberty in person \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) lost over $100.00 in one session of gambling \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) visited Manhattan and/or New York City \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten a tattoo \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten a piercing (anywhere on the body) \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) owned a fake ID \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been arrested \(addInWords)\(sipCount[randomIndexSips]) (if you have, what did you do \(playerName)???).",
                    "\(everyoneOrNot) \(haveOrHaveNot) played an organized sport \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) eaten sushi \(addInWords)\(sipCount[randomIndexSips]).🍣",
                    "\(everyoneOrNot) \(haveOrHaveNot) been outside of the country they were born in \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) ran in a 5k (or longer) race \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) flown on a plane \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten a ticket for speeding \(addInWords)\(sipCount[randomIndexSips]) (if you are slow, stay out of the fast lane \(playerName)!!!).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had braces for their teeth \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had their wisdom teeth removed \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) needed to wear glasses or contacts \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been to a rave \(addInWords)\(sipCount[randomIndexSips]).",
                    "EVERYONE who HAS Coronavirus must leave right now.",
                    "\(everyoneOrNot) \(haveOrHaveNot) pulled an all-nighter \(addInWords)\(sipCount[randomIndexSips]) (sleep is for the weak, right \(playerName)?).",
                    "\(everyoneOrNot) \(haveOrHaveNot) worked a minimum-waged job \(addInWords)\(sipCount[randomIndexSips])."]
                let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
                
                label.text = (array[randomIndex])
                
                bubbleImage.image = UIImage(named: "bubble\(arc4random_uniform(5) + 1).png")
            }
        }
        
        if gameChosen == 2 {
            check.isHidden = true
            
            count = count + 1
            
            if count % 2 == 0 {
                
                screenWorks = false
                
                CSBackground.isHidden = false
                CSLabel.isHidden = false
                p1l.isHidden = false
                p2l.isHidden = false
                p3l.isHidden = false
                p4l.isHidden = false
                p5l.isHidden = false
                p6l.isHidden = false
                p1s.isHidden = false
                p2s.isHidden = false
                p3s.isHidden = false
                p4s.isHidden = false
                p5s.isHidden = false
                p6s.isHidden = false
                CSDone.isHidden = false
                
                
                
                p1l.text = players[0]
                p2l.text = players[1]
                p3l.text = players[2]
                p4l.text = players[3]
                p5l.text = players[4]
                p6l.text = players[5]
                
                if players[0] == "" {
                    playerPic1.isHidden = true
                    p1l.isHidden = true
                    p1s.isHidden = true
                    score1.isHidden = true
                }
                if players[1] == "" {
                    playerPic2.isHidden = true
                    p2l.isHidden = true
                    p2s.isHidden = true
                    score2.isHidden = true
                }
                if players[2] == "" {
                    playerPic3.isHidden = true
                    p3l.isHidden = true
                    p3s.isHidden = true
                    score3.isHidden = true
                }
                if players[3] == "" {
                    playerPic4.isHidden = true
                    p4l.isHidden = true
                    p4s.isHidden = true
                    score4.isHidden = true
                }
                if players[4] == "" {
                    playerPic5.isHidden = true
                    p5l.isHidden = true
                    p5s.isHidden = true
                    score5.isHidden = true
                }
                if players[5] == "" {
                    playerPic6.isHidden = true
                    p6l.isHidden = true
                    p6s.isHidden = true
                    score6.isHidden = true
                }
                
            }
            
            if screenWorks {
                
                let randomNumberOneOrZero = (arc4random_uniform(2))
                if randomNumberOneOrZero == 0 {
                    haveOrHaveNot = "HAS"
                }
                else {
                    haveOrHaveNot = "HAS NEVER"
                }
                
                singleOutPlayer = (Int(arc4random_uniform((UInt32(playersPlaying)))))
                var addInWords = ""
                var playerName = ""
                let everyoneOrOnePerson = (arc4random_uniform(1)) //1/1 chance
                if everyoneOrOnePerson == 0 {
                    everyoneOrNot = "If \(players[singleOutPlayer])"
                    playerName = "\(players[singleOutPlayer])"
                    addInWords = "then they alone have to "
                }
                else {
                    everyoneOrNot = "EVERYONE who"
                    playerName = "people"
                }
                
                //40% chance 1 sip, 30% chance 2 sips, 20% chance 3 sips, 10% chance finish drink
                let sipCount = ["takes ONE sip", "takes ONE sip", "takes ONE sip", "takes ONE sip", "takes TWO sips", "takes TWO sips", "takes TWO sips", "takes THREE sips", "takes THREE sips", "FINISHES their drinks"]
                
                let randomIndexSips =  Int(arc4random_uniform(UInt32(sipCount.count)))
                
                let array = ["\(everyoneOrNot) runs around the building where this game is being played, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) finishes their drink right now, then EVERYONE \(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) orders a pizza to the location where this game is being played for everyone to share, then EVERYONE must finish their drinks.  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) can hold their breath for 30 seconds, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) stands up for the next 5 rounds (no sitting or laying down), then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) sleeps over where this game is being played tonight, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) crosses their eyes for ten seconds straight, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) whistles on their first try, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) licks their elbow, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(players[singleOutPlayer]) must make a new rule.  For the rest of the game, if someone breaks this rule, then they \(sipCount[randomIndexSips]).",
                    "\(players[singleOutPlayer]) must make a new rule.  For the rest of the game, if someone breaks this rule, then they must finish their drink",
                    "The oldest player and the youngest player in the group \(sipCount[randomIndexSips]).",
                    "The youngest player in the group \(sipCount[randomIndexSips]).",
                    "The oldest player in the group \(sipCount[randomIndexSips]).",
                    "Any players with siblings take THREE sips.",
                    "Any players who are only childs take THREE sips.",
                    "\(players[singleOutPlayer]) must finish their drink.",
                    "Everone except \(players[singleOutPlayer]) goes in a circle saying their favorite body part.  \(everyoneOrNot) does not smile or laugh, then EVERYONE \(sipCount[randomIndexSips]).  \(everyoneOrNot) does smile or laugh, then they must take FIVE sips.",
                    "Everone except \(players[singleOutPlayer]) goes in a circle saying their favorite peice of trash.  \(everyoneOrNot) does not smile or laugh, then EVERYONE \(sipCount[randomIndexSips]).  \(everyoneOrNot) does smile or laugh, then they must take FIVE sips.",
                     "Everone except \(players[singleOutPlayer]) goes in a circle saying their favorite color.  \(everyoneOrNot) does not have the same favorite color as anyone, then EVERYONE \(sipCount[randomIndexSips]).  \(everyoneOrNot) does, then they must take FIVE sips.",
                    "\(everyoneOrNot) pets a dog within the next 10 seconds, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) picks up a cat within the next 10 seconds, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) can hold their eyes open for a minute straight, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) can force themselves to cry, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "Everone except \(players[singleOutPlayer]) goes in a circle saying cheesy pic up lines to \(players[singleOutPlayer]).  \(everyoneOrNot) does not smile or laugh, then EVERYONE \(sipCount[randomIndexSips]).  \(everyoneOrNot) does smile or laugh, then they must take FIVE sips.",
                    "\(everyoneOrNot) does a 45 second wall sit, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) does a 30 second plank, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) makes a realistic 'dog barking' noise, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.  Group decides.",
                    "\(everyoneOrNot) pats their head while rubbing their stomach in a circular motion on their first try, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips.",
                    "\(everyoneOrNot) takes their shirt off, then EVERYONE \(sipCount[randomIndexSips]).  If not, \(players[singleOutPlayer]) must take FIVE sips."]
                let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
                
                label.text = (array[randomIndex])
                
                bubbleImage.image = UIImage(named: "bubble\(arc4random_uniform(5) + 1).png")
            }
        }
        if gameChosen == 3 {
            check.isHidden = true
            
            count = count + 1
            
            if count % 2 == 0 {
                
                screenWorks = false
                
                CSBackground.isHidden = false
                CSLabel.isHidden = false
                p1l.isHidden = false
                p2l.isHidden = false
                p3l.isHidden = false
                p4l.isHidden = false
                p5l.isHidden = false
                p6l.isHidden = false
                p1s.isHidden = false
                p2s.isHidden = false
                p3s.isHidden = false
                p4s.isHidden = false
                p5s.isHidden = false
                p6s.isHidden = false
                CSDone.isHidden = false
                
                
                
                p1l.text = players[0]
                p2l.text = players[1]
                p3l.text = players[2]
                p4l.text = players[3]
                p5l.text = players[4]
                p6l.text = players[5]
                
                if players[0] == "" {
                    playerPic1.isHidden = true
                    p1l.isHidden = true
                    p1s.isHidden = true
                    score1.isHidden = true
                }
                if players[1] == "" {
                    playerPic2.isHidden = true
                    p2l.isHidden = true
                    p2s.isHidden = true
                    score2.isHidden = true
                }
                if players[2] == "" {
                    playerPic3.isHidden = true
                    p3l.isHidden = true
                    p3s.isHidden = true
                    score3.isHidden = true
                }
                if players[3] == "" {
                    playerPic4.isHidden = true
                    p4l.isHidden = true
                    p4s.isHidden = true
                    score4.isHidden = true
                }
                if players[4] == "" {
                    playerPic5.isHidden = true
                    p5l.isHidden = true
                    p5s.isHidden = true
                    score5.isHidden = true
                }
                if players[5] == "" {
                    playerPic6.isHidden = true
                    p6l.isHidden = true
                    p6s.isHidden = true
                    score6.isHidden = true
                }
                
            }
            
            if screenWorks {
                
                let randomNumberOneOrZero = (arc4random_uniform(2))
                if randomNumberOneOrZero == 0 {
                    haveOrHaveNot = "HAS"
                }
                else {
                    haveOrHaveNot = "HAS NEVER"
                }
                
                singleOutPlayer = (Int(arc4random_uniform((UInt32(playersPlaying)))))
                var addInWords = ""
                var playerName = ""
                let everyoneOrOnePerson = (arc4random_uniform(4)) //1/4 chance
                if everyoneOrOnePerson == 0 {
                    everyoneOrNot = "If \(players[singleOutPlayer])"
                    playerName = "\(players[singleOutPlayer])"
                    addInWords = "then they alone have to "
                }
                else {
                    everyoneOrNot = "EVERYONE who"
                    playerName = "people"
                }
                
                //40% chance 1 sip, 30% chance 2 sips, 20% chance 3 sips, 10% chance finish drink
                let sipCount = ["take ONE sip", "take ONE sip", "take ONE sip", "take ONE sip", "take TWO sips", "take TWO sips", "take TWO sips", "take THREE sips", "take THREE sips", "FINISH their drink"]
                
                let randomIndexSips =  Int(arc4random_uniform(UInt32(sipCount.count)))
                
                let array = ["\(everyoneOrNot) \(haveOrHaveNot) had a threesome \(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a car \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a parking lot \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) blacked out from drinking \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) thrown up from drinking \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) eaten shrooms or taken LSD \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) done anal \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) licked a butthole \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with two different people with the same first name \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had their butthole licked \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) sucked toes \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a shower \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a hot tub \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a pool \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in the ocean \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gotten an STD/STI \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been to a strip club \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) butt chugged alcohal \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) taken a body shot off of someone \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been the 'body' for someone taking a body shot \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) hooked up with someone who was not single \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) played strip poker \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with a good friend's sibling or family member \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) watched pornagraphy \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) watched pornagraphy with a sextual partner \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) failed a drug test \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in a public place \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had to buy Plan B \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had a condom break during sex \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had unprotected sex \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) tied up a sexual partner \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been tied up by a sextual partner \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) blindfolded a sexual partner \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been blindfolded by a sextual partner \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) smoked weed/eaten edibles \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) taken Adderall at a party \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone skinny dipping \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with more than one person in the same day at different times \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex during 'that time of month' \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) HAS driven drunk \(addInWords)\(sipCount[randomIndexSips]) (shame on you \(playerName)).",
                    "\(everyoneOrNot) HAS driven high \(addInWords)\(sipCount[randomIndexSips]) (shame on you \(playerName)).",
                    "\(everyoneOrNot) \(haveOrHaveNot) done 69 \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex on the floor \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) woken up still drunk in the morning \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex in the woods and/or while on a hike \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) funneled alcohol \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with over 5 different people \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with over 10 different people \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had sex with over 15 different people \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) had to run a 'naked mile' at a party \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) woken up from a night of partying with a broken bone \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) woken up from a night of partying with a black eye \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been transported to a haspital from partying \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) sent nudes \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) recieved nudes \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) shotgunned alcohol \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) incorporated food into sex \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) incorporated sex toys into sex \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been kicked out of a school \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been kicked out of a bar or club \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) thrown up in a bar or club \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) walked or ran home from a bar or club \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) gone streaking \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) HAS NEVER played beer pong \(addInWords)\(sipCount[randomIndexSips]) (come on, it's at every party \(playerName)).",
                    "\(everyoneOrNot) HAS NEVER played flip cup \(addInWords)\(sipCount[randomIndexSips]) (come on, it's at most parties \(playerName)).",
                    "\(everyoneOrNot) \(haveOrHaveNot) stolen from a store \(addInWords)\(sipCount[randomIndexSips]).",
                    "\(everyoneOrNot) \(haveOrHaveNot) been walked in on during sex \(addInWords)\(sipCount[randomIndexSips]).",
                    "EVERYONE who HAS Coronavirus must leave right now.",
                    "\(everyoneOrNot) \(haveOrHaveNot) done cocaine \(addInWords)\(sipCount[randomIndexSips])."]
                let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
                
                label.text = (array[randomIndex])
                
                bubbleImage.image = UIImage(named: "bubble\(arc4random_uniform(5) + 1).png")
            }
        }
        if gameChosen == 4 {
            check.isHidden = true
            
            count = count + 1
            
            if count % 2 == 0 {
                
                screenWorks = false
                
                CSBackground.isHidden = false
                CSLabel.isHidden = false
                p1l.isHidden = false
                p2l.isHidden = false
                p3l.isHidden = false
                p4l.isHidden = false
                p5l.isHidden = false
                p6l.isHidden = false
                p1s.isHidden = false
                p2s.isHidden = false
                p3s.isHidden = false
                p4s.isHidden = false
                p5s.isHidden = false
                p6s.isHidden = false
                CSDone.isHidden = false
                
                
                
                p1l.text = players[0]
                p2l.text = players[1]
                p3l.text = players[2]
                p4l.text = players[3]
                p5l.text = players[4]
                p6l.text = players[5]
                
                if players[0] == "" {
                    playerPic1.isHidden = true
                    p1l.isHidden = true
                    p1s.isHidden = true
                    score1.isHidden = true
                }
                if players[1] == "" {
                    playerPic2.isHidden = true
                    p2l.isHidden = true
                    p2s.isHidden = true
                    score2.isHidden = true
                }
                if players[2] == "" {
                    playerPic3.isHidden = true
                    p3l.isHidden = true
                    p3s.isHidden = true
                    score3.isHidden = true
                }
                if players[3] == "" {
                    playerPic4.isHidden = true
                    p4l.isHidden = true
                    p4s.isHidden = true
                    score4.isHidden = true
                }
                if players[4] == "" {
                    playerPic5.isHidden = true
                    p5l.isHidden = true
                    p5s.isHidden = true
                    score5.isHidden = true
                }
                if players[5] == "" {
                    playerPic6.isHidden = true
                    p6l.isHidden = true
                    p6s.isHidden = true
                    score6.isHidden = true
                }
                
            }
            
            if screenWorks {
                
                let randomNumberOneOrZero = (arc4random_uniform(2))
                if randomNumberOneOrZero == 0 {
                    haveOrHaveNot = "HAS"
                }
                else {
                    haveOrHaveNot = "HAS NEVER"
                }
                
                singleOutPlayer = (Int(arc4random_uniform((UInt32(playersPlaying)))))
                var addInWords = ""
                var playerName = ""
                let everyoneOrOnePerson = (arc4random_uniform(1)) //1/1 chance
                if everyoneOrOnePerson == 0 {
                    everyoneOrNot = "If \(players[singleOutPlayer])"
                    playerName = "\(players[singleOutPlayer])"
                    addInWords = "then they alone have to "
                }
                else {
                    everyoneOrNot = "EVERYONE who"
                    playerName = "people"
                }
                
                //40% chance 1 sip, 30% chance 2 sips, 20% chance 3 sips, 10% chance finish drink
                let sipCount = ["takes ONE sip", "takes ONE sip", "takes ONE sip", "takes ONE sip", "takes TWO sips", "takes TWO sips", "takes TWO sips", "takes THREE sips", "takes THREE sips", "FINISHES their drinks"]
                
                let randomIndexSips =  Int(arc4random_uniform(UInt32(sipCount.count)))
                
                let array = ["The player who would be most likely to run a marathon in the next 5 years \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to run a marathon in the next 5 years \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to drop a class \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to run late for a job interview \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to go to bed early \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to play video games all night \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to stay up late \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to punch a wall \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to watch a scary movie alone \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to skip homework assignments \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to break a bone \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to stay back, while everyone else rides a scary amusement park ride \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to sleep in until past noon \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to take their shirt off at a party \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to drink soda for every drink if they were given the chance \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to drink alcohol on a Monday night \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be good at being the President \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to get a face tattoo \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to travel the world \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to write a book \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to become an alcoholic \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to live on a farm when they are older \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to live in a city when they are older \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to lock themselves out of their car \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be attacked by a wild animal \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to do the most embarassing things while drunk \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to spend all their money in a casino \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to go to a strip club \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to eat spicy food every day \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to fall asleep in class \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to collect snakes \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be a villain in disguise \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to fail a class \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to become a vampire \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to read books for fun \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be a strict parent \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be hit by a blunt object \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be hit by a blunt object \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be hit by a blunt object \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to sleep through an alarm \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to take the longest shower \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be a chill parent \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be arrested \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be on a reality television show \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to become famous one day \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to skip class \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to run late for a job interview \(sipCount[randomIndexSips]) (group decides).",
                    "The player who would be most likely to be the first to have a baby \(sipCount[randomIndexSips]) (group decides)."]
                let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
                
                label.text = (array[randomIndex])
                
                bubbleImage.image = UIImage(named: "bubble\(arc4random_uniform(5) + 1).png")
            }
        }
        
    }
    
    func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        player1.resignFirstResponder()
        player2.resignFirstResponder()
        player3.resignFirstResponder()
        player4.resignFirstResponder()
        player5.resignFirstResponder()
        player6.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
