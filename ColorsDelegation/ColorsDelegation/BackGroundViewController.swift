import UIKit

class BackGroundViewController: UIViewController, ColorPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func colorButtonTapped(color: UIColor) {
        view.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ColorPickerViewController {
            viewController.delegate = self
        }
    }
    
}
