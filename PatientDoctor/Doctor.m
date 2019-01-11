//
//  Doctor.m
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init {
    return [self initWithName:@"Default Name" andSpecialization:@"None"];
}

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    if(self = [super init]) {
        _name = name;
        _specialization = specialization;
        _listOfPatients = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)receivePatient:(Patient *)patient {
    if(patient.healthCard != nil) {
        [self.listOfPatients setObject:patient forKey:patient.healthCard];
        NSLog(@"\nPatient: %@ admitted to Doctor: %@", patient.name, self.name);
    } else {
        NSLog(@"\nYou need a health card to be admitted.");
    }
    
}

- (Prescription *)requestMedicationForPatient:(NSNumber *)patientNumber {
    if(self.listOfPatients[patientNumber] != nil) {
        Prescription* prescription = [[Prescription alloc] init];
        prescription.patient = self.listOfPatients[patientNumber];
        prescription.listOfSymptoms = self.listOfPatients[patientNumber].listOfSymptoms;
        [self.allPrescriptions.prescriptionList addObject:prescription];
        return prescription;
    } else {
        NSLog(@"\n%@ cannot treat unregistered patient", self.name);
        return nil;
    }
    
}

@end
