# -*- coding: utf-8 -*-
"""PLA3.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1xpJmG9AsDfafWLLDB5W0-UVyBFIvf3L3

# generating labels:
"""

def new_gen_group_sizes(n, k, m, j, flag, numNeq): 
  # n: problem size, k: number of new primes in each group, m: array of configuration, j: inner index of m and k array, flag: the config with redandant primes, numeq: number of unused element in "flag" and the past ones.
  # n: init with problem size, k: init with [], m: init with [], j: init with 0, flag: init with 0, numeq: init with 0.
  k.append(0)
  #print("n : ", n)
  for i in range (1,21):
    k[j] = 2**(20 - i)
    if (k[j] == n):
      #print("k[j] == n : ", k[j])
      m.append(i)
      return k , m, flag, numNeq
    elif (k[j]< n):
      #print("k[j]< n : ", k[j])
      m.append(i)
      return new_gen_group_sizes(n-k[j], k, m, j+1, flag, numNeq)
    elif (j > 1 and flag == 0):
      #print("j > 1 and flag == 0", k[j])
      if (k[j] < n*2-1):
        #print("k[j] < n*2-1", k[j], n*2-1)
        lapp = 0
        addprimes = 0
      # senorio dashtan eshterak injoori mire jolo. 
        minp = 20 - (2*i)
        maxp = 19 - i
        for p in range (minp, maxp):
          overlapStart = 20-(i+p)
          lapp = 2**p
          if (overlapStart > 3):
            for a in range(j-1):
              if (m[a] <= overlapStart):
                lapp += 2**p;
              else :
                lapp += 2**((m[a]-overlapStart)+p);
            addprimes = k[j]-lapp 
            if (addprimes == n):
              m.append(i)
              k[j] = addprimes
              return k , m, flag, numNeq
            if (addprimes < n): # or eq
              m.append(i)
              k[j] = addprimes
              return new_gen_group_sizes(n-addprimes, k, m, j+1, j, p)
          elif(j>3 and overlapStart == 3):
            addprimes = k[j]-lapp 
            if (addprimes == n):
              m.append(i)
              k[j] = addprimes
              return k , m, flag, numNeq
            if (addprimes < n): # or eq
              m.append(i)
              k[j] = addprimes
              return new_gen_group_sizes(n-addprimes, k, m, j+1, j, p)
          elif(j<3 and overlapStart == 3):
            for a in range(j-1):
              if (m[j] <= overlapStart):
                lapp += 2**p;
              else :
                lapp += 2**((m[a]-overlapStart)+p);
            addprimes = k[j]-lapp 
            if (addprimes == n):
              m.append(i)
              k[j] = addprimes
              return k , m, flag, numNeq
            if (addprimes < n): # or eq
              m.append(i)
              k[j] = addprimes
              return new_gen_group_sizes(n-addprimes, k, m, j+1, j, p)
          elif(j>1 and overlapStart == 2):
            lapp+= 2**p
            addprimes = k[j]-lapp 
            if (addprimes == n):
              m.append(i)
              k[j] = addprimes
              return k , m, flag, numNeq
            if (addprimes < n): # or eq
              m.append(i)
              k[j] = addprimes
              return new_gen_group_sizes(n-addprimes, k, m, j+1, j, p)
          elif(j==0):
            addprimes = k[j]-lapp 
            if (addprimes == n):
              m.append(i)
              k[j] = addprimes
              return k , m, flag, numNeq
            if (addprimes < n): # or eq
              m.append(i)
              k[j] = addprimes
              return new_gen_group_sizes(n-addprimes, k, m, j+1, j, p)
      flag = 10
  #print(m)

print ("result  ", new_gen_group_sizes(7, [], [], 0, 0, 0) )

