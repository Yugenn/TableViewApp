//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 祐源宏行 on 2021/10/31.
//

import UIKit

class AddListViewController: UIViewController {
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = [] //追加したリストを格納する配列
    
    //画面が読み込まれ、表示する前に一度だけ呼ばれる関数です。
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDedaults = UserDefaults.standard
        if userDedaults.object(forKey: "add") != nil {
        taskArray = userDedaults.object(forKey: "add") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard //そのままだと長いので変数に入れる
        taskArray.append(addTextField.text!) //TextFieldで記入されたテキストを入れる
        
        
        
        userDefaults.set(taskArray, forKey: "add")
        
        
        //キー"add"で配列をUserDefaultsに保存
        self.navigationController?.popViewController(animated: true) //一つ前の画面に戻る
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
