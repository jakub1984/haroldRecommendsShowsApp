//
//  ViewController.swift
//  haroldWatchesShows
//
//  Created by Jakub Perich on 07/12/2018.
//  Copyright © 2018 Jakub Perich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var addShowTextfield: UITextField!
    @IBOutlet weak var haroldSpoken: UILabel!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var addShowStackviews: UIStackView!
    @IBOutlet weak var firstShowsStackview: UIStackView!
    @IBOutlet weak var whatBingeButton: UIButton!
    @IBOutlet weak var randomShowStackview: UIStackView!
    
    var shows: [String] = []
    

    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomShowStackview.isHidden = true
        firstShowsStackview.isHidden = true
        whatBingeButton.isHidden = true
    }

    
    
    @IBAction func addShowButtonWasPressed(_ sender: Any) {
        guard let showName =  addShowTextfield.text
            else
        {return}
        
        if !showName.isEmpty{
        shows.append(showName)
        updateShowsLabel()
        addShowTextfield.text = ""
        firstShowsStackview.isHidden = false
        if shows.count > 1 {
        whatBingeButton.isHidden = false
        }
        }
    }
    
    
    
    @IBAction func whatBingeButtonPressed(_ sender: Any) {
         randomShowLabel.text = shows[Int.random(in: 0..<shows.count)]
        randomShowStackview.isHidden = false

    }
    
  

    
}

