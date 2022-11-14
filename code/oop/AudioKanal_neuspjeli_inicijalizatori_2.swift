class AudioKanal {
    var trenutnaPjesma: Pjesma
    var trenutnoSekunde: Int

    init?(pjesma: Pjesma, pozicija: Int) {
        guard (0...(pjesma.trajanje)).contains(pozicija) else {
            return nil
        }
        self.trenutnaPjesma = pjesma
        self.trenutnoSekunde = pozicija
    }
}