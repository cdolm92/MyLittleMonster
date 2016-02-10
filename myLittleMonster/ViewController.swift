//
//  ViewController.swift
//  myLittleMonster
//
//  Created by Christella on 2/8/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("ITEM DROPPED ON CHAR")
    }
    
    
    
  

   


}

