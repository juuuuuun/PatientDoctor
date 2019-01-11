//
//  Doctor.h
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"
#import "PrescriptionList.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableDictionary<NSNumber*, Patient*>* listOfPatients;
@property (nonatomic, strong) PrescriptionList* allPrescriptions;

- (instancetype) initWithName:(NSString *)name
            andSpecialization:(NSString *)specialization;

- (void) receivePatient:(Patient *)patient;

- (Prescription *) requestMedicationForPatient:(NSNumber *)patientNumber;

@end

NS_ASSUME_NONNULL_END
