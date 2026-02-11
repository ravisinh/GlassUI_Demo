//
//  GlobalFunction.swift
//  GlassUI_Demo
//
//  Created by Ravisinh on 2026/02/01.
//

import Foundation
import UIKit


class GlobalFunction {
    
    //MARK: Convert Normal button to Glass Button.
    class func makeGlassButton(_ button: UIButton) {

        // Remove old blur if exists
        button.subviews.forEach {
            if $0 is UIVisualEffectView {
                $0.removeFromSuperview()
            }
        }

        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let blurView = UIVisualEffectView(effect: blurEffect)

        blurView.frame = button.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        button.insertSubview(blurView, at: 0)

        // Make sure title stays visible
        button.bringSubviewToFront(button.titleLabel!)

        button.backgroundColor = .blue
        button.layer.cornerRadius = 16
        button.layer.cornerCurve = .continuous
        button.clipsToBounds = true

        // Subtle border (glass edge)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.withAlphaComponent(0.25).cgColor
    }
    
    //MARK: Convert Normal image to Glass ImageView
    class func makeGlassImageView(_ imageView: UIImageView) {
        
        imageView.image = UIImage(named: "Wallpaper.jpeg")
        // Make sure image is visible
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true

        // Remove old blur
        imageView.subviews.forEach {
            if $0 is UIVisualEffectView {
                $0.removeFromSuperview()
            }
        }

        // Create blur overlay (glass layer)
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)

        blurView.frame = imageView.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurView.isUserInteractionEnabled = false
        blurView.alpha = 0.4

        // IMPORTANT: Add blur ABOVE image
        imageView.addSubview(blurView)

        // Glass styling
        imageView.layer.cornerRadius = 20
        imageView.layer.cornerCurve = .continuous
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.withAlphaComponent(0.25).cgColor
    }
    
    class func makeGlassTextField(_ textField: UITextField) {

        // Remove existing blur if already applied
        textField.subviews.forEach {
            if $0 is UIVisualEffectView {
                $0.removeFromSuperview()
            }
        }

        // Blur effect
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)

        blurView.frame = textField.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurView.isUserInteractionEnabled = false
        blurView.alpha = 0.5   // adjust glass strength

        textField.insertSubview(blurView, at: 0)

        // Glass styling
        textField.backgroundColor = .white.withAlphaComponent(0.2)
        textField.layer.cornerRadius = 16
        textField.layer.cornerCurve = .continuous
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect

        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.white.withAlphaComponent(0.25).cgColor

        // Text styling
        textField.textColor = .label
        textField.tintColor = .label
    }


    //Convert Normal View to Glass View
    class func makeGlassView(to view: UIView) {
        let blur = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let blurView = UIVisualEffectView(effect: blur)
        blurView.frame = view.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        view.backgroundColor = .purple.withAlphaComponent(0.2)
        view.layer.cornerRadius = 20
        view.clipsToBounds = true

        view.insertSubview(blurView, at: 0)
    }
    
    

    class func makeGlassLabel(_ label: UILabel) {
        
        // Remove existing blur if already applied
        label.subviews.forEach {
            if $0 is UIVisualEffectView {
                $0.removeFromSuperview()
            }
        }

        // Create blur effect
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)

        blurView.frame = label.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurView.isUserInteractionEnabled = false
        blurView.alpha = 0.5   // adjust glass intensity

        label.insertSubview(blurView, at: 0)

        // Glass styling
        label.backgroundColor = .clear
        label.layer.cornerRadius = 5
        label.layer.cornerCurve = .continuous
        label.clipsToBounds = true

        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.clear.cgColor

        // Text styling
        label.textColor = .label
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
    }

}
