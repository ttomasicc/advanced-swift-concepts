class Pjesma {
    let naziv: String
    let trajanje: Int

    init(naziv: String, sekunde trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}

class AudioKanal {
    var trenutnaPjesma: Pjesma

    init(_ pjesma: Pjesma) {
        self.trenutnaPjesma = pjesma
    }
}

let pjesma = Pjesma(naziv: "Unchained Melody", sekunde: 152)
let audioKanal = AudioKanal(pjesma)