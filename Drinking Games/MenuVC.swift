//
//  MenuVC.swift
//  Drinking Games
//
//  Created by Tim Drevitch on 4/27/20.
//  Copyright © 2020 Tim Drevitch. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    
    @IBOutlet weak var gameOfNeversClean: UIButton!
    @IBOutlet weak var gameOfHavesClean: UIButton!
    @IBOutlet weak var gameOfNeversDirty: UIButton!
    @IBOutlet weak var gameOfHavesDirty: UIButton!
    
    var gamePicked = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameOfNeversClean.layer.cornerRadius = 20
        gameOfHavesClean.layer.cornerRadius = 20
        gameOfNeversDirty.layer.cornerRadius = 20
        gameOfHavesDirty.layer.cornerRadius = 20
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func HandHNpressed(_ sender: Any) {
        gamePicked = 1
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func HandHNDirtyPressed(_ sender: Any) {
        gamePicked = 3
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func Game2Pressed(_ sender: Any) {
        gamePicked = 2
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NeverHaveIEverVC
        vc.gameChosen = self.gamePicked
    }
    
    @IBAction func Game4Pressed(_ sender: Any) {
        gamePicked = 4
        performSegue(withIdentifier: "segue", sender: self)
    }
    

}

