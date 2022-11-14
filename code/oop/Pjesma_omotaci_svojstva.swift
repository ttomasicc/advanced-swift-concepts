import Foundation

@propertyWrapper
struct Kapitalizirano {
    var wrappedValue: String {
        didSet {
             wrappedValue = wrappedValue.capitalized
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

@propertyWrapper
struct Nenegativno {
    var wrappedValue: Int = 0 {
        didSet {
            if wrappedValue < 0 {
                wrappedValue = 0
            }
        }
    }

    init(wrappedValue: Int) {
        if wrappedValue >= 0 {
            self.wrappedValue = wrappedValue
        } else {
            self.wrappedValue = 0
        }
    }
}

class Pjesma {
    @Kapitalizirano var naziv: String
    @Kapitalizirano var izvodac: String
    @Nenegativno var trajanje: Int

    init(naziv: String, izvodac: String, trajanje: Int) {
        self.naziv = naziv
        self.izvodac = izvodac
        self.trajanje = trajanje
    }
}

let megaHit = Pjesma(
    naziv: "unchained melody",
    izvodac: "elvis presley",
    trajanje: 151)

print("Naziv: \(megaHit.naziv)")        // Unchained Melody
print("Izvodac: \(megaHit.izvodac)")    // Elvis Presley
print("Trajanje: \(megaHit.trajanje)")  // 151

megaHit.naziv = "moody blue"
megaHit.trajanje = -74

print("Novi naziv: \(megaHit.naziv)")       // Moody Blue
print("Novo trajanje: \(megaHit.trajanje)") // 0