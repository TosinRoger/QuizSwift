//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Roger Tosin on 02/04/18.
//  Copyright © 2018 Roger Tosin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrected: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "perguntas respondidas: \(totalAnswers)"
        lbCorrected.text = "perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100 / totalAnswers
        lbScore.text = "\(score)%"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil )
    }
}
