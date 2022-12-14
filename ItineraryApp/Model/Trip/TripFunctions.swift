//
//  TripFunctions.swift
//  ItineraryApp
//
//  Created by Igor Polousov on 26.09.2022.
//

import Foundation
import UIKit

class TripFunctions {
    
    
    // Создать путешествие
    static func createTrip(tripModel: TripModel) {
        Data.tripModels.append(tripModel)
    }
    
    // Получить данные для таблицы от путешествия
    static func readTrips(completion: @escaping ()->()) {
        
        DispatchQueue.global(qos: .userInteractive).async {
            // Fake data for building interface model
            if Data.tripModels.count == 0 {
                Data.tripModels = MockData.createMockTripData()
            }
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    // Получить данные для таблицы по trip id
    
    static func readTrip(by id: UUID, completion: @escaping (TripModel?) -> ()) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            let trip = Data.tripModels.first(where: { $0.id == id })
            
            DispatchQueue.main.async {
                completion(trip)
            }
        }
    }
    
    // Изменить данные путешествия
    static func updateTrip(at index: Int, title: String, image: UIImage? = nil) {
        Data.tripModels[index].title = title
        Data.tripModels[index].image = image
    }
    
    // Удалить путешествие
    static func deletetrip(index: Int) {
        Data.tripModels.remove(at: index)
    }
}
