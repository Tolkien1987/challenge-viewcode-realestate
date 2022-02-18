//
//  ViewController.swift
//  ViewCodeChallenge-RealEstate
//
//  Created by Rodrigo Borges on 29/09/21.
//

import UIKit

class PropertyListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let apiClient = RealEstateAPIClient()
        
        apiClient.fetchProperties { properties in
            
            print(properties)
        }
    }
    
    override func loadView() {
        self.view = LoginView()
    }
}

