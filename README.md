roap_thread_safe
====

메소드에 thread-safe 속성을 추가하여 해당 메소드를 스레드에 안전하게 만들 수 있습니다.<br>
thread-safe 처리된 메소드는 인스턴스 단위로 생성되는 Mutex 잠금에 의해 동기화됩니다.
<br>
http://www.rubyinside.com/does-the-gil-make-your-ruby-code-thread-safe-6051.html

Usage
----
(아래의 예시는 원래 thread-safe한 코드지만 간단한 예제를 위해 작성함)
```rb
class Counter
  def initialize
    @cnt = 0
  end
  
  #thread-safe
  def step
    @cnt += 1
  end
  
  #thread-safe
  def count
    @cnt
  end
end
```
