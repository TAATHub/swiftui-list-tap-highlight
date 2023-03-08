import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTapTableViewContollerButton(_ sender: Any) {
        self.navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    @IBAction func onTapButton(_ sender: Any) {
        self.navigationController?.pushViewController(UIHostingController(rootView: ListView()), animated: true)
    }
}

