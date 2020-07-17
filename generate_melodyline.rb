# 仮でベースラインを決定する
baseline = ["A", "G#m(b5)", "A", "F#m"]
$scales =['C','C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
class Key
  attr_accessor :key
  def initialize(key)
    @key = key
  end

  def lenArrng(index, num)
    index += num
    if index > $scales.length - 1
      index -= $scales.length
    end
    return index
  end

  def major
    keyIndex = $scales.index(self.key)
    keyIndex2 = lenArrng(keyIndex, 4)
    keyIndex3 = lenArrng(keyIndex, 7)
    return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
  end

  def minor
    keyIndex = $scales.index(self.key)
    keyIndex2 = lenArrng(keyIndex, 3)
    keyIndex3 = lenArrng(keyIndex, 7)
    return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
  end

  def majorb5
    keyIndex = $scales.index(self.key)
    keyIndex2 = lenArrng(keyIndex, 4)
    keyIndex3 = lenArrng(keyIndex, 6)
    return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
  end

  def minorb5
    keyIndex = $scales.index(self.key)
    keyIndex2 = lenArrng(keyIndex, 3)
    keyIndex3 = lenArrng(keyIndex, 6)
    return $scales[keyIndex], $scales[keyIndex2], $scales[keyIndex3]
  end
end

# 音符を決める 同時に音階も決める
notes = [*1..16]
hihi = Key.new(gets.chomp)
p hihi.major
