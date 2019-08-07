//
//  InterfaceController.swift
//  SomDosBichos WatchKit Extension
//
//  Created by Eduarda Mello on 06/08/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation


class InterfaceController: WKInterfaceController {
    
    var player = AVAudioPlayer()

    @IBAction func cao() {
        executarSom(nomeSom: "cao")
    }
    @IBAction func gato() {
        executarSom(nomeSom: "gato")
    }
    @IBAction func leao() {
        executarSom(nomeSom: "leao")
    }
    @IBAction func macaco() {
        executarSom(nomeSom: "macaco")
    }
    @IBAction func ovelha() {
        executarSom(nomeSom: "ovelha")
    }
    @IBAction func vaca() {
        executarSom(nomeSom: "vaca")
    }
    
    
    func executarSom(nomeSom: String){
        
        let caminho = Bundle.main.path(forResource: nomeSom, ofType: "mp3")
        let url = URL(fileURLWithPath: caminho!)
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
        }catch{
            print("Erro ao executar o som!")
        }
        
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
}
