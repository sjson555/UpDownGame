//
//  ViewController.swift
//  UpDownGame
//
//  Created by 손성준 on 7/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 1~10 사이의 숫자를 선택해야함
    var comNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수
    // var myNumber: Int = 1
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1) mainLabel에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) numberLabel에는 "" (공백)
        numberLabel.text = ""
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        // 반드시 각각 currentTitle을 가지고 있는 상황이니
        // 옵셔널을 !로 강제로 벗겨도 됨
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에 (문자열을 숫자로 변환 후) 저장 (선택 : 저장하지 않는 방식도 있음)
        // guard let num = Int(numString) else { return }
        // myNumber = num
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 0) myNumber 없이 구현
        // 숫자레이블에 있는 문자열 가져오기(옵셔널 벗기기)
        guard let myNumberString = numberLabel.text else { return }
        // 타입 변환 (문자열 --> 정수)
        guard let myNumber = Int(myNumberString) else { return }
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교, Up / Down / Bingo (mainLabel)
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😎"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) numberLabel을 "" (빈문자열)
        numberLabel.text = ""
        
        // 3) 컴퓨터의 랜덤숫자를 다시 선택하게 해야함
        comNumber = Int.random(in: 1...10)
        
    }
    
}

