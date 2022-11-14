import Foundation

class Pjesma {
    let naziv: String
    var trajanje: Int
    unowned let singl: Singl    // neposjedovana referenca

    init(naziv: String, trajanje: Int, singl: Singl) {
        self.naziv = naziv
        self.trajanje = trajanje
        self.singl = singl
        print("Pjesma \(self.naziv) je kreirana.")
    }

    deinit {
        print("Pjesma \(self.naziv) je obrisana.")
    }
}

class Singl {
    var pjesma: Pjesma?

    init() {
        print("Singl je kreiran.")
    }

    deinit {
        print("Singl je obrisan.")
    }
}

var singl: Singl? = Singl() // Singl je kreiran.
singl?.pjesma = Pjesma(
    naziv: "Unchained Melody",
    trajanje: 154,
    singl: singl!
    )   // Pjesma Unchained Melody je kreirana.

singl = nil
// Singl je obrisan.
// Pjesma Unchained Melody je obrisana.