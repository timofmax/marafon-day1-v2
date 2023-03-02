//  Created by Timofey Privalov on 01.03.2023.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cornerRadius: CGFloat = 12.0
        let gradient = CAGradientLayer()

        gradient.frame.size = myView.frame.size
        gradient.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = cornerRadius

        myView.layer.addSublayer(gradient)
        myView.layer.cornerRadius = cornerRadius

        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOffset = CGSize(width: 4, height: 4)
        myView.layer.shadowOpacity = 0.7
        myView.layer.shadowRadius = 5.0

    }
}

