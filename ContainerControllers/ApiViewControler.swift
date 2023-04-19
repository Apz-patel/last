//
//  ApiViewControler.swift
//  lenskart clone 123
//
//  Created by Ayush Patel on 27/03/23.
//

import UIKit
import Alamofire

class ApiViewControler: UIViewController {
    var arrDetails: [StudentProfile] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        apicalling()
    }
    private func apicalling() {
        tableView.separatorStyle = .none
        AF.request("https://gorest.co.in/public/v2/users",method: .get).responseData  { response in
            debugPrint("response\(response)")
            if response.response?.statusCode == 200 {
                guard let apiData = response.data else { return }
                do {
                    self.arrDetails = try JSONDecoder().decode([StudentProfile].self, from: apiData)
                    print(self.arrDetails)
                }catch{
                    print("error")
                }
            } else {
                print("SOMETHING WENT WRONG!!!")
            }
        }
    }
}
extension ApiViewControler: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ApiTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ApiTableViewCell
        cell.id.text = "\(arrDetails[indexPath.row].id)"
        cell.name.text = arrDetails[indexPath.row].name
        cell.email.text = arrDetails[indexPath.row].email
        cell.gender.text = arrDetails[indexPath.row].gender
        cell.status.text = arrDetails[indexPath.row].status
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
struct StudentProfile: Decodable{
    var id : Double
    var name : String
    var email : String
    var gender : String
    var status : String
}
