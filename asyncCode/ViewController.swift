//
//  ViewController.swift
//  asyncCode
//
//  Created by 강지윤 on 2022/04/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    func hellCode(test : String){
//            TstoryC(test: test) { c in
//                self.TstoryB(test: c) { b in
//                    self.TstoryA(test: b) { a in
//                        print("a")
//                    }
//                }
//            }
//        }
//
//        func TstoryA(test : String , completionHandler: @escaping(_ a : String) -> ()) {
//
//            completionHandler(test)
//        }
//
//        func TstoryB(test : String ,completionHandler: @escaping(_ a : String) -> ()) {
//            completionHandler(test)
//
//        }
//
//        func TstoryC(test : String ,completionHandler: @escaping(_ a : String) -> ()) {
//
//            completionHandler(test)
//        }
    
    
    func hellCode(test : String) async throws  {
        
        let dataC = try await TstoryC(test: test)
        
        let dataB = try await TstoryB(test: dataC)
       
        try await TstoryA(test: dataB)
       
    }
    
    func TstoryA(test : String) async throws -> String  {
        
        return test
    }

    func TstoryB(test : String) async throws -> String  {
        
        return test
    }

    func TstoryC(test : String) async throws -> String  {
        
        return test
    }

}

