func stringSort (str:  String) -> String {
	var charsCounted = [Character: Int]()
	var sortedChars = [Character]()
	var outString = String()
	var orderlyChars = [Character]()
	if !str.isEmpty {
		for char in str.characters {
		if !charsCounted.keys.contains(char) {
			charsCounted[char] = 1
			sortedChars.append(char)
		} else {
			charsCounted[char]!+=1
		}
	}
	} else {
		return "Empty string, please provide a value."
	}
	orderlyChars = sortedChars.sorted()
	for char in sortedChars {
		outString.append(char)
		if let tmp = charsCounted[char] { outString.append(String(tmp)) }
	}
	return outString
}
