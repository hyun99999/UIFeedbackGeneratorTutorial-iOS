# UIFeedbackGeneratorTutorial-iOS
πUIFeedbackGeneratorTutorial νν± λμμ 

### λ΄μ©

- shake motion μ μΈμν΄μ νλ©΄μ ν μ μ§λ μΆκ°

# μμ μ 

apple developer κ°λ°μ λ¬Έμμμλ μμ΄ν°μμ μ¬μ©ν λ λλ μ μλ "λλ" νΉμ "λ" νλ μ΄λ¬ν μ΄κ° κ²½νμ haptic μΌλ‘ λͺμνκ³  μλ€.

μ§λκΈ°λ₯μ μΆκ°νκΈ° μν΄μ νν± κ΄λ ¨ν΄μ κ³΅λΆλ₯Ό νλ€κ° νν± ν¨ν΄μ μ νκ³  λ΄κ° μνλ μ§λμ μκ΅¬λ λΌκ³  λκΌλ€. κ·Έλλ κ³΅λΆνκ² μμ¬μμ λ¨κΈ΄λ€.

### Haptics μ Vibrate

- λΉλ°λ²νΈ μλ ₯ μ(ex.μΉ΄μΉ΄μ€νμ΄) β νν±
- μ€μν νμ λ±μ₯ μ(ex.μΉ΄μΉ΄μ€ν‘ νμμ½λ) β λ°μ΄λΈλ μ΄νΈ

## π  [HIG - Haptics](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/)

- Human Interface Guidelines μ νμν λ΄μ©μ μ λ¦¬ν΄λ³΄μ. λ¬Έμμμ μ¬λ¬ ν¨ν΄μ μ§λ  λ―Έλμ΄κΉμ§ μ κ³΅νλ λ μμΈν λ΄μ©μ λ§ν¬λ₯Ό νμΈν΄λ³΄μ.

### Haptics

