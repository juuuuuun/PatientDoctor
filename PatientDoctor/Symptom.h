//
//  Symptom.h
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Symptom : NSObject

@property (nonatomic, strong) NSString* name;

- (instancetype) initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
