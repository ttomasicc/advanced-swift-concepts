import Foundation

class Pjesma {
    let naziv: String
    var trajanje: Int = 120
    let tempo: Int?

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

class AudioKanal {
    // pohranjena varijabilna svojstva instance
    var trenutnaPjesma: Pjesma
    var trenutnoSekunde: Int = 0
    // izracunata svojstva instance moraju biti varijabilna
    var preostaleSekunde: Int {
        get {
            return trenutnaPjesma.trajanje - trenutnoSekunde
        }
    }

    init(pjesma: Pjesma) {
        self.trenutnaPjesma = pjesma
    }
}

let megaHit = Pjesma(naziv: "Unchained Melody")
let kanal = AudioKanal(pjesma: megaHit)

print("Pustam pjesmu \(megaHit.naziv)")
print("Preostalo sekundi: \(kanal.preostaleSekunde)")   // 120
kanal.trenutnoSekunde = 15
print("Preostalo sekundi: \(kanal.preostaleSekunde)")   // 105