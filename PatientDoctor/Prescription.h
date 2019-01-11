//
//  Prescription.h
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Symptom.h"

NS_ASSUME_NONNULL_BEGIN

@interface Prescription : NSObject

@property (nonatomic, strong) NSSet<Symptom*>* listOfSymptoms;

@end

NS_ASSUME_NONNULL_END
