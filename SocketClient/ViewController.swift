//
//  ViewController.swift
//  SocketClient
//
//  Created by Jefin on 31/05/19.
//  Copyright © 2019 jefin. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {
    
    let manager = SocketManager(socketURL: URL(string: "http://localhost:3000")!, config: [.log(true), .compress])
    var socket:SocketIOClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        socket = manager.defaultSocket
        addHandlers()
        socket.connect()
     
        
    }
    
    func addHandlers() {
        socket.on(clientEvent: .connect) {data, ack in
            ack.with("Connected")
            print("socket connected")
            let myJSON = [
                "room_name": 12
            ]
            self.socket.emit("join", myJSON);
        }

}

}
