//
//  ViewController.swift
//  GlynkProject
//
//  Created by Pro Retina on 13/01/18.
//  Copyright © 2018 Pro Retina. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //var arrayData = [Any]()
    var resultData = [[String:Any]]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        getJsonData()
    }

    
    @IBAction func likeButtonTapped(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name:"Main",bundle: nil)
        let VC = storyBoard.instantiateViewController(withIdentifier: "AnimationViewController") as! AnimationViewController
        navigationController?.pushViewController(VC, animated: true)
    }
    
    
    
    
    
    func getJsonData(){
        
        
        
        if let path = Bundle.main.path(forResource: "FeedJson", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let person = jsonResult["feed"] as? [Any] {
                    // do stuff
                   // print(person.count)
                    
                    for i in 0..<person.count {
                        
                        var dicData = [String:Any]()
                        let arrayData = person[i] as! [String:Any]
                        let post = arrayData["post"] as! [String:Any]
                       // let topic = post["topic"] as! [String:Any]
                        dicData["text"] = post["text"] as! String
//                        dicData["image"] = topic["image"] as! String
//                        dicData["title"] = topic["title"] as? String
                       // dicData["num_likes"] = topic["num_likes"] as? NSNumber
                      // dicData["num_comments"] = topic["num_comments"] as? NSNumber
                        resultData.append(dicData)
        
                    }
                    
//                    arrayData = [person[0]]
//                    let data = arrayData[0] as! NSDictionary
                    print(resultData[0])
                    
                }
            } catch let err {
                print(err)
                // handle error
            }
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GTableViewCell
         return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }


}

