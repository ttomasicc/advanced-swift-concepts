import Foundation

class Pjesma {
    let naziv: String
    var trajanje: Int

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
        print("Pjesma \(self.naziv) je kreirana.")
    }

    deinit {
        print("Pjesma \(self.naziv) je obrisana.")
    }
}

// Kreiranje triju referenci na tip Pjesma?
var megaHit: Pjesma?
var topHit: Pjesma?
var ultraHit: Pjesma?

megaHit = Pjesma(
    naziv: "Unchained Melody",
    trajanje: 154
    )   // Pjesma Unchained Melody je kreirana.

// Stvaranje jakih referenci na megaHit instancu
topHit = megaHit
ultraHit = megaHit

megaHit = nil
print("megaHit je dealociran")
topHit = nil
print("topHit je dealociran")
ultraHit = nil  // Pjesma Unchained Melody je obrisana. 
print("ultraHit je dealociran")