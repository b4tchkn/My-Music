//
//  ViewController.swift
//  MyMusic
//
//  Created by Kakeru Nakabachi on 2018/03/13.
//  Copyright © 2018年 kakeru nakabachi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")

    //シンバル用のプレイヤーインスタンス作成
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
        do {
        //シンバル用のプレイヤーに音源ファイル名を指定
        cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        
        //シンバルの音源再生
        cymbalPlayer.play()
        } catch {
            print("cymbal error")
        }
    }
}

