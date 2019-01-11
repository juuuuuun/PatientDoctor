//
//  Symptom.m
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Symptom.h"

@implementation Symptom

- (instancetype)init {
    return [self initWithName:@"Default Symptom"];
}

- (instancetype)initWithName:(NSString *)name {
    if(self = [super init]) {
        _name = name;
    }
    return self;
}
@end
