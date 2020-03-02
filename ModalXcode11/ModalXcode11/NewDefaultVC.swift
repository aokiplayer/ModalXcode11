import UIKit

class NewDefaultVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#file.components(separatedBy: "/").last!)
    }
}
