def func1():
      try:
         l = [1,2,3,4]
         i = int(input("Enter the index:"))
         print("The number is",l[i])
         return 1
      except: 
         print("Some Error Occurred")
         return 0
      finally:
         print("It always Executes")

x = func1()
print(x)