//
//  Patient.m
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init {
    return [self initWithName:@"Default Name" andAge:0];
}

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age {
    if(self = [super init]) {
        _name = name;
        _age = age;
        _listOfSymptoms = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)addSymptom:(Symptom *)symptom {
    [self.listOfSymptoms addObject:symptom];
}

- (void)removeSymptom:(Symptom *)symptom {
    [self.listOfSymptoms removeObject:symptom];
}
@end
