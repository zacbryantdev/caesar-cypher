var alphabet:[Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage: String = "Codecademy".lowercased()
var message = Array(secretMessage)

for var i in 0 ..< message.count {
  for var j in 0 ..< alphabet.count {
    if message[i] == alphabet[j] {
      message[i] = alphabet[(j+3) % 26]
      break
    }
    j += 1
  }
  i += 1
}
print(String(message))
