//
//  GuidePage.swift
//  Uber
//
//  Created by MoHuilin on 16/2/20.
//  Copyright © 2016年 MoHuilin. All rights reserved.
//

import UIKit
import AVFoundation

class GuidePage: FxBasePage {

    @IBOutlet var loginImageView:UIImageView!
    @IBOutlet var videoView:UIView!
    
    var player:AVPlayer!
    var playerItem:AVPlayerItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        self.videoView.backgroundColor = UIColor.yellowColor()
        initPlayVideo()
        doAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func doAnimation()
    {
        var images:[UIImage] = []
        var image:UIImage?
        var imageName:String?
        
        for var index = 0 ;index<=67;index++ {
            imageName = "logo-" + String(format: "%03d", index)
            image = UIImage(named: imageName!)
            images.insert(image!, atIndex: index)
        }
        
        loginImageView.animationImages = images
        loginImageView.animationRepeatCount = 1;
        loginImageView.animationDuration = 5;
        loginImageView.startAnimating()
        
        UIView.animateWithDuration(0.7, delay: 5, options: .CurveEaseOut, animations: { () -> Void in
            self.videoView.alpha = 1.0
            self.player.play()
            }) { (Bool) -> Void in
                
        }
    }
    
    func initPlayVideo()
    {
        let path :String = NSBundle.mainBundle().pathForResource("welcome_video", ofType: "mp4")!
        let url = NSURL.fileURLWithPath(path)
        playerItem = AVPlayerItem(URL: url)
        
        player = AVPlayer(playerItem: playerItem)
        let playerLayer = AVPlayerLayer(player: player)
        
        FxLog("frame \(self.videoView.frame)")
        
        playerLayer.frame = self.videoView.bounds
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspect
        videoView.layer.insertSublayer(playerLayer, atIndex: 0)
        videoView.alpha = 0.0
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didFinishVideo:", name: AVPlayerItemDidPlayToEndTimeNotification, object: playerItem)
    }
    
    func didFinishVideo(sender :NSNotification)
    {
        let item = sender.object as! AVPlayerItem
        
        item.seekToTime(kCMTimeZero)
        
        self.player.play()
    }
    
    deinit
    {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

}
