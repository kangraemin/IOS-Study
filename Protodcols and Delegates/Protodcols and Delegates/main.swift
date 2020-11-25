
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happend ?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    let name: String
    
    init(handler: EmergencyCallHandler, name: String) {
        self.name = name
        handler.delegate = self
    }
    
    func performCPR() {
        print("\(self.name) The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr....")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio, name: "pete")
//let rams = Paramedic(handler: emilio, name: "rams")
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
// EmergencyCallHandler doesn't affect by delegate ! 
