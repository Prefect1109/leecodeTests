import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SolutionManager.shared().run()
    }

    override var representedObject: Any? {
        didSet {
        }
    }
}
