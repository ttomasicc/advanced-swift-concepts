protocol GlazbenaKompozicija {
    var naziv: String { get set }
    var trajanje: Int { get set }

    init(naziv: String, trajanje: Int)
}

class Pjesma: GlazbenaKompozicija {
    var naziv: String
    var trajanje: Int

    // initializer requirement 'init(naziv:trajanje:)' can only be
    // satisfied by a 'required' initializer in non-final class 'Pjesma'
    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
    }
}