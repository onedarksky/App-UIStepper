//
//  ViewController.swift
//  App UIStepper
//
//  Created by 江庸冊 on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {
    //漸層
    func setupGradientBackground() {
         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = view.bounds
         gradientLayer.colors = [
            CGColor(srgbRed: 239/255, green: 188/255, blue: 156/255, alpha: 0.5),
            CGColor(srgbRed: 185/255, green: 230/255, blue: 215/255, alpha: 1)
         ]
         view.layer.insertSublayer(gradientLayer,
                                   at: 0)
    }
  //QTY旁的TextField
    //炭治郎
    @IBOutlet weak var TanjiroKamadoTextField: UITextField!
    //善逸
    @IBOutlet weak var ZenitsuAgatsumaTextField: UITextField!
    //伊之助
    @IBOutlet weak var InosukeHashibiraTextField: UITextField!
    //彌豆子
    @IBOutlet weak var NezukoKamadoTextField: UITextField!
    //煉獄
    @IBOutlet weak var KyojuroRengokuTextField: UITextField!
    //胡蝶忍
    @IBOutlet weak var ShinobuKochoTextField: UITextField!
    //香奈乎
    @IBOutlet weak var KanaoTsuyuriTextField: UITextField!
    
    //Stepper
    //炭治郎
    @IBOutlet weak var TanjiroKamadoStepper: UIStepper!
    //善逸
    @IBOutlet weak var ZenitsuAgatsumaUIStepper: UIStepper!
    //伊之助
    @IBOutlet weak var InosukeHashibiraStepper: UIStepper!
    //彌豆子
    @IBOutlet weak var NezukoKamadoStepper: UIStepper!
    //煉獄
    @IBOutlet weak var KyojuroRengokuStepper: UIStepper!
    //胡蝶忍
    @IBOutlet weak var ShinobuKochoStepper: UIStepper!
    //香奈乎
    @IBOutlet weak var KanaoTsuyuriStepper: UIStepper!
    
    //total旁的Label
    @IBOutlet weak var TotalLabel: UILabel!
    
    
    //宣告設定玩具數量的初始值為0
    var itemTanjiroKamado: Int = 0
    var itemZenitsuAgatsuma: Int = 0
    var itemInosukeHashibira: Int = 0
    var itemNezukoKamado: Int = 0
    var itemKyojuroRengoku: Int = 0
    var itemShinobuKocho: Int = 0
    var itemKanaoTsuyuri: Int = 0
    
    //取得stepper的值
    @IBAction func ChangeQTY(_ sender: UIStepper) {
        itemTanjiroKamado = Int(TanjiroKamadoStepper.value)
        itemZenitsuAgatsuma = Int(ZenitsuAgatsumaUIStepper.value)
        itemInosukeHashibira = Int(InosukeHashibiraStepper.value)
        itemNezukoKamado = Int(NezukoKamadoStepper.value)
        itemKyojuroRengoku = Int(KyojuroRengokuStepper.value)
        itemShinobuKocho = Int(ShinobuKochoStepper.value)
        itemKanaoTsuyuri = Int(KanaoTsuyuriStepper.value)
        
    //抓TextField
        TanjiroKamadoTextField.text = "\(itemTanjiroKamado)"
        ZenitsuAgatsumaTextField.text = "\(itemZenitsuAgatsuma)"
        InosukeHashibiraTextField.text = "\(itemInosukeHashibira)"
        NezukoKamadoTextField.text = "\(itemNezukoKamado)"
        KyojuroRengokuTextField.text = "\(itemKyojuroRengoku)"
        ShinobuKochoTextField.text = "\(itemShinobuKocho)"
        KanaoTsuyuriTextField.text = "\(itemKanaoTsuyuri)"
        
        
        calculate()

    //將所有Stepper的 值＊金額加總，如果想同金額就是，例如 299 * (東西 ＋ 東西 )
        func calculate(){
            let sum = 668 * itemTanjiroKamado + 559 * itemZenitsuAgatsuma + 680 * itemInosukeHashibira + 3990 * itemNezukoKamado + 990 * itemKyojuroRengoku + 2900 * itemShinobuKocho + 6999 * itemKanaoTsuyuri
            
            //將金額顯示於totalLabel
            TotalLabel.text = "\(sum)"
        }
    }
    
    
    //清除所有值：將所有stepper, textField值, totalLabel設為0
    //拉Button
    @IBAction func clearAll(_ sender: UIButton) {
        TanjiroKamadoStepper.value = 0
        ZenitsuAgatsumaUIStepper.value = 0
        InosukeHashibiraStepper.value = 0
        NezukoKamadoStepper.value = 0
        KyojuroRengokuStepper.value = 0
        ShinobuKochoStepper.value = 0
        KanaoTsuyuriStepper.value = 0
        
        
        TanjiroKamadoTextField.text = "0"
        ZenitsuAgatsumaTextField.text = "0"
        InosukeHashibiraTextField.text = "0"
        NezukoKamadoTextField.text = "0"
        KyojuroRengokuTextField.text = "0"
        ShinobuKochoTextField.text = "0"
        KanaoTsuyuriTextField.text = "0"
        TotalLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
        // Do any additional setup after loading the view.
    }


}

