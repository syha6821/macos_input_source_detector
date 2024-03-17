# macos_input_source_detector

**필요한 프로그램**

- [yabai](https://github.com/koekeishiya/yabai)

- [limelight](https://github.com/koekeishiya/yabai/issues/1911) - 현재 macos와 호환이 되지않아 개발이 중단된 오픈소스 (macOS Monterey 포함 상위버전에서 사용할 수 없다.)

- [InputSourceSelector](https://github.com/minoki/InputSourceSelector) - macos 에서 현재 인풋을 컨트롤 할 수 있다.

- [Hammerspoon](https://www.hammerspoon.org/)

간단한 shell 프로그램을 이용해 limelight와 yabai의 테두리 색 표시를 활용하여 현재 키보드인풋이 영어인지 한글인지에 따라 테두리 색을 변경한다.

Hammerspoon 의 init.lua 에 다음과 같은 코드를 추가하여 사용할 수 있다.

- %1 인풋소스 전환키
- %2 input_source_detect.sh 의 경로
- %3 input_source_change_and_detect.sh 의 경로

```
local function inputSourceDetect()
    hs.eventtap.keyStroke({"%1"}, "1")
    os.execute(%2)
    --os.execute(%3)
end
```

올바르게 작동하지 않는다면 각 shell 코드의 InputSourceSelector 와 yabai 의 경로를 확인해주어야 한다.

**데모영상**


https://github.com/syha6821/macos_input_source_detector/assets/83122197/9712399b-b859-47f3-b4e4-0cdec8dcdd65

