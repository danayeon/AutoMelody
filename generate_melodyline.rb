# 仮でベースラインを決定する
baseline = ["A", "G#m(b5)", "A", "F#m"]
$scales =['C','C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
def lenArrng(index, num)
  index += num
  if index > $scales.length - 1
    index -= $scales.length
  end
end

def major(key)
  keyIndex = $scales.index(key)
  keyIndex2 = lenArrng(keyIndex, 4)
  keyIndex3 = lenArrng(keyIndex, 7)
  return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
end

def minor(key)
  keyIndex = $scales.index(key)
  keyIndex2 = lenArrng(keyIndex, 3)
  keyIndex3 = lenArrng(keyIndex, 7)
  return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
end

def majorb5(key)
  keyindex = $scales.index(key)
  keyIndex2 = lenArrng(keyIndex, 4)
  keyIndex3 = lenArrng(keyIndex, 6)
  return $scales[keyindex], $scales[kayindex2], $scales[keyindex3]
end

def minorb5(key)
  keyindex = $scales.index(key)
  keyIndex2 = lenArrng(keyIndex, 3)
  keyIndex3 = lenArrng(keyIndex, 6)
  return $scales[keyindex], $scales[kayindex2], $scales[keyindex3]
end


# 各キーに対するコード
c = ['C', 'E', 'G']
cb5 = ['C', 'E', 'Gb']
csharp = ['C#', 'F', 'G#']
csharpb5 = ['C#', 'E#', 'G']
cm = ['C', 'Eb', 'G']
csharpm = ['C#', 'E', 'G#']

d = ['D', 'F#', 'A']
db5 = ['D', 'F#', 'Ab']
dsharp = ['D#', 'G', 'A#']
dsharpb5 = ['D#', 'G', 'A']
dm = ['D', 'F', 'A']
dsharpm = ['D#', 'F#', 'A#']

e = ['E', 'G#', 'B']
eb5 = ['E', 'G#', 'A#']
em = ['E', 'G', 'B']

f = ['F', 'A', 'C']
fb5 = ['F', 'A', 'B']
fsharp = ['F#', 'A#', 'G#']
fsharpb5 = ['F#', 'A#', 'C']
fm = ['F', 'Ab', 'C']
fsharpm = ['F#', 'A', 'C#']

g = ['G', 'B', 'D']
gb5 = ['G', 'B', 'Db']
gsharp = ['G#', 'C', 'D#']
gsharpb5 = ['G#', 'C', 'D']
gm = ['G', 'Bb', 'D']
gsharpm = ['G#', 'B', 'D#']

a = ['A', 'C#', 'E']
ab5 = ['A', 'C#', 'Eb']
asharp = ['A#', 'D', 'F']
asharpb5 = ['A#', 'D', 'E']
am = ['A', 'C', 'E']
asharpm = ['A#', 'Db', 'F']

b = ['B', 'D#', 'F#']
bb5 = ['B', 'D#', 'F']
bm = ['B', 'D', 'F#']

# 音符を決める 同時に音階も決める
notes = [*1..16]
aa = gets.chomp
p major(aa)
p minor(aa)
p majorb5(aa)
p minorb5(aa)
