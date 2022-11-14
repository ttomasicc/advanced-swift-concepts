import Foundation

class Pjesma {
    let naziv: String
    let trajanje: Int

    init(naziv: String, minute trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje * 60
    }

    init(naziv: String, sekunde trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}

let pjesma1 = Pjesma(naziv: "Any Day Now", minute: 3)
let pjesma2 = Pjesma(naziv: "Unchained Melody", sekunde: 152)

print(pjesma1.trajanje) // 180
print(pjesma2.trajanje) // 152