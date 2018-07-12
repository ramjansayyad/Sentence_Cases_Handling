# Sentence_Cases_Handling
Easy way to handle lower case, upper case, make initial character of first word to upper case or make first character of all words in sentence to upper case.

This is tested by xcode 9.4 & swift version 4.

Let's take a example,
```
        let tempStr = "ramjan Ambir sayyad"
```
### 1) Lower case:
```
        print(tempStr.lowercased())
```
This will print,
```
ramjan ambir sayyad
```
### 2) Upper case:
```
        print(tempStr.uppercased())
```
This will print,
```
RAMJAN AMBIR SAYYAD
```

### 3) Making first character of all words to upper case in sentence:
```
        print(tempStr.capitalized)
```
This will print,
```
Ramjan Ambir Sayyad
```

### 4) Making only initial character of first word to upper case in sentence: 
Now to handle this kind of situation, there is no default function available in swift, 
but this can be acheived easity by creating simple extension on string class.
```
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst().lowercased()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
```
Then we can call above function as,
```
print(tempStr.capitalizingFirstLetter())
```
This will print,
```
Ramjan ambir sayyad
```
