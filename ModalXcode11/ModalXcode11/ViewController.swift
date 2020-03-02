import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
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
            style = "none"
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
