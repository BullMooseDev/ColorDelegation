import UIKit

protocol ColorPickerDelegate: AnyObject {
    func colorButtonTapped(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorButtonTapped(_ sender: UIButton) {
        
        guard let title = sender.titleLabel?.text else {
            fatalError()
        }
        
        switch title {
        case "red":delegate?.colorButtonTapped(color: .red)
        case "blue": delegate?.colorButtonTapped(color: .blue)
        case "green": delegate?.colorButtonTapped(color: .green)
        case "yellow": delegate?.colorButtonTapped(color: .yellow)
        default: fatalError("fatal error at color button \(title)")
        }
        
        dismiss(animated: true)
    }
    
}