def mk_gr (x, flag, numNeq):
  int_primes = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
  #ind_primes = [ 'a', 'c','e', 'g', 'i', 'k', 'm', 'o', 'b', 'd', 'f', 'h', 'j', 'l', 'n', 'p']
  # 0 is the least significant bit and 20 is the most significant bit
  m = []
  notm = []
  notVal = 0
  for i in range (0, len(x)):
    temp = format(i, "b").zfill(3)
    res = [int(x) for x in str(temp)]
    res = res[::-1]
    if (flag == 0 or flag > i):
      m.append(int_primes[0:x[i]])
      notm.append(int_primes[x[i]:20])
      for j in range (0, len(res)):
        if res[j] == 1:
          m[i][j] = "~"+ str(m[i][j])
          #print(m[i][j])
          m[i].pop(j)
          #print(m[i][j])
    elif (flag == i ):
      min = 20-(numNeq+x[i])-1
      max = 20-numNeq-1
      notVal = x[i]
      z1 = m[i-1]
      #print(min,i)
      m.append(m[i-1][min:notVal] + int_primes[notVal:max])
      notm.append(int_primes[0:min]+int_primes[max:20])
      """if (20-(numNeq-x[i]) < 3):
        a = 3- (20-(numNeq-x[i]))
      for j in range (0, len(res)):
        if res[j] == 1:
          m[i][j] = "~"+ str(m[i][j])
          #print(m[i][j])
          #m[i].pop(j)
          #print(m[i][j])"""
    else:
      m.append(int_primes[0:x[i]])
      notm.append(int_primes[x[i]:20])
      if (notVal != 0):
        m[i][notVal] = "~"+ str(m[i][notVal])
        #print(m[i][notVal])
        m[i].pop(notVal)
        #print(m[i][notVal])
      for j in range (0, len(res)):
        if res[j] == 1:
          m[i][j] = "~"+ str(m[i][j])
          #print(m[i][j])
          m[i].pop(j)
          #print(m[i][j])
  return m, notm

mk_gr([10, 11, 11, 14, 16, 17], 2, 3)

"""# generate configurable memory data"""

# chon to system memory confog as tah be sar mikhoonimina ro ham az sar be tah toolid kardam,configha 10taye dovvom ro aval mikhoonan(hamin basse)
def bin_config_mem(a,nota):
  string = ""  
  for j in range(len(a)):
    for k in range(2):
      for x in range(10):
        i = x + ((1-k)*10)
        if i in nota[j]:
          string += "00"
        elif i in a[j]:
          string += "10"
        else:
          string += "01"
  while len(string) < 320:
    string += "00"
  return string

a , nota = mk_gr([10, 11, 11, 14, 16, 17], 2, 3)
print(a , nota)
config_mem = bin_config_mem(a,nota)
print (config_mem)

import numpy as np
from itertools import chain

def gen_primes(n, x, y):   #n is the bais number, x is the list of - , y is the list of for indexes
    res = n
    for i in range (0, len(x)):
        if y[i]!= 0:
          res += 2**x[i]
    return res

def group16(primes,x,y):
  ones = np.full(len(x), 1) # cte configures
  loops = np.full(len(y), 0) # need to be calculated
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        for l in range(2):
                          loops[11] = l
                          for m in range(2):
                            loops[12] = m
                            for n in range(2):
                              loops[13] = n
                              for o in range(2):
                                loops[14] = o
                                for p in range(2):
                                  loops[15] = o
                                  #print (loops)
                                  numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
  #print ("primes : ", prime2)
  #print (len(prime2))
  return prime2

