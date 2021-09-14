//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Sidraque on 11/09/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var quizManager = QuizManager()
    var totalCorrectAnswers: Int = 1
    var totalAnswers: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        
        if totalAnswers == 0{
            lbScore.text = "Responda pelo menos uma pergunta"
        }else{
            let score = totalCorrectAnswers*100/totalAnswers
            lbScore.text = "\(score)%"
        }
    }
    
    @IBAction func close(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
