import Foundation

struct Pjesma {
    let naziv: String
    var popularnost: Int
}

class Album {
    var pjesme: [Pjesma]

    lazy var najpopularnijaPjesma: Pjesma? = {
        print("Inicijaliziram svojstvo najpopularnije pjesme")
        return pjesme.max(by: { $0.popularnost < $1.popularnost })
    }()

    init(pjesme: [Pjesma]) {
        self.pjesme = pjesme
    }
}

var moodyBlueAlbum = Album(pjesme: [
    Pjesma(naziv: "Littl' Darlin", popularnost: 952_386),
    Pjesma(naziv: "Moody Blue", popularnost: 19_661_683),
    Pjesma(naziv: "Let Me Be There", popularnost: 1_237_139)
])

print(moodyBlueAlbum.najpopularnijaPjesma)
/**
 * Inicijaliziram svojstvo najpopularnije pjesme
 * Pjesma(naziv: "Moody Blue", popularnost: 19_661_683)
 */

moodyBlueAlbum.pjesme.append(
    Pjesma(naziv: "Unchained Melody", popularnost: 38_195_505)
)

print(moodyBlueAlbum.najpopularnijaPjesma)
/**
 * Pjesma(naziv: "Moody Blue", popularnost: 19_661_683)
 */