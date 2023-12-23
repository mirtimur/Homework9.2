import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goToSecondScreenButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
                
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func goToThirdScreenButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ThirdViewController", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else { return }
                
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}