def group15(primes,x,y):
  ones = np.full(len(x), 1) # cte configures
  loops = np.full(len(y), 0) # need to be calculated
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        for l in range(2):
                          loops[11] = l
                          for m in range(2):
                            loops[12] = m
                            for n in range(2):
                              loops[13] = n
                              for o in range(2):
                                loops[14] = o
                                  #print (loops)
                                numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group14(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        for l in range(2):
                          loops[11] = l
                          for m in range(2):
                            loops[12] = m
                            for n in range(2):
                              loops[13] = n
                              numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group13(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        for l in range(2):
                          loops[11] = l
                          for m in range(2):
                            loops[12] = m
                            numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group12(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        for l in range(2):
                          loops[11] = l
                          numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group11(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  #for I in x:
   # ones.append(1)
  bias = gen_primes(0,x,ones)
   
  #numbers.append(n)
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      for k in range(2):
                        loops[10] = k
                        numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2


def group10(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    for j in range(2):
                      loops[9] = j
                      numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2


def group9(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  for i in range(2):
                    loops[8] = i
                    numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group8(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                for h in range(2):
                  loops[7] = h
                  numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group7(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              for g in range(2):
                loops[6] = g
                numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group6(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            for f in range(2):
              loops[5] = f
              numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group5(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          for e in range(2):
            loops[4] = e
            numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group4(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        for d in range(2):
          loops[3] = d
          numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group3(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      for c in range(2):
        loops[2] = c
        numbers.append(gen_primes(bias,y,loops))
  
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group2(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    for b in range(2):
      loops[1] = b
      numbers.append(gen_primes(bias,y,loops))
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group1(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
   
  for a in range(2):
    loops[0] = a
    numbers.append(gen_primes(bias,y,loops))

  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def group0(primes,x,y):
  ones = np.full(len(x), 1)
  loops = np.full(len(y), 0)
  numbers = []
  bias = gen_primes(0,x,ones)
  numbers.append(bias)
  prime2 = primes[:-1]    # sprint ("before : ", primes)
  for i in numbers:
    if i not in prime2:
      prime2.append(i)
 #print ("primes : ", prime2)
 #print (len(prime2))
  return prime2

def call_groups(primes,x,y):
  prime1 =[]
  res =[]
  for i in range(0, len(x)):
    func = "group"+ str(len(y[i]))
    #print (func)
    prime1.append(globals()[func](res,x[i],y[i]))
    #print("prime1 : ", len(prime1))
    #print("prime2 : ", len(prime2))
    flatten_list = list(chain.from_iterable(prime1))
    [res.append(x) for x in flatten_list if x not in res]
    #print(len(res))

  return res

num, groups, flag, numNeq = new_gen_group_sizes (7, [], [], 0, 0, 0)
#[1024, 512, 376, 64, 16, 8]
#callenge = [20-x for x in groups]
group_indexing, challenge_indexing = mk_gr( groups, flag, numNeq)
print(len(group_indexing), len(challenge_indexing))
#print(flag)
primes = []
p = call_groups(primes,group_indexing, challenge_indexing)
print(len(p))

"""# genertaing targets:"""

import random

def gen_label_destination(num):
  arr = []
  while len(arr) < num:
    n = random.randint(0,65536)
    if n not in arr:
      arr.append(n)
  return arr

gen_label_destination(10)

"""# generating sources:"""

def check_f(des, source, arr):
  k = 0
  for i in arr:
      if i not in (des or arr):
        k +=1
  return k
def gen_source(des, num, tar):
  source = []
  flatten_list = []
  counter = 0
  for i in range(0, len(des)):
    k = num[i]
    check = 0
    source = flatten_list
    while (check != k):
      arr = []
      c = counter
      for j in range(0, k):
        arr.append(tar[counter] ^ des[i])
      check = check_f (des, source, arr)
      if (check != k):
        n = random.randint(0,65536)
        if n not in (des or source or tar):
          des[i] = n
      else :
        source.append(arr)
    for i in source:
      if (isinstance( i, int )):
        if i not in flatten_list:
          flatten_list.append(i)
      else :
        for j in i:
          if i not in flatten_list:
            if j not in flatten_list:
              flatten_list.append(j)

  return flatten_list, des

"""# main call function"""

def run (num, num_arr): #num: number of targets ---- num_arr : number of same dastinations
  num, groups, flag, numNeq = new_gen_group_sizes (num, [], [], 0, 0, 0)
  #[1024, 512, 376, 64, 16, 8]
  #callenge = [20-x for x in groups]
  group_indexing, challenge_indexing = mk_gr( groups, flag, numNeq)
  #print(len(group_indexing), len(challenge_indexing))
  #print(flag)
  primes = []
  config_mem = bin_config_mem(group_indexing, challenge_indexing)
  tar = call_groups(primes,group_indexing, challenge_indexing)
  dest = gen_label_destination(len(num_arr))
  src = gen_source(dest, num_arr, tar)
  print(config_mem, tar, dest, src)

run (7, [1,2,4])



