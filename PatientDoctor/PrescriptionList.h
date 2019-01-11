//
//  PrescriptionList.h
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-10.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

NS_ASSUME_NONNULL_BEGIN

@interface PrescriptionList : NSObject

@property (nonatomic, strong) NSMutableSet<Prescription *>* prescriptionList;
@end

NS_ASSUME_NONNULL_END
