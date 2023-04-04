//
//  ContentView.swift
//  DrawConnect
//
//  Created by Luc Steinert on 04.04.23.
//

import UIKit

class ViewController: UIViewController {

    // Data model
    struct User {
        let id: Int
        let name: String
    }
    
    struct Drawing {
        let id: Int
        let imageData: Data
        let sender: User
        let recipient: User
    }
    
    // UI elements
    let imageView = UIImageView()
    let colorPicker = UISegmentedControl(items: ["Red", "Green", "Blue"])
    let sendButton = UIBarButtonItem(title: "Send", style: .plain, target: ViewController.self, action: #selector(sendDrawing))
    
    // Properties
    var currentUser: User?
    var currentDrawing: Drawing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the UI layout
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view.addSubview(colorPicker)
        colorPicker.translatesAutoresizingMaskIntoConstraints = false
        colorPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        colorPicker.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        
        navigationItem.rightBarButtonItem = sendButton
        
        // Set up gesture recognizer
        let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        imageView.addGestureRecognizer(panRecognizer)
    }
    
    // Gesture recognizer handler
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer) {
        // Handle drawing on the image view
        // ...
    }
    
    // Button action
    @objc func sendDrawing() {
        // Use Apple's Push Notification service to send the drawing to the other user
        // ...
    }
}


