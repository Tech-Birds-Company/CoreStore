//
// Demo
// Copyright © 2020 John Rommel Estropia, Inc. All rights reserved.

import UIKit
import CoreStore


// MARK: - Advanced.EvolutionDemo.V2.Creature

@objc(Advanced_EvolutionDemo_V2_Creature)
final class Advanced_EvolutionDemo_V2_Creature: NSManagedObject, Advanced.EvolutionDemo.CreatureType {

    @NSManaged
    dynamic var dnaCode: Int64
    
    @NSManaged
    dynamic var numberOfFlippers: Int32
    
    @NSManaged
    dynamic var hasVertebrae: Bool
    
    @NSManaged
    dynamic var hasHead: Bool
    
    @NSManaged
    dynamic var hasTail: Bool
    
    
    // MARK: CustomStringConvertible
    
    override var description: String {
        
        return """
            dnaCode: \(self.dnaCode)
            numberOfFlippers: \(self.numberOfFlippers)
            hasVertebrae: \(self.hasVertebrae)
            hasHead: \(self.hasHead)
            hasTail: \(self.hasTail)
            """
    }
    
    
    // MARK: Advanced.EvolutionDemo.CreatureType
    
    func mutate(in transaction: BaseDataTransaction) {
        
        self.numberOfFlippers = .random(in: 1...4) * 2
        self.hasVertebrae = .random()
        self.hasHead = true
        self.hasTail = .random()
    }
}
