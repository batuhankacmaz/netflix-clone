//
//  SearchResultsVC.swift
//  Netflix Clone
//
//  Created by Batuhan Kacmaz on 3.04.2023.
//

import UIKit

class SearchResultsVC: UIViewController {
    
    private var titles: [Title] = [Title]()
    
    private let searchResultsCollectionView: UICollectionView = {
       
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 3 - 10, height: 200)
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TitleCVCell.self, forCellWithReuseIdentifier: TitleCVCell.identifier)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGreen
        view.addSubview(searchResultsCollectionView)
        
        searchResultsCollectionView.delegate = self
        searchResultsCollectionView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchResultsCollectionView.frame = view.bounds
    }
    

}

extension SearchResultsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCVCell.identifier, for: indexPath) as? TitleCVCell else {
            return UICollectionViewCell()
        }
        
        cell.backgroundColor = .blue
        return cell
    }
    
    
}
