

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var gussedLetter: [Character]
    
    var formattedWord: String {
        
        var guessedWord = ""
        for letter in word.characters {
            if gussedLetter.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        gussedLetter.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
    }
    
}
