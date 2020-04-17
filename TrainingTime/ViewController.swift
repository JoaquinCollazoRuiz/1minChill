import UIKit

class ViewController: UIViewController {
    //CONTADOR
    var timer = Timer()
    var segundos:Int = 60
    
    
    @IBOutlet weak var contador: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func startBtn(_ sender: UIButton) {
                
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(cadaSegundo), userInfo: nil, repeats: true)
        
    }
    
    @objc func cadaSegundo(){
        segundos -= 1
        contador.text = "\(segundos)"
        
        if (segundos == 0){
            timer.invalidate()
            segundos = 5
        }
    }
    
    func tiempo(){
        if segundos == 0 {
            contador.text = "0"
        }
    }
}
