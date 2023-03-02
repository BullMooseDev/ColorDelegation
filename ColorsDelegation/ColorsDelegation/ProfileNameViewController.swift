import UIKit

class ProfileNameViewController: UIViewController, ColorPickerDelegate {
    
    @IBOutlet var profileNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func colorButtonTapped(color: UIColor) {
        profileNameTextField.tintColor = color
        profileNameTextField.textColor = color
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorPickerViewController = segue.destination as? ColorPickerViewController {
            colorPickerViewController.delegate = self
        }
    }
    
}

