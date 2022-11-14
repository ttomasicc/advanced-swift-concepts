import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Pokreni ovu metodu kada je detektiran bilo koji pokret mobitela
    override func motionBegan(
        _ motion: UIEventSubtype,
        with event: UIEvent?) {
        // Saznaje vrstu pokreta
        if motion == .motionShake {
            // Kreira instancu alert kontrolera
            let alert = UIAlertController(
                title: "Potres detektiran",
                message: "Ne narusavaj moj unutarnji mir!",
                preferredStyle: .alert
            )

            // Pridruzuje akciju OK (gumb)
            alert.addAction(
                UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil)
            )
            
            // Prikazuje alert na trenutnom pogledu
            self.present(alert, animated: true, completion: nil)
        }
    }
}