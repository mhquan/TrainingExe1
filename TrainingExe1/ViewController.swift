//
//  ViewController.swift
//  TrainingExe1
//
//  Created by Quan on 7/10/17.
//  Copyright © 2017 Quan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        TrainingExe11()
        TrainingExe12()
        TrainingExe13()
        TrainingExe14()
        TrainingExe15()
    }
    
    //MARK: TrainingExe11: In ra màn hình chữ “Hello World”

    func TrainingExe11() {
        print("Hello World")
    }
    
//MARK: TrainingExe12: In ra màn hình hình chữ nhật có dạng sau (...)
    func TrainingExe12() {
        print("****************")
        print("*              *")
        print("*              *")
        print("*              *")
        print("*              *")
        print("*              *")
        print("****************")
    }
    
//MARK: TrainingExe13: Khai báo một mảng gồm các chuỗi, thêm một phần tử vào mảng. In ra mảng trước và sau khi thêm.
    func TrainingExe13() {
        var arr1 = ["a","b","c"]
        print(arr1)
        arr1.append("d")
        print(arr1)
    }
    
//MARK: TrainingExe14: Khai báo một dictionary để lưu thông tin của người dùng (tên, tuổi, địa chỉ, số điện thoại). In ra tên của người dùng đó.
    func TrainingExe14() {
        let dict1: [String:Any] = [
            "name": "Calvin",
            "address": "Newton",
            "age": 13,
            "phone": 12345678
        ]
        print(dict1["age"] ?? "age is empty")
    }

    
//MARK: TrainingExe15: Khai báo một mảng gồm chuỗi các dictionary lưu thông tin của người dùng (như câu 4). Sắp xếp mảng theo độ tuổi tăng dần của người dùng và in ra màn hình.
    func TrainingExe15() {
        var people: [[String:Any]] = [
            [
                "name": "Calvin",
                "address": "Newton",
                "age": 13,
                "phone": 12345678
            ],
            [
                "name": "Garry",
                "address": "NewYork",
                "age": 23,
                "phone": 12345678
            ],
            [
                "name": "Leah",
                "address": "Paris",
                "age": 10,
                "phone": 12345678
            ],
            [
                "name": "Sonja",
                "address": "Moreno",
                "age": 3,
                "phone": 12345678
            ],
            [
                "name": "Noel",
                "address": "Bowen",
                "age": 16,
                "phone": 12345678
            ]
        ]
        
        func compareAge(first: [String:Any], second: [String:Any]) -> Bool {
            if let a = first["age"] as? Int {
                if let b = second["age"] as? Int {
                    return a < b
                }
            }
            return false
        }
        
        people.sort(by: compareAge)
        
        for (i, person) in people.enumerated() {
            if let name = person["name"] as? String {
                if let age = person["age"] as? Int {
                    print("\(name) - ages: \(age)")
                }
            }
        }
    }
}
