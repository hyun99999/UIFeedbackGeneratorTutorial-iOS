//
//  ViewController.swift
//  UIFeedbackGeneratorTutorial-iOS
//
//  Created by kimhyungyu on 2022/02/17.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    var notificationFeedbackGenerator: UINotificationFeedbackGenerator?
    var impactFeedbackGenerator: UIImpactFeedbackGenerator?
    var selectionFeedbackGenerator: UISelectionFeedbackGenerator?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNotificationFeedbackGenerator()
    }
    
    // UINotificationFeedbackGenerator action
    @IBAction func touchNotificationSuccessButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.success)
    }
    
    @IBAction func touchNotificationWarningButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.warning)
    }
    
    @IBAction func touchNotificationErrorButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.error)
    }
    
    // UIImpactFeedbackGenerator action
    @IBAction func touchImpactHeavyButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        impactFeedbackGenerator?.impactOccurred()
        
        impactFeedbackGenerator = nil
    }
    
    @IBAction func touchImpactMediumButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        impactFeedbackGenerator?.impactOccurred()
        
        impactFeedbackGenerator = nil
    }
    
    @IBAction func touchImpactLightButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        impactFeedbackGenerator?.impactOccurred()
        
        impactFeedbackGenerator = nil
    }
    
    // UISelectionFeedbackGenerator action
    @IBAction func touchSelectionButton(_ sender: Any) {
        selectionFeedbackGenerator = UISelectionFeedbackGenerator()
        selectionFeedbackGenerator?.selectionChanged()
        
        selectionFeedbackGenerator = nil
    }
}

// MARK: - Extensions

extension ViewController {
    /// set UINotificationFeedbackGenerator
    private func setNotificationFeedbackGenerator() {
        notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        notificationFeedbackGenerator?.prepare()
    }
}
