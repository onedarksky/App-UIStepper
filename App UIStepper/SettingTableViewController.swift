//
//  SettingTableViewController.swift
//  App UIStepper
//
//  Created by 江庸冊 on 2021/10/14.
//

import UIKit

class SettingTableViewController: UITableViewController {
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
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
