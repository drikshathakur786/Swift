//
//  BasicCollectionViewController.swift
//  BasicCollectionViewSample
//
//  Created by Driksha Thakur on 15/10/25.
//

import UIKit

private let reuseIdentifier = "Cell"

// creating states array to populate item
private let states = ["Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh", "Uttarakhand", "West Bengal", "Andaman and Nicobar Islands", "Chandigarh", "Dadra and Nagar Haveli and Daman and Diu", "Delhi", "Jammu and Kashmir", "Ladakh", "Lakshadweep", "Puducherry"]

class BasicCollectionViewController: UICollectionViewController {

    
//    private func generateLayout() -> UICollectionViewLayout { // creates and returns layout
//        
//        let itemSize = NSCollectionLayoutSize(
//            widthDimension: .fractionalWidth(1.0), // takes 100% width of its container
//            // jo uske upar ka container hai uski width lele = fractionalWidth
//            // .fractionWidth: 0-1
//            heightDimension:  .fractionalHeight(1.0))
//        // these are height and width constraints ki uske outer container k comparison mai uski width/height kitni honi cahiye
//        // 1= 100 cuz its acc to percentage
//        
//        let item = NSCollectionLayoutItem(layoutSize: itemSize) // this is what one cell will look like
//        
//        let spacing: CGFloat = 10
//        
//        let groupSize = NSCollectionLayoutSize(
//            widthDimension: .fractionalWidth(1.0),
//            heightDimension: .absolute(70)) // fixed 70
//        
//        let group = NSCollectionLayoutGroup.horizontal(
//            layoutSize: groupSize,
//            subitem: item,
//            count: 1)
//        
//        group.contentInsets = NSDirectionalEdgeInsets( // for adding spacing/ padding
//            top: spacing,
//            leading: spacing,
//            bottom: 0,
//            trailing: spacing)
//        
//        let section = NSCollectionLayoutSection(group: group)
//        
//        let layout = UICollectionViewCompositionalLayout(section: section)
//        
//        return layout
//        
//        
//    }
    
    private func generateLayout() -> UICollectionViewLayout {
    return UICollectionViewCompositionalLayout { sectionIndex, _ in
        switch sectionIndex {
        case 0:
            // Section 1 - Horizontally scrollable list of states with spacing and bigger backgrounds
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .absolute(150),
                heightDimension: .absolute(60)
            )
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
                    
            // spacing around each item
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)
                    
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .absolute(150),
                heightDimension: .absolute(70)
            )
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                    
            let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                    
            // overall section insets
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)
            return section
                    
            case 1:
                // Section 2 - Grid layout (vertically scrollable)
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.5),
                    heightDimension: .absolute(100)
                )
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                    
                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.0),
                    heightDimension: .estimated(200)
                )
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item, item])
                    
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
                return section
                    
                default:
                    // Section 3 - Vertical list style
                    let itemSize = NSCollectionLayoutSize(
                        widthDimension: .fractionalWidth(1.0),
                        heightDimension: .absolute(70)
                    )
                    let item = NSCollectionLayoutItem(layoutSize: itemSize)
                    item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)
                    
                    let groupSize = NSCollectionLayoutSize(
                        widthDimension: .fractionalWidth(1.0),
                        heightDimension: .absolute(70)
                    )
                    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                    
                    let section = NSCollectionLayoutSection(group: group)
                    return section
                }
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        
        collectionView.setCollectionViewLayout(generateLayout(), animated: false)
        
        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        switch section{
        case 0:
            return 10
        case 1:
            return  12
        case 2:
            return 10
        default:
            return 10
        }
//        return states.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BasicCollectionViewCell
        
        // cellForItemAt: how the should look, dequeue nd how it will be used inside your project
        // indexPath(iterator): tell the location of the cell
        
//        cell.label.text = states[indexPath.item]
        
        switch indexPath.section{ // this is picking up which section we are in currently
        case 0:
            cell.label.text = "Item \(indexPath.item + 1)"
        case 1:
            cell.label.text = "Item \(indexPath.item + 1)"
            cell.backgroundColor = .systemTeal
        default:
            cell.label.text = "Item \(indexPath.item + 1)"
            cell.backgroundColor = .systemPink
        }
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true

        return cell
    }
 

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}


/*
 
 Data source - show the data items
 delegates - handles interaction
 
 Data Source provides the data (what to show), while Delegate handles behavior and user interactions (how it responds).
 */
