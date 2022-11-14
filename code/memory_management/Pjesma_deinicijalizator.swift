import Foundation

class Pjesma {
    let naziv: String
    var trajanje: Int

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }

    // deinicijalizator
    deinit {
        print("Pjesma \(self.naziv) je obrisana.")
    }
}

var megaHit: Pjesma? = Pjesma(naziv: "Unchained Melody", trajanje: 154)
megaHit = nil   // Pjesma Unchained Melody je obrisana.