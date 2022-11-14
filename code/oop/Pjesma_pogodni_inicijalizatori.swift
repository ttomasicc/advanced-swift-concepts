import Foundation

enum Zanr {
    case rockabilly, blues, jazz, reggae, nesvrstano
}

class Pjesma {
    let naziv: String
    let trajanje: Int
    let tempo: Int?
    let zanr: Zanr

    init(naziv: String, trajanje: Int, tempo: Int?, zanr: Zanr) {
        self.naziv = naziv
        self.trajanje = trajanje
        self.tempo = tempo
        self.zanr = zanr
    }

    // pogodni inicijalizator
    convenience init(naziv: String, trajanje: Int) {
        self.init(
            naziv: naziv,
            trajanje: trajanje,
            tempo: nil,
            zanr: Zanr.nesvrstano
        )
    }
}

let megaHit = Pjesma(naziv: "Unchained Melody", trajanje: 154)

print("Naziv: \(megaHit.naziv)")        // Unchained Melody
print("Trajanje: \(megaHit.trajanje)s") // 154s
print("Tempo: \(megaHit.tempo)")        // nil
print("Zanr: \(megaHit.zanr)")          // nesvrstano