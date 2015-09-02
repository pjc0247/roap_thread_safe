roap_thread_safe
====

Usage
----
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
