import Foundation

class Pjesma {
    let naziv: String
    let izvodac: String
    var trajanje: Int

    // lijeno svojstvo
    lazy var bpm: Int = {
        sleep(3)    // simulacija slozene obrade
        return 76
    }()

    init(naziv: String, izvodac: String, trajanje: Int) {
        self.naziv = naziv
        self.izvodac = izvodac
        self.trajanje = trajanje
    }
}

let megaHit = Pjesma(
    naziv: "Unchained Melody",
    izvodac: "Elvis Presley",
    trajanje: 151)

print("Tempo mega hita: \(megaHit.bpm)") // ispis nakon obrade (3s)
print("Tempo mega hita: \(megaHit.bpm)") // instantno vraca vrijednost