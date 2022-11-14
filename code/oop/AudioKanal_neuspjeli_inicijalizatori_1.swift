import Foundation

class Pjesma {
    let naziv: String
    let trajanje: Int

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}

class AudioKanal {
    var trenutnaPjesma: Pjesma
    var trenutnoSekunde: Int

    // neuspjeli inicijalizator
    init?(pjesma: Pjesma, pozicija: Int) {
        if (0...(pjesma.trajanje)).contains(pozicija) {
            self.trenutnoSekunde = pozicija
        } else {
            return nil
        }
        self.trenutnaPjesma = pjesma
    }
}

let megaHit = Pjesma(naziv: "Unchained Melody", trajanje: 154)

let audioKanal1 = AudioKanal(pjesma: megaHit, pozicija: 42)
print(audioKanal1)  // Optional(AudioKanal)

let audioKanal2 = AudioKanal(pjesma: megaHit, pozicija: 164)
print(audioKanal2)  // nil