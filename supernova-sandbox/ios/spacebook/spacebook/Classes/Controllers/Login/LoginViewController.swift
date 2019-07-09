//
//  LoginViewController.swift
//  spacebook
//
//  Created by [Author].
//  Copyright © 2018 growthmonsters. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class LoginViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var logInLabel: UILabel!
    @IBOutlet weak var welcomeBackLabel: UILabel!
    @IBOutlet weak var loginFieldsView: UIView!
    @IBOutlet weak var yourNicknameTextField: UITextField!
    @IBOutlet weak var yourPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: SupernovaButton!
    @IBOutlet weak var forgotYourPasswordButton: SupernovaButton!
    var backBarButtonItem: UIBarButtonItem!
    private var allGradientLayers: [CAGradientLayer] = []


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup loginView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.519, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.544, green: 0.107, blue: 0.547, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        
        // Setup logInLabel
        let logInLabelAttrString = NSMutableAttributedString(string: "Log in", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.logInLabel.attributedText = logInLabelAttrString
        
        // Setup welcomeBackLabel
        
        // Setup loginFieldsView
        self.loginFieldsView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginFieldsView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginFieldsView.layer.shadowRadius = 50
        self.loginFieldsView.layer.shadowOpacity = 1
        
        self.loginFieldsView.layer.cornerRadius = 2
        self.loginFieldsView.layer.masksToBounds = true
        
        // Setup yourNicknameTextField
        
        // Setup yourPasswordTextField
        
        // Setup loginButton
        self.loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginButton.layer.shadowRadius = 50
        self.loginButton.layer.shadowOpacity = 1
        
        self.loginButton.layer.cornerRadius = 2
        self.loginButton.layer.masksToBounds = true
        self.loginButton.snImageTextSpacing = 10
        
        // Setup forgotYourPasswordButton
        self.forgotYourPasswordButton.snImageTextSpacing = 10
        
    }

    private func setupUI()  {
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.backBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
        // Navigation
        self.navigationItem.title = NSLocalizedString("LoginViewController.navigationBarTitle", comment: "")
        
        self.backBarButtonItem.title = NSLocalizedString("Login.backBarButtonItem", comment: "")
        
        // Components
        self.logInLabel.replaceAttributedStringText(withLocalizedText: NSLocalizedString("Login.logInLabel", comment: ""))
        self.welcomeBackLabel.text = NSLocalizedString("Login.welcomeBackLabel", comment: "")
        self.yourNicknameTextField.placeholder = NSLocalizedString("Login.yourNicknameTextField", comment: "")
        self.yourPasswordTextField.placeholder = NSLocalizedString("Login.yourPasswordTextField", comment: "")
        self.loginButton.setTitle(NSLocalizedString("Login.loginButton", comment: ""), for: .normal)
        self.forgotYourPasswordButton.setTitle(NSLocalizedString("Login.forgotYourPasswordButton", comment: ""), for: .normal)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in self.allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onGroupPressed(_ sender: UIView)  {
        // Pop the navigation stack or dismiss the modal presentation
        if let navigationController = self.navigationController, navigationController.viewControllers.first != self {
            navigationController.popViewController(animated: true)
        } else if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction public func onLoginPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Timeline", sender: nil)
    }

    @IBAction public func onForgotYourPasswordPressed(_ sender: UIButton)  {
    
    }
}
