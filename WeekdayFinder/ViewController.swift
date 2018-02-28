import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findWeekDay(_ sender: UIButton) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(yearTextField.text!)
        
        let date = calendar.date(from: dateComponents)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekday = dateFormatter.string(from: date!)
        
        resultLabel.text = weekday
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // method hides keyboard when user makes a touch view anywhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

