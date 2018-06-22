//
//  ViewController.swift
//  NJIJKPlayer
//
//  Created by njhu on 06/20/2018.
//  Copyright (c) 2018 njhu. All rights reserved.
//

import UIKit
import IJKMediaFramework

class ViewController: UIViewController {

    @IBOutlet weak var playContainerView: UIView!
    public var videoUrl = "http://tb-video.bdstatic.com/videocp/12045395_f9f87b84aaf4ff1fee62742f2d39687f.mp4"
    lazy var player: IJKFFMoviePlayerController = IJKFFMoviePlayerController(contentURLString: videoUrl, with: IJKFFOptions.byDefault())
    override func viewDidLoad() {
        super.viewDidLoad()
        playContainerView.addSubview(player.view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !player.isPlaying() {
            player.prepareToPlay()
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        player.view.frame = playContainerView.bounds
    }
    
    @IBAction func playClick(_ sender: Any) {
        player.play()
    }

    @IBAction func pauseClick(_ sender: Any) {
        player.pause()
    }
}