νν±μ μ¬λλ€μ μ΄κ°μ κ΄μ¬νμ¬ νλ©΄ μΈν°νμ΄μ€μ μνΈμμ©νλ κ²½νμ ν₯μμν¨λ€. μλ₯Ό λ€μ΄ μμ€νμ μκ° λ° μ²­κ° νΌλλ°±κ³Ό λλΆμ΄ νν±μ μ¬μνμ¬ Apple Pay κ±°λμ νμΈμ κ°μ‘° νμν©λλ€. λν picker λ₯Ό μ€ν¬λ‘€νκ±°λ switch λ₯Ό ν κΈνλ κ²κ³Ό κ°μ ν°μΉ μ μ€μ² λ° μνΈμμ©μ κ°μ‘°ν  μ μλ€. κ°λ°μ μ§μΉ¨μ [Animation and Haptics](https://developer.apple.com/documentation/uikit/animation_and_haptics) λ₯Ό μ°Έμ‘°ν΄λΌ.

μ§μλλ iPhone λͺ¨λΈμμλ μ¬λ¬κ°μ§ λ°©λ²μΌλ‘ μ±μ νν±μ μΆκ°ν  μ μλ€.

- Use standard UI elements β likeΒ [switches](https://developer.apple.com/documentation/uikit/uiswitch),Β [sliders](https://developer.apple.com/documentation/uikit/uislider), andΒ [pickers](https://developer.apple.com/documentation/uikit/uipickerview)Β β that play Apple-designed system haptics by default.
- When it makes sense, use a feedback generator to play one of several predefined haptic patterns in the categories ofΒ [notification](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#notification),Β [impact](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#impact), andΒ [selection](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#selection)Β (for developer guidance, seeΒ [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)).
- In situations where you want more control, compose and play your own haptic patterns. For guidance, seeΒ [Creating Custom Haptic Patterns](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#creating-custom-haptic-patterns).

μμ€ν μ κ³΅ μ»¨νΈλ‘€ λ° νν±μ μ¬μ©νλ κ²½μ° iOS λ κ°λμ νΌλλ°±μ λμμ κ΄λ¦¬νλ€. μλ₯Ό λ€μ΄ μ€μμΉλ λ―Έλ¬ν tap μ μλμΌλ‘ μ¬μνκ³  "success" notification μ λν feedback generator λ μλμ ν¨ν΄μ μ¬μνλ€. μ¬λλ€μ μμ€ν μ μ ννμ μΈμνλ―λ‘ λ¬Έμνλ μλ―Έμ λ°λΌ μ¬μ©νλ κ²μ΄ μ€μνλ€.

(μμ HIG λ¬Έμμμλ μ€μ λ‘ νν±μ μ²΄νν΄λ³Ό μ μλ€! κΌ­ λ€μ΄κ°μ νμΈν΄λ³΄κΈΈ λ°λλ€.)

### Notification

Notification haptics λ μμ λλ μμμ κ²°κ³Όμ λν νΌλλ°±μ μ κ³΅νλ€.

- λ§ν¬μμ μ¬λ¬ ν¨ν΄μ νμΈν  μ μλ€.

### Impact

Impact haptics λ μκ°μ  κ²½νμ λ³΄μνλλ° μ¬μ©ν  μ μλ λ¬Όλ¦¬μ  λ©νν¬λ₯Ό μ κ³΅νλ€. μλ₯Ό λ€μ΄ μ¬λλ€μ view κ° μ μλ¦¬μ κ³ μ λ  λ ν­μ λλΌκ±°λ λ κ°μ λ¬΄κ±°μ΄ λ¬Όμ²΄κ° μΆ©λν  λ μΏ΅ μλ¦¬λ₯Ό λλ μ μμ΅λλ€.

- λ§ν¬μμ μ¬λ¬ ν¨ν΄μ νμΈν  μ μλ€.

### Selection

Selection haptics λ UI μμμ κ°μ΄ λ³κ²½λλ λμ νΌλλ°±μ μ κ³΅νλ€.

- λ§ν¬μμ μ¬λ¬ ν¨ν΄μ νμΈν  μ μλ€.

μμ€νμμ μ κ³΅νλ νν±μ μ¬μ©νλ  μμ²΄μ μΌλ‘ λ§λ€λ  μ¬λλ€μ λͺ©νμμ λ°©ν΄νμ§ μμΌλ©΄μ μ¬μ©μ κ²½νμ νλΆνκ² λ§λλ λ°©μμΌλ‘ νν±μ μ¬μ©νλ κ²μ΄ μ€μνλ€.

---

μ΄νμ HIG λ¬Έμλ **haptics λ‘ μΈν°νμ΄μ€λ₯Ό λμμΈνλ λ΄μ©**κ³Ό **Custom Haptic Patterns λ₯Ό λ§λλ λ΄μ©**μ μ κ³΅νλ€. 

μ΄μ  κ°λ°μ λ¬Έμλ₯Ό μ΄ν΄λ³΄μ!

## π [Apple Developer - Animation and Haptics](https://developer.apple.com/documentation/uikit/animation_and_haptics)

### π Haptick Feedback

Provide haptic feedback in response to specific types of events.

- [classΒ UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)

: The abstract superclass for all feedback generators.

- [classΒ UIImpactFeedbackGenerator](https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator)

: A concreteΒ [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)Β subclass that creates haptics to simulate physical impacts.

- [classΒ UINotificationFeedbackGenerator](https://developer.apple.com/documentation/uikit/uinotificationfeedbackgenerator)

: A concreteΒ [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)Β subclass that creates haptics to communicate successes, failures, and warnings.

- [classΒ UISelectionFeedbackGenerator](https://developer.apple.com/documentation/uikit/uiselectionfeedbackgenerator)

: A concreteΒ [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)Β subclass that creates haptics to indicate a change in selection.

## π μλ¦¬

To use a feedback generator, the following are required:

1. [Instantiating the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555404)
- feedback μ μμ±νλ €λ©΄ λ¨Όμ  `UIFeedbackGenerator` ν΄λμ€μ κ΅¬μ²΄μ μΈ νμν΄λμ€(`UIImpactFeedbackGenerator`, `UISelectionFeedbackGenerator`, or `UINotificationFeedbackGenerator`) μ€ νλλ₯Ό μΈμ€ν΄μ€ν ν΄μΌν©λλ€.
2. [Preparing the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555405)Β (optional)
- generator λ₯Ό preparing νλ©΄μ feedback μ νΈλ¦¬κ±°ν λ λκΈ°μκ°μ μ€μΌ μ μλ€. μ΄κ²μ μλ¦¬ λλ μκ°μ  μ νΈμ λ§€μΉν λ νΉν μ€μνλ€.
- generator μ [prepare()](https://developer.apple.com/documentation/uikit/uifeedbackgenerator/2369818-prepare) λ©μλλ₯Ό νΈμΆνλ©΄ Taptic Engine μ΄ μ€λΉμνκ° λλ€. νμλ₯Ό λ³΄μ‘΄νκΈ° μν΄μ Taptic Engine μ μ΄ λ¨μμ μ§§μ μκ°λμ μ΄ μνλ₯Ό μ μ§νκ±°λ νΌλλ°±μ νΈλ¦¬κ±°ν λκΉμ§ μ μ§ν©λλ€.
- λ§μ½, prepare() λ©μλλ₯Ό νΈμΆν λ€μ μ¦μ νΌλλ°±μ νΈλ¦¬κ±°νλ©΄ μμ€νμ Taptic Engine μ μ€λΉλ μνλ‘ μ νν  μκ°μ΄ μΆ©λΆνμ§ μκ³ , μ§μ°μκ°μ΄ μ€μ΄λ€μ§ μμ μ μλ€. λ°λ©΄μ, prepare() λ©μλλ₯Ό λλ¬΄ μΌμ° νΈμΆνλ©΄ νΌλλ°±μ νΈλ¦¬κ±°νκΈ° μ μ Taptic Engine μ λ€μ μ¬μ©λμ§ μλ μνκ° λλ€.

(μλμ μ½λλ₯Ό λ³΄κ²λλ©΄ λ²νΌμ΄ ν΄λ¦­λκΈ° μ μ generator λ₯Ό μ€λΉνκ³ , μ‘μμ΄ μ€νλ  λ νΈλ¦¬κ±°νλ λͺ¨μ΅μ λ³Ό μ μλ€.)

3. [Triggering Feedback](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555415)
- κ° feedback generator νμ ν΄λμ€λ κ³ μ ν νΈλ¦¬κ±° λ°©λ²μ κ°μ§λ€. νΈλ¦¬κ±° νκΈ° μν΄μ [impactOccurred()](https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator/2374287-impactoccurred),Β [selectionChanged()](https://developer.apple.com/documentation/uikit/uiselectionfeedbackgenerator/2374284-selectionchanged), orΒ [notificationOccurred(_:)](https://developer.apple.com/documentation/uikit/uinotificationfeedbackgenerator/2369826-notificationoccurred) μ μ μ νκ² νΈμΆν΄μΌνλ€.
- μ΄λ° λ©μλλ€μ νΈμΆν΄λ haptic μ΄ μ§μ  μ¬μλμ§λ μλλ€. λμ  μμ€νμ μ΄λ²€νΈλ₯Ό μλ¦°λ€. κ·Έλ° λ€μ μμ€νμ applicationβs state, amount of bateery power remaining , factors λ€μ κΈ°λ°μΌλ‘ haptic μ μ¬μν μ§ μ¬λΆλ₯Ό κ²°μ ν©λλ€.

---

**For example, haptic feedback is currently played only:**

- On a device with a supported Taptic Engine(iPhone 6s μ΄νμ λͺ¨λ  iPhone λ° Apple watch, MacBook, Trackpad λ±μ νμ¬λμ΄μμ)
- When the app is running in the foreground
- When the System Haptics setting is enabled

---

- νΌλλ°±μ μ¬μν μ§ μ¬λΆμ λν΄μ μμ€νμ μ λ’°ν΄λΌ. μ‘°κ±΄λΆλ‘ νΌλλ°±μ νΈλ¦¬κ±°νλ € νμ§ λ§μλΌ.
4. [Releasing the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555460)Β (optional).
- λ μ΄μ μ€λΉλ generator νμμμΌλ©΄ generatro object μ μ°Έμ‘°λ₯Ό μ κ±°νκ³ , μμ€νμμ deallocate νλλ‘ νλ€. μ΄λ κ² νλ©΄ Taptic Engine μ λ€μ μ¬μ©νμ§ μλ μνλ‘ λ§λ€ μ μλ€.

(μλμ μ½λλ₯Ό λ³΄κ²λλ©΄ νν± λμ μ΄ν λ§μ§λ§μ generator μ nil μ ν λΉνμ¬ ν΄μ νλ κ²μ λ³Ό μ μλ€.)

- generator μ μλ¬΄λ° μ°Έμ‘°κ° μμΌλ©΄ μμ€νμ deallocate νλ€.

## πμμνκΈ°

- λͺ¨λ  νν±μ μ²΄νν΄λ³΄κΈ° μν¨μ΄κΈ° λλ¬Έμ κ²½μ°μ λ°λΌ generator λ₯Ό prepare νκ±°λ release νλ μ½λλ μμ μ μλ€.

### UINotificationFeedbackGenerator

```swift
import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    var notificationFeedbackGenerator: UINotificationFeedbackGenerator?
    // ...
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNotificationFeedbackGenerator()
    }
    
    // UINotificationFeedbackGenerator action
    @IBAction func touchNotificationSuccessButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.success)
    }
    
    @IBAction func touchNotificationWarningButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.warning)
    }
    
    @IBAction func touchNotificationErrorButton(_ sender: Any) {
        notificationFeedbackGenerator?.notificationOccurred(.error)
    }
}

// MARK: - Extensions

extension ViewController {
    /// set UINotificationFeedbackGenerator
    private func setNotificationFeedbackGenerator() {
        notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        notificationFeedbackGenerator?.prepare()
    }
}
```

### UIImpactFeedbackGenerator

```swift
import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    // ...
    var impactFeedbackGenerator: UIImpactFeedbackGenerator?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        // ...
    }
 
    // UIImpactFeedbackGenerator action
    @IBAction func touchImpactHeavyButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        impactFeedbackGenerator?.impactOccurred()

        impactFeedbackGenerator = nil
    }
    
    @IBAction func touchImpactMediumButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        impactFeedbackGenerator?.impactOccurred()

        impactFeedbackGenerator = nil
    }
    
    @IBAction func touchImpactLightButton(_ sender: Any) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        impactFeedbackGenerator?.impactOccurred()

        impactFeedbackGenerator = nil
    }
}
```

### UISelectionFeedbackGenerator

```swift
import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    // ...
    var selectionFeedbackGenerator: UISelectionFeedbackGenerator?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        // ..
    }
    
    // UISelectionFeedbackGenerator action
    @IBAction func touchSelectionButton(_ sender: Any) {
        selectionFeedbackGenerator = UISelectionFeedbackGenerator()
        selectionFeedbackGenerator?.selectionChanged()

        selectionFeedbackGenerator = nil
    }
}

```

### λ·°

- λ²νΌμ μμ±ν΄μ Haptic μ μ²΄νν  μ μλλ‘ κ΅¬μ±

<img src="https://user-images.githubusercontent.com/69136340/154388750-362d09b6-4802-498f-9598-0e1a35872c4e.png" width ="250">


---

### κΉνλΈ :

[GitHub - hyun99999/UIFeedbackGeneratorTutorial-iOS: πUIFeedbackGeneratorTutorial νν± λμμ ](https://github.com/hyun99999/UIFeedbackGeneratorTutorial-iOS)

[GitHub - 28th-SOPT-iOS-CloneCoding/MiraClone-KimHyunGyu: π§ μμ λ―ΈλΌν΄λ‘ μ½λ© κΉνκ·](https://github.com/28th-SOPT-iOS-CloneCoding/MiraClone-KimHyunGyu)

---

### μ°Έκ³  :

[iOS ) Haptic Feedback](https://zeddios.tistory.com/726)

[Haptics - User Interaction - iOS - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/)
