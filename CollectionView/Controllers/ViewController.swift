//
//  ViewController.swift
//  CollectionView
//
//  Created by Thaliees on 6/21/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var container: UICollectionView!
    
    // Get and define the width of screen of device. Define the height of our card (according to your need)
    private let widthScreen = UIScreen.main.bounds.width, heightCard:CGFloat = 347, trailing:CGFloat = 8, leading:CGFloat = 8
    private var technologyList = [TechnologyModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Uncomment the next two lines, if you didn't implement the Delegate and DataSource from the Storyboard
        //container.delegate = self
        //container.dataSource = self
        initList()
    }
    
    // MARK: Methods UICollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return technologyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create cell to show
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "technologyCell", for: indexPath) as! TechnologyCollectionViewCell
        // Set resources
        cell.imageTechnology.image = UIImage(named: self.technologyList[indexPath.row].image)
        cell.nameTechnology.text = self.technologyList[indexPath.row].name.uppercased()
        cell.descriptionTechnology.text = self.technologyList[indexPath.row].description
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let result = (trailing * 2) + (leading * 2)
        return CGSize(width: widthScreen - result, height: heightCard)
    }
    
    // MARK: Custom Methods
    private func initList(){
        // Initialize dataset.
        // (This data would usually come from a local content provider or remote server)
        // For example, we will obtain 8 data of the TechnologyModel type
        var technology:TechnologyModel = TechnologyModel(image: "im_android_studio", name: "Android Studio", description: "Is the official Integrated Development Environment (IDE) for Android app development, based on IntelliJ IDEA . On top of IntelliJ's powerful code editor and developer tools, Android Studio offers even more features that enhance your productivity when building Android apps.")
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_asp_net", name: "Asp.net", description: "ASP.NET is an open source web framework, created by Microsoft, for building modern web apps and services that run on macOS, Linux, Windows, and Docker.");
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_java", name: "JAVA", description: "Is a programming language that produces software for multiple platforms. When a programmer writes a Java application, the compiled code (known as bytecode) runs on most operating systems (OS), including Windows, Linux and Mac OS. Java derives much of its syntax from the C and C++ programming languages.")
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_laravel", name: "Laravel", description: "Is an open source framework for developing web applications and services with PHP 5 and PHP 7. It attempts to eliminate the pain of development by facilitating common tasks that are used in most web projects, such as authentication, routing, sessions, and caching. Laravel aims to make the development process pleasant for the developer without sacrificing the functionality of the application.")
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_mongodb", name: "MongoDB", description: "Is a document database with the scalability and flexibility that you want with the querying and indexing that you need.")
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_sqlserver", name: "SQLServer", description: "Is a relational database management system, or RDBMS, developed and marketed by Microsoft.")
        technologyList.append(technology)
        technology = TechnologyModel(image: "im_xcode", name: "Xcode", description: "Is the official Integrated Development Environment (IDE) for macOS app development, which contains a set of tools created by Apple for the development of software for macOS, iOS, watchOS and tvOS.")
        technologyList.append(technology)
    }
}

