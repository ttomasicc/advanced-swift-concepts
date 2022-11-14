class Pjesma {
    let naziv: String
    let trajanje: Int
    let tempo: Int?

    init(naziv: String, trajanje: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
        self.tempo = nil
    }

    init(naziv: String, trajanje: Int, tempo: Int) {
        self.naziv = naziv
        self.trajanje = trajanje
        self.tempo = tempo
    }
}