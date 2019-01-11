//
//  Patient.h
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Symptom.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property (nonatomic) NSInteger age;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSNumber* healthCard;
@property (nonatomic, strong) NSMutableSet<Symptom*>* listOfSymptoms;

- (instancetype) initWithName:(NSString *)name
                       andAge:(NSInteger)age;

- (void) addSymptom:(Symptom *)symptom;
- (void) removeSymptom:(Symptom *)symptom;


@end

NS_ASSUME_NONNULL_END
