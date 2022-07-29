//
//  ObservableObject.swift
//  DoctorPoint
//
//  Created by Micheal Hany on 7/28/22.
//

import Foundation

class ObservableObject<T>{
    
    var value : T{
        didSet{
            listener?(value)
        }
    }
    
    var listener : ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listner : @escaping (T) -> Void){
        
        listner(value)
        self.listener = listner
        
    }
}
