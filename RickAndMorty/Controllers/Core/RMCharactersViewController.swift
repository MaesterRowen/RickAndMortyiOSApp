//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Jeffrey Iverson on 6/19/23.
//

import UIKit


/// Controller to show and search for characters
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute( request, expecting: RMCharacter.self ) { result in
            
        }
    }

}
