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
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) mainLabel에 "선택하세요"
        // 2) numberLabel에는 "" (공백)
        
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        // 3) 선택한 숫자를 변수에 저장 (선택 : 저장하지 않는 방식도 있음)
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교, Up / Down / Bingo (mainLabel)
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인레이블 "선택하세요"
        // 2) 컴퓨터의 랜덤숫자를 다시 선택하게 해야함
        // 3) numberLabel을 "" (빈문자열)
        
        
    }
    
}

