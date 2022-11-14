import Foundation

class AudioKanal {
    static let maxLevel = 100
    static var maxLevelSvihAudioKanala = 0
    var trenutanLevel = 0 {
        // promatrac prije postavljanja nove vrijednosti
        willSet {
            print("Zelim postaviti trenutan level na \(newValue).")
        }

        // nova vrijednost se postavlja

        // promatrac nakon postavljanja nove vrijednosti
        didSet(stariLevel) {
            // ogranicava postavljanje levela kanala iznad
            // maksimalnog levela
            if trenutanLevel > AudioKanal.maxLevel {
                print("Uneseni level je previsok!" +
                      "Smanjujem na \(AudioKanal.maxLevel).")
                trenutanLevel = AudioKanal.maxLevel
            }

            // uvazavanje promjena nad svojstvom maksimalnog
            // levela svih audio kanala
            if trenutanLevel > AudioKanal.maxLevelSvihAudioKanala {
                AudioKanal.maxLevelSvihAudioKanala = trenutanLevel
            }

            if trenutanLevel - stariLevel > 0 {
                print("Level povecan za \(trenutanLevel - stariLevel).")
            } else if trenutanLevel - stariLevel < 0 {
                print("Level smanjen za \(stariLevel - trenutanLevel).")
            } else {
                print("Level ostaje nepromijenjen: \(stariLevel).")
            }
        }
    }
}

let lijeviAK = AudioKanal()
let desniAK = AudioKanal()

lijeviAK.trenutanLevel = 10
/**
 * Zelim postaviti trenutan level na 10.
 * Level povecan za 10.
 */
print("Level lijevog AK: \(lijeviAK.trenutanLevel)")    // 10
lijeviAK.trenutanLevel = 24
/**
 * Zelim postaviti trenutan level na 24.
 * Level povecan za 14.
 */
print("Level lijevog AK: \(lijeviAK.trenutanLevel)")    // 24

print("Maksimalan level svih AK: " +
      "\(AudioKanal.maxLevelSvihAudioKanala)")  // 24

desniAK.trenutanLevel = 124
/**
 * Zelim postaviti trenutan level na 124.
 * Uneseni level je previsok! Smanjujem na 100.
 * Level povecan za 100.
 */
print("Level desnog AK: \(desniAK.trenutanLevel)")  // 100

print("Maksimalan level svih AK: " +
      "\(AudioKanal.maxLevelSvihAudioKanala)")  // 100