import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        print("Returned through unwind segue.")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let style: String

        switch segue.destination.modalPresentationStyle {
        case .automatic:
            style = "automatic"
        case .currentContext:
            style = "currentContext"
        case .custom:
            style = "custom"
        case .formSheet:
            style = "formSheet"
        case .fullScreen:
            style = "fullScreen"
        case .none:
            style = "none"
        case .overCurrentContext:
            style = "overCurrentContext"
        case .overFullScreen:
            style = "overFullScreen"
        case .pageSheet:
            style = "pageSheet"
        case .popover:
            style = "popOver"
        @unknown default:
            fatalError("Maybe there will be new case.")
        }
        print(style)
    }
}
