//
//  main.m
//  PatientDoctor
//
//  Created by Jun Oh on 2019-01-09.
//  Copyright © 2019 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrescriptionList.h"
#import "Prescription.h"
#import "Symptom.h"
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor* doctorOne = [[Doctor alloc] initWithName:@"Doctor One" andSpecialization:@"Oneing"];
        Doctor* twoDoctor = [[Doctor alloc] initWithName:@"Two Doctor" andSpecialization:@"Twoing"];
        
        Patient* sickPatient = [[Patient alloc] initWithName:@"Sick Patient" andAge:99];
        sickPatient.healthCard = [NSNumber numberWithInt:1];
        [sickPatient addSymptom:[[Symptom alloc] initWithName:@"cancer"] ];
        
        Patient* notSick = [[Patient alloc] initWithName:@"Not Sick" andAge:15];
        notSick.healthCard = [NSNumber numberWithInt:2];
        Patient* noHealthCard = [[Patient alloc] initWithName:@"No Healthcard" andAge:50];
        
        [doctorOne receivePatient:noHealthCard];
        [doctorOne receivePatient:sickPatient];
        [twoDoctor receivePatient:notSick];
        
        Prescription* sickPatientPrescriptionFromOne = [doctorOne requestMedicationForPatient:sickPatient.healthCard];
        
        [doctorOne requestMedicationForPatient:notSick.healthCard];
        
        
        
    }
    return 0;
}
