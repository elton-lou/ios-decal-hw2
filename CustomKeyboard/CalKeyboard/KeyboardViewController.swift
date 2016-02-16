//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var poopNextKeyboard: UIButton! // links the button to this variable
    @IBOutlet var zimbabweFlag: UIButton!
    @IBOutlet var barbadosFlag: UIButton!
    
    @IBOutlet var guamFlag: UIButton!
    @IBOutlet var slovakiaFlag: UIButton!
    @IBOutlet var djiboutiFlag: UIButton!
    @IBOutlet var arubaFlag: UIButton!
    @IBOutlet var bhutanFlag: UIButton!
    @IBOutlet var returnKey: UIButton!//enterKey
    @IBOutlet var flushKey: UIButton!//deleteKey
    @IBOutlet var bangKey: UIButton!
    @IBOutlet var explosionKey: UIButton!
    @IBOutlet var spaceKey: UIButton!//space button
    
    var keyboardView: UIView! // variable to the view // use optional because you don't have init()

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        poopNextKeyboard.addTarget(self, action: "advanceToNextInputMode:", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        barbadosFlag.addTarget(self, action: "hitBarbados:", forControlEvents: .TouchUpInside) //push Brazil button
        zimbabweFlag.addTarget(self, action: "hitZimbabwe:", forControlEvents: .TouchUpInside) //push Myanmar
        guamFlag.addTarget(self, action: "hitGuam:", forControlEvents: .TouchUpInside) //push Guam
        slovakiaFlag.addTarget(self, action: "hitSlovakia:", forControlEvents: .TouchUpInside)
        djiboutiFlag.addTarget(self, action: "hitDjibouti:", forControlEvents: .TouchUpInside)
        arubaFlag.addTarget(self, action: "hitAruba:", forControlEvents: .TouchUpInside) //aruba
        flushKey.addTarget(self, action: "hitBackSpace:", forControlEvents: .TouchUpInside)//backspace
        returnKey.addTarget(self, action: "hitEnter:", forControlEvents: .TouchUpInside)
        spaceKey.addTarget(self, action: "hitSpaceKey:", forControlEvents: .TouchUpInside)
        bangKey.addTarget(self, action: "hitBangKey:", forControlEvents: .TouchUpInside)
        bhutanFlag.addTarget(self, action: "hitBhutan:", forControlEvents: .TouchUpInside)
        explosionKey.addTarget(self, action: "hitExplosionKey:", forControlEvents: .TouchUpInside)
        
    }
    
    func hitSpaceKey(sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
    }
    func hitEnter(sender: UIButton) {
        self.textDocumentProxy.insertText("\n")
    }
    func hitBackSpace(sender: UIButton) {
        self.textDocumentProxy.deleteBackward()
    }
    func hitZimbabwe(sender: UIButton) {
        self.textDocumentProxy.insertText("Zimbabwe")
    }
    func hitBarbados(sender: UIButton) {
        self.textDocumentProxy.insertText("Barbados")
    }
    func hitGuam(sender: UIButton) {
        self.textDocumentProxy.insertText("Guam")
    }
    func hitSlovakia(sender: UIButton) {
        self.textDocumentProxy.insertText("Slovakia")
    }
    func hitDjibouti(sender: UIButton) {
        self.textDocumentProxy.insertText("Djibouti")
    }
    func hitAruba(sender: UIButton) {
        self.textDocumentProxy.insertText("Aruba")
    }
    func hitBhutan(sender: UIButton) {
        self.textDocumentProxy.insertText("Bhutan")
    }
    func hitBangKey(sender: UIButton) {
        self.textDocumentProxy.insertText("Bang")
    }
    
    func hitExplosionKey(sender: UIButton) {
        self.textDocumentProxy.insertText("KaBoom")
    }


}
