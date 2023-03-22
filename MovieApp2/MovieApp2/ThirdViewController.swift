//
//  ThirdViewController.swift
//  MovieApp2
//
//  Created by azizah ahmed alshami on 29/08/1444 AH.
//
import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {
    
    
    
    
    
//    var movie : mo
    var arrdata = [MoviesData]()
    var movie:MoviesData?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(DetailsTableViewcell2.self, forCellReuseIdentifier: "colReviewcell")
        
        
        Getdata()
        
    }
    
    func  Getdata(){
        let baseURL="https://11d9528c-d6bd-49b7-87cb-232cc0a0e490.mock.pstmn.io"
        let url = URL(string: baseURL+"/movies")!
        
        let task = URLSession.shared.dataTask(with: url) { (data,response ,error ) in
            do {if error == nil {
                
                self.arrdata = try JSONDecoder().decode([MoviesData].self, from: data!)
                for _ in self .arrdata{
                    
                    print(self.arrdata)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
            }catch{
                print("Error in get json data\(error)")
            }
            
        }
        task.resume()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
        print(arrdata.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colReviewcell", for: indexPath)as! DetailsTableViewcell2
        
//        cell.address?.text = "test"
        
        let imagetoString = arrdata[indexPath.row].moviePoster
        DispatchQueue.main.async {
            let imagetoString = self.movie?.moviePoster
            if let url = URL(string: imagetoString ?? "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/9f22e23817c4accbf052e0f91a2b7821_156f8e4f-814c-4dcb-896d-0b077053cd51_500x749.jpg?v=1573593734"){
            if let data = try? Data(contentsOf: url) {
            cell.mainpicture.image = UIImage(data: data)
            }
            }
        }
        
        
//        cell.mainpicture.image = UIImage(named: arrdata[indexPath.row].moviePoster)
        cell.address?.text = arrdata[indexPath.row].movieName
        cell.text1?.text =  arrdata[indexPath.row].movieDuration
        cell.text3?.text = arrdata[indexPath.row].movieLanguage
        cell.text6?.text = arrdata[indexPath.row].movieWatcherType
        cell.story?.text = arrdata[indexPath.row].movieStory
        cell.Imdb?.text = String(arrdata[indexPath.row].movieIMDBRate) 
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->CGFloat {
        3000
    }
    
    
}
