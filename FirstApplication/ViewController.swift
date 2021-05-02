//
//  ViewController.swift
//  FirstApplication
//
//  Created by Alex Hil on 28.01.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var appDescription: UILabel!
    @IBOutlet weak var appDescriptionInputTitle: UILabel!
    @IBOutlet weak var descriptionTextField: UITextField! {
        didSet {
            self.descriptionTextField.clearButtonMode = .always
        }
    }
    @IBOutlet weak var colorView: UIView! {
        didSet {
            self.colorView.backgroundColor = .systemGray
        }
    }
    @IBOutlet weak var tapMeButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        print(self.logoLabel.text ?? "")
        print(self.tapMeButton.currentTitle ?? "")

        self.setUpView()
    }

    @IBAction func typingDidEnd(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if let inputText = self.descriptionTextField.text,
              !inputText.isEmpty {
            self.changeAppDescription(with: inputText)
            self.colorView.backgroundColor = .systemGreen
        } else {
            self.colorView.backgroundColor = .systemRed
        }
    }

    private func setUpView() {
        self.logoLabel.textColor = .systemOrange

        self.setButton(text: "Hello, tap me!")

        self.changeAppDescription(with: "The best app in the world. Ho-ho")
    }

    private func setButton(text: String) {
        self.tapMeButton.setTitle(text, for: .normal)
    }

    private func changeAppDescription(with text: String) {
        self.appDescription.text = text
    }
}
