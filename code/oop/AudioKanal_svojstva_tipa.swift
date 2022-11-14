import Foundation

class AudioKanal {
    // pohranjena svojstva tipa AudioKanal
    static let maxLevel = 100
    static var maxLevelSvihAudioKanala = 0
    // pohranjeno predefinirano svojstvo instance
    var trenutanLevel = 0
}

print("Max level AK: \(AudioKanal.maxLevel)")                       // 100
print("Max level svih AK: \(AudioKanal.maxLevelSvihAudioKanala)")   // 0