//
//  ViewController.swift
//  TwitterSampleApp
//
//  Created by takashima kohei on 2023/03/28.
//
import UIKit
import Foundation


class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    var tweets: [Tweet] = []
    let TableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        self.setupTweet()
    }
    
    func setupTweet() {
        tweets = [Tweet(id: "takashima", body: "本文ツイート", createdAt: Date()), Tweet(id: "kohei", body: "二回目", createdAt: Date()), Tweet(id: "iphone", body: "どこいった", createdAt: Date())]
    }
}

extension ViewController: UITableViewDataSource {
    
    // セクションの個数を返す
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // セクションごとにセルの個数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    // セルの中身を返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.setCell(tweet: tweets[indexPath.row])

        return cell
    }
    // セルの高さを返す
    func tableview(_ tableview: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

extension ViewController: UITableViewDelegate {
    
    // セルがタップされた時の処理を書く
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セルがタップされました。")
    }
    // スクロールした時の処理を書く
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        return
    }
}
    



