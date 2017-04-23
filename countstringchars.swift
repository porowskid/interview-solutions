func stringCharCount (str:  String) -> String {
	var charsCounted = [Character: Int]()
	var orderedChars = [Character]()
	var outString = String()
	if !str.isEmpty {
		for char in str.characters {
		if !charsCounted.keys.contains(char) {
			charsCounted[char] = 1
			orderedChars.append(char)
		} else {
			charsCounted[char]!+=1
		}
	}
	} else {
		return "Empty string, please provide a value."
	}
	for char in orderedChars {
		outString.append(char)
		if let tmp = charsCounted[char] { outString.append(String(tmp)) }
	}
	return outString
}
