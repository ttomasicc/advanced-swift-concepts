protocol GlazbenaKompozicija {
    var naziv: String { get set }
    var trajanje: Int { get set }

    init(naziv: String, trajanje: Int)
}

class Pjesma: GlazbenaKompozicija {
    var naziv: String
    var trajanje: Int

    // obavezni inicijalizator
    required init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}