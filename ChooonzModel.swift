//
//  ChooonzModel.swift
//  
//
//  Created by John Claro on 18/05/2016.
//
//

import UIKit

class ChooonzModel: NSObject {
    
    func getChooonzs() -> [Chooonz] {
        var chooonzs = [Chooonz]()
        
        let chooonz1 = Chooonz(youtubeTitle: "Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck Such Dumb Luck", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "lGsawtEQJos", artistName: "The Pale The Pale The Pale The Pale The Pale The Pale The Pale The PaleThe Pale The Pale The Pale The Pale The Pale The Pale The Pale", artistImage: UIImage(named: "the_pale")!, artistDescription: "The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track. The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track. The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track. The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track. The Pale started life in Dublin's Northside in the early 90's but drew their influences from far beyond. For some they are best remembered for their hits 'Butterfly' and 'Dogs with no tails'. But that is only the tip of the iceberg for a band that has steered clear of the beaten track.")
        
        chooonzs.append(chooonz1)
        
        let chooonz2 = Chooonz(youtubeTitle: "Shake Shake", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "QTAx0uUpJz0", artistName: "REWS", artistImage: UIImage(named: "rews")!, artistDescription: "REWS is the Irish/ London based high energy female duo consisting of songstress Shauna Tohill and beat-maker Collette Williams who together are creating a genuine buzz with their brand of ultra catchy high energy alt rock.")
        
        chooonzs.append(chooonz2)
        
        let chooonz3 = Chooonz(youtubeTitle: "I Was Born", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "bTkUBgQummw", artistName: "Otherkin", artistImage: UIImage(named: "otherkin")!, artistDescription: "Dublin grunge-pop outfit Otherkin keep the raucous rock vibes going in a world of soulless synth pop.")
        
        chooonzs.append(chooonz3)
        
        let chooonz4 = Chooonz(youtubeTitle: "Nothing Lasts Forever", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "5E5Pquvx5hA", artistName: "MKAI", artistImage: UIImage(named: "mkai")!, artistDescription: "All adept players from an early age, MKAI incorporate wandering guitar figure, piano and electronics into songs replete with a strong sense of melody and urgency.")
        
        chooonzs.append(chooonz4)
        
        let chooonz5 = Chooonz(youtubeTitle: "Tempting Me", youtubeThumbnail: UIImage(named: "photoNotAvailable")!, youtubeID: "aI7XUBExCyI", artistName: "In The Willows", artistImage: UIImage(named: "in_the_willows")!, artistDescription: "Formed in 2011 as an acoustic trio, Waterford band In The Willows gained speedy recognition. The band has now evolved to a sextet, still mixing it up across the genres! In The Willows’ debut album saw the group mixing the lines between folk, alternative, pop and rock to create their own heartwarming and aurally fulfilling sound.")
        
        chooonzs.append(chooonz5)
        
        return chooonzs
    }
    
}
