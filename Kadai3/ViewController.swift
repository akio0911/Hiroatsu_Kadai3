//
//  ViewController.swift
//  Kadai3
//
//  Created by Hiroatsu on 2021/07/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextFiled: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButton(_ sender: UIButton) {
        let leftNumber = Int(leftTextFiled.text!) ?? 0
        let leftNewNumber: Int
        let rightNumber = Int(rightTextField.text!) ?? 0
        let rightNewNumber: Int

        // 左側のスイッチ
        if leftSwitch.isOn {
            leftLabel.text = "-\(leftNumber)"
            leftNewNumber = Int(leftLabel.text!) ?? 0
        } else {
            leftLabel.text = String(leftNumber)
            leftNewNumber = Int(leftLabel.text!) ?? 0
        }

        // 右側のスイッチ
        if rightSwitch.isOn {
            rightLabel.text = "-\(rightNumber)"
            rightNewNumber = Int(rightLabel.text!) ?? 0
        } else {
            rightLabel.text = String(rightNumber)
            rightNewNumber = Int(rightLabel.text!) ?? 0
        }
        resultLabel.text = String(leftNewNumber + rightNewNumber)
    }
}
