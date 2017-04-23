func reverseString (str: String) -> String {
	var outStr:  String
	var workArr: Array = [Character]()
	var tmp: Character
	if !str.isEmpty {
		for char in str.characters {
			workArr.append(char)
		}
		for i in 0...workArr.count/2 - 1{
			tmp = workArr[i]
			print(tmp)
			workArr[i] = workArr[(workArr.count - 1) - i]
			workArr[(workArr.count - 1) - i] = tmp
		}
		outStr = String(workArr)
	} else {
		return "Empty string, please provide a value"
	}
	return outStr
}
