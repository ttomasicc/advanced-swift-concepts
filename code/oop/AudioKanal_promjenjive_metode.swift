import Foundation
import Collections

struct Pjesma {
    let naziv: String
    var trajanje: Int

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}

struct AudioKanal {
    private(set) var trenutnaPjesma: Pjesma
    private(set) var redCekanja: Deque<Pjesma> = Deque()

    init(_ pjesma: Pjesma) {
        self.trenutnaPjesma = pjesma
    }

    func pokreni() {
        print("Pustam pjesmu \(self.trenutnaPjesma.naziv).")
    }

    // mutirajuca promjenjiva metoda
    mutating func dodajNaKrajReda(_ pjesme: Pjesma...) {
        redCekanja.insert(contentsOf: pjesme, at: redCekanja.endIndex)
        for pjesma in pjesme {
            print("Pjesma \(pjesma.naziv) dodana je na kraj reda.")
        }
    }

    mutating func sljedeci() {
        guard let sljedecaPjesma = redCekanja.popFirst() else {
            print("Nema pjesme u redu cekanja.")
            return
        }
        self.trenutnaPjesma = sljedecaPjesma
        self.pokreni()
    }
}

let megaHit = Pjesma(naziv: "Unchained Melody", trajanje: 154)
var kanal = AudioKanal(megaHit)
kanal.pokreni()
// Pustam pjesmu Unchained Melody.

let topHit = Pjesma(naziv: "Moody Blue", trajanje: 170)
let ultraHit = Pjesma(naziv: "Fairytale", trajanje: 165)
kanal.dodajNaKrajReda(topHit, ultraHit)
/**
 * Pjesma Moody Blue dodana je na kraj reda.
 * Pjesma Fairytale dodana je na kraj reda.
 */

kanal.sljedeci()
// Pustam pjesmu Moody Blue.
kanal.sljedeci()
// Pustam pjesmu Fairytale.
kanal.sljedeci()
// Nema pjesama u redu cekanja.