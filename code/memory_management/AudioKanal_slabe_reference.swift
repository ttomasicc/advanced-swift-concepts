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
    weak var trenutnaPjesma: Pjesma?    // slaba referenca

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

audioKanal?.trenutnaPjesma = megaHit
megaHit?.audioKanal = audioKanal

megaHit = nil       // Pjesma Unchained Melody je obrisana.
audioKanal = nil    // Audio kanal 1 je obrisan.