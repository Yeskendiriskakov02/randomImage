//
//  ViewController.swift
//  randomImage
//
//  Created by Yeskendir on 24.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomImage: UIImageView!
    
    let urlString = "https://api.unsplash.com/search/photos?page=1&query=office&client_id=iBdu_JxBBTS4Y9P7Xmy4Rf-GpnPfSwVIQTO_WfiRTuA"
    
    var results: [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPhotos()
    }
    
    func fetchPhotos() {
        guard let url = URL(string: urlString) else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else{
                return
            }
            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.randomImage.image = image
            }
        }.resume()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0{
            randomImage.image = UIImage()
        } else{
            randomImage.image = UIImage()
        }
    }
}
