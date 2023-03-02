import UIKit

class IconViewController: UIViewController, ColorPickerDelegate {

    @IBOutlet var iconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func colorButtonTapped(color: UIColor) {
        iconImageView.tintColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ColorPickerViewController {
            viewController.delegate = self
        }
    }


}
