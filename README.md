# UIFeedbackGeneratorTutorial-iOS
👆UIFeedbackGeneratorTutorial 햅틱 대작전

### 내용

- shake motion 을 인식해서 화면전환 시 진동 추가

# 시작 전

apple developer 개발자 문서에서는 아이폰에서 사용할때 느낄 수 있는 "뚜둑" 혹은 "뚝" 하는 이러한 촉각 경험을 haptic 으로 명시하고 있다.

진동기능을 추가하기 위해서 햅틱 관련해서 공부를 하다가 햅틱 패턴을 접하고 내가 원하는 진동은 없구나 라고 느꼈다. 그래도 공부한게 아쉬워서 남긴다.

### Haptics 와 Vibrate

- 비밀번호 입력 시(ex.카카오페이) → 햅틱
- 중요한 팝업 등장 시(ex.카카오톡 큐알코드) → 바이브레이트

## 🙌  [HIG - Haptics](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/)

- Human Interface Guidelines 의 필요한 내용을 정리해보자. 문서에서 여러 패턴의 진동  미디어까지 제공하니 더 자세한 내용은 링크를 확인해보자.

### Haptics

햅틱은 사람들의 촉각에 관여하여 화면 인터페이스와 상호작용하는 경험을 향상시킨다. 예를 들어 시스템은 시각 및 청각 피드백과 더불어 햅틱을 재생하여 Apple Pay 거래의 확인을 강조 표시합니다. 또한 picker 를 스크롤하거나 switch 를 토글하는 것과 같은 터치 제스처 및 상호작용을 강조할 수 있다. 개발자 지침은 [Animation and Haptics](https://developer.apple.com/documentation/uikit/animation_and_haptics) 를 참조해라.

지원되는 iPhone 모델에서는 여러가지 방법으로 앱에 햅틱을 추가할 수 있다.

- Use standard UI elements — like [switches](https://developer.apple.com/documentation/uikit/uiswitch), [sliders](https://developer.apple.com/documentation/uikit/uislider), and [pickers](https://developer.apple.com/documentation/uikit/uipickerview) — that play Apple-designed system haptics by default.
- When it makes sense, use a feedback generator to play one of several predefined haptic patterns in the categories of [notification](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#notification), [impact](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#impact), and [selection](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#selection) (for developer guidance, see [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)).
- In situations where you want more control, compose and play your own haptic patterns. For guidance, see [Creating Custom Haptic Patterns](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/#creating-custom-haptic-patterns).

시스템 제공 컨트롤 및 햅틱을 사용하는 경우 iOS 는 강도와 피드백의 동작을 관리한다. 예를 들어 스위치는 미묘한 tap 을 자동으로 재생하고 "success" notification 에 대한 feedback generator 는 아래의 패턴을 재생한다. 사람들은 시스템 정의 햅택을 인식하므로 문서화된 의미에 따라 사용하는 것이 중요하다.

(위의 HIG 문서에서는 실제로 햅틱을 체험해볼 수 있다! 꼭 들어가서 확인해보길 바란다.)

### Notification

Notification haptics 는 작업 또는 작업의 결과에 대한 피드백을 제공한다.

- 링크에서 여러 패턴을 확인할 수 있다.

### Impact

Impact haptics 는 시각적 경험을 보완하는데 사용할 수 있는 물리적 메타포를 제공한다. 예를 들어 사람들은 view 가 제자리에 고정될 때 탭을 느끼거나 두 개의 무거운 물체가 충돌할 때 쿵 소리를 느낄 수 있습니다.

- 링크에서 여러 패턴을 확인할 수 있다.

### Selection

Selection haptics 는 UI 요소의 값이 변경되는 동안 피드백을 제공한다.

- 링크에서 여러 패턴을 확인할 수 있다.

시스템에서 제공하는 햅틱을 사용하든 자체적으로 만들든 사람들을 목표에서 방해하지 않으면서 사용자 경험을 풍부하게 만드는 방식으로 햅틱을 사용하는 것이 중요하다.

---

이후의 HIG 문서는 **haptics 로 인터페이스를 디자인하는 내용**과 **Custom Haptic Patterns 를 만드는 내용**을 제공한다. 

이제 개발자 문서를 살펴보자!

## 🙌 [Apple Developer - Animation and Haptics](https://developer.apple.com/documentation/uikit/animation_and_haptics)

### 📌 Haptick Feedback

Provide haptic feedback in response to specific types of events.

- [class UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)

: The abstract superclass for all feedback generators.

- [class UIImpactFeedbackGenerator](https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator)

: A concrete [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator) subclass that creates haptics to simulate physical impacts.

- [class UINotificationFeedbackGenerator](https://developer.apple.com/documentation/uikit/uinotificationfeedbackgenerator)

: A concrete [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator) subclass that creates haptics to communicate successes, failures, and warnings.

- [class UISelectionFeedbackGenerator](https://developer.apple.com/documentation/uikit/uiselectionfeedbackgenerator)

: A concrete [UIFeedbackGenerator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator) subclass that creates haptics to indicate a change in selection.

## 👏 원리

To use a feedback generator, the following are required:

1. [Instantiating the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555404)
- feedback 을 생성하려면 먼저 `UIFeedbackGenerator` 클래스의 구체적인 하위클래스(`UIImpactFeedbackGenerator`, `UISelectionFeedbackGenerator`, or `UINotificationFeedbackGenerator`) 중 하나를 인스턴스화 해야합니다.
2. [Preparing the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555405) (optional)
- generator 를 preparing 하면서 feedback 을 트리거할때 대기시간을 줄일 수 있다. 이것은 소리 또는 시각적 신호와 매치할때 특히 중요하다.
- generator 의 [prepare()](https://developer.apple.com/documentation/uikit/uifeedbackgenerator/2369818-prepare) 메서드를 호출하면 Taptic Engine 이 준비상태가 된다. 파워를 보존하기 위해서 Taptic Engine 은 초 단위의 짧은 시간동안 이 상태를 유지하거나 피드백을 트리거할때까지 유지합니다.
- 만약, prepare() 메서드를 호출한 다음 즉시 피드백을 트리거하면 시스템은 Taptic Engine 을 준비된 상태로 전환할 시간이 충분하지 않고, 지연시간이 줄어들지 않을 수 있다. 반면에, prepare() 메서드를 너무 일찍 호출하면 피드백을 트리거하기 전에 Taptic Engine 은 다시 사용되지 않는 상태가 된다.

(아래의 코드를 보게되면 버튼이 클릭되기 전에 generator 를 준비하고, 액션이 실행될 때 트리거하는 모습을 볼 수 있다.)

3. [Triggering Feedback](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555415)
- 각 feedback generator 하위 클래스는 고유한 트리거 방법을 가진다. 트리거 하기 위해서 [impactOccurred()](https://developer.apple.com/documentation/uikit/uiimpactfeedbackgenerator/2374287-impactoccurred), [selectionChanged()](https://developer.apple.com/documentation/uikit/uiselectionfeedbackgenerator/2374284-selectionchanged), or [notificationOccurred(_:)](https://developer.apple.com/documentation/uikit/uinotificationfeedbackgenerator/2369826-notificationoccurred) 을 적절하게 호출해야한다.
- 이런 메서드들을 호출해도 haptic 이 직접 재생되지는 않는다. 대신 시스템에 이벤트를 알린다. 그런 다음 시스템은 application’s state, amount of bateery power remaining , factors 들을 기반으로 haptic 을 재생할지 여부를 결정합니다.

---

**For example, haptic feedback is currently played only:**

- On a device with a supported Taptic Engine(iPhone 6s 이후의 모든 iPhone 및 Apple watch, MacBook, Trackpad 등에 탑재되어있음)
- When the app is running in the foreground
- When the System Haptics setting is enabled

---

- 피드백을 재생할지 여부에 대해서 시스템을 신뢰해라. 조건부로 피드백을 트리거하려 하지 말아라.
4. [Releasing the Generator](https://developer.apple.com/documentation/uikit/uifeedbackgenerator#2555460) (optional).
- 더 이상 준비된 generator 필요없으면 generatro object 의 참조를 제거하고, 시스템에서 deallocate 하도록 한다. 이렇게 하면 Taptic Engine 을 다시 사용하지 않는 상태로 만들 수 있다.

(아래의 코드를 보게되면 햅틱 동작 이후 마지막에 generator 에 nil 을 할당하여 해제하는 것을 볼 수 있다.)

- generator 에 아무런 참조가 없으면 시스템은 deallocate 한다.

## 👏시작하기

- 모든 햅틱을 체험해보기 위함이기 때문에 경우에 따라 generator 를 prepare 하거나 release 하는 코드는 없을 수 있다.

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

### 뷰

- 버튼을 생성해서 Haptic 을 체험할 수 있도록 구성

<img src="https://user-images.githubusercontent.com/69136340/154388750-362d09b6-4802-498f-9598-0e1a35872c4e.png" width ="250">


---

### 깃허브 :

[GitHub - hyun99999/UIFeedbackGeneratorTutorial-iOS: 👆UIFeedbackGeneratorTutorial 햅틱 대작전](https://github.com/hyun99999/UIFeedbackGeneratorTutorial-iOS)

[GitHub - 28th-SOPT-iOS-CloneCoding/MiraClone-KimHyunGyu: 🧚 아요 미라클론코딩 김현규](https://github.com/28th-SOPT-iOS-CloneCoding/MiraClone-KimHyunGyu)

---

### 참고 :

[iOS ) Haptic Feedback](https://zeddios.tistory.com/726)

[Haptics - User Interaction - iOS - Human Interface Guidelines - Apple Developer](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/haptics/)
