 //
//  CollectionViewController.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 05/06/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit



class CollectionViewController:  UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var QuizzCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuizzCollectionView.delegate = self
        QuizzCollectionView.dataSource = self
        

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//
        // Do any additional setup after loading the view.
    }
    override var prefersStatusBarHidden: Bool {
        return true
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

   func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return Model.instance.quizzes.count
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! QuizzCollectionViewCell
        let quizz = Model.instance.quizzes [indexPath.row]
        cell.imgTitulo.image = quizz.imagem
        cell.lblTitulo.text = quizz.nome
    
        // Configure the cell
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Model.instance.quizzAtual = indexPath.row
        performSegue(withIdentifier: "quizzSegue", sender:nil )
    }
    
 }


  
