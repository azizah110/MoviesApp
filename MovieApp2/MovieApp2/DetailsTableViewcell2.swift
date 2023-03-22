//
//  DetailsTableViewcell2.swift
//  MovieApp2
//
//  Created by azizah ahmed alshami on 29/08/1444 AH.
//
import UIKit

class DetailsTableViewcell2: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var mainpicture: UIImageView!
    @IBOutlet weak var shadow: UIImageView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var Englishtext: UILabel!
    @IBOutlet weak var text4: UILabel!
    @IBOutlet weak var text5: UILabel!
    @IBOutlet weak var text6: UILabel!
    @IBOutlet weak var text7: UILabel!
    @IBOutlet weak var story: UILabel!
    @IBOutlet weak var story_movie: UILabel!
    @IBOutlet weak var Imdb: UILabel!
    @IBOutlet weak var line: UIImageView!
    @IBOutlet weak var image_director: UIImageView!
    @IBOutlet weak var imeg3: UILabel!
    @IBOutlet weak var name_disector: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var image_stars: UIImageView!
    @IBOutlet weak var line2: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var outof5: UILabel!
    @IBOutlet weak var Graybutton: UIButton!
    @IBOutlet weak var textrevi: UILabel!
    
    var arrdata = [Reviewer] ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        collectionView.delegate = self
//        collectionView.dataSource = self
      collection.delegate = self //error//
          collection.dataSource = self //error//
 
        
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : DetailsCollectionViewCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "colReviewcell", for: indexPath) as! DetailsCollectionViewCell2
        return cell
    }
//    
    func  Getdata(){
        let baseURL="https://11d9528c-d6bd-49b7-87cb-232cc0a0e490.mock.pstmn.io"
        let url = URL(string: baseURL+"/reviews/:movie_id")!
        
        let task = URLSession.shared.dataTask(with: url) { (data,response ,error ) in
            do {if error == nil {
                
                self.arrdata = try JSONDecoder().decode([Reviewer].self, from: data!)
                for mainarr in self .arrdata{
                    DispatchQueue.main.async {
                        self.collection.reloadData()
                    }
                }
            }
            }catch{
                print("Error in get json data\(error)")
            }
            
        }
        task.resume()
    }
//        func setSelected(_ selected: Bool, animated: Bool) {
//            super.setSelected(selected, animated: animated)
//        }




        func collection(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
        }

        func collection(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell : DetailsCollectionViewCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "colReviewcell", for: indexPath) as! DetailsCollectionViewCell2
            return cell
        }
    }

