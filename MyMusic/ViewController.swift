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
    //ギター音源ファイルを指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    //ギター用のプレイヤーインスタンス作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        do {
            //ギター用のプレイヤーに音源ファイルを指定
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
            
            guitarPlayer.play()
        } catch {
            print("guitar error")
        }
    }
    
    let backMusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    
    var backMusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do {
            backMusicPlayer = try AVAudioPlayer(contentsOf: backMusicPath, fileTypeHint: nil)
            backMusicPlayer.numberOfLoops = -1
            backMusicPlayer.play()
        } catch {
            print("backmusic error")
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        //バックミュージック停止
        backMusicPlayer.stop()
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("caused error")
        }
    }
    
}

