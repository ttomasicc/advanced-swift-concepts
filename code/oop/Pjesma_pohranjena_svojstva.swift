import Foundation

class Pjesma {
    // pohranjena svojstva instance
    let naziv: String       // konstantno svojstvo instance
    var trajanje: Int = 120 // varijabilno predefinirano svojstvo instance
    let tempo: Int?         // konstantno opcionalno svojstvo instance

    init(naziv: String) {
        self.naziv = naziv
        self.tempo = nil
    }

    init(naziv: String, trajanje: Int, tempo: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
        self.tempo = tempo
    }
}

let megaHit = Pjesma(naziv: "Unchained Melody")

print("Naziv mega hita: \(megaHit.naziv)")          // Unchained Melody
print("Trajanje mega hita: \(megaHit.trajanje)")    // 120

megaHit.trajanje = 174
print("Trajanje mega hita: \(megaHit.trajanje)")    // 174