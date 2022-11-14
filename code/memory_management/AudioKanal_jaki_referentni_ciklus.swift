import Foundation

class Pjesma {
    let naziv: String
    var trajanje: Int
    var audioKanal: AudioKanal?

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
        print("Pjesma \(self.naziv) je kreirana.")
    }

    deinit {
        print("Pjesma \(self.naziv) je obrisana.")
    }
}

class AudioKanal {
    let id: Int
    var trenutnaPjesma: Pjesma?

    init(id: Int) {
        self.id = id
        print("Audio kanal \(self.id) je kreiran.")
    }

    deinit {
        print("Audio kanal \(self.id) je obrisan.")
    }
}

var megaHit: Pjesma? = Pjesma(
    naziv: "Unchained Melody",
    trajanje: 154
    )   // Pjesma Unchained Melody je kreirana.

var audioKanal: AudioKanal? = AudioKanal(
    id: 1
    )   // Audio kanal 1 je kreiran.

// Audio kanalu pridruzujemo pjesmu koju treba pustiti.
audioKanal?.trenutnaPjesma = megaHit
// Pjesmi pridruzujemo audio kanal na kojem se pusta.
megaHit?.audioKanal = audioKanal

// Pokusamo dealocirati instance pjesme i audio kanala,
// ali bezuspjesno - problem jakog referentnog ciklusa.
megaHit = nil
audioKanal = nil