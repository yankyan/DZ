# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#Submit').on 'click', ->
    a = Number($('#a').val())
    b = Number($('#b').val())
    sum=a+b
    alert(sum)
  $('#Date').on 'click', ->
    week=["воскресенье","понедельник","вторник","среда","четверг","пятница","суббота"]
    alert(week[(new Date(Date.parse($('#date').val())).getDay())])
  $('#re').on 'click', ->
    n = Number($('#n').val())
    p=2
    result=[]
    nums=[2..n]
    for i in [2..n]
      nums[i]=true
    while p*p<n
      for i in [p*p..n] by p
        nums[i]=false
      for i in [p+1..n] then if nums[i] is true
        p=i
        break
    for i in [0..n] then if nums[i] is true then result = result.concat i
    alert(result)
  $('#fibonachi').on 'click', ->
      n = Number($('#nf').val())
      fib = [0,1]
      for i in [2..n] then fib[i]=fib[i-2]+fib[i-1]
      alert(fib)
