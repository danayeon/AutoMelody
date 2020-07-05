# 指定されたキーから8小節のメロディを生成
# 拍子は4/4拍子
# 音階はCDEFGABの1オクターブのみ
# ダイアトニックスケールの役割論に応じて4*4のベースラインを生成
# 3和音
# ベースライン生成の規則
# 最初はトニック
# トニックの後はなんでも良い
# ドミナントのあとはトニックに移る
# サブドミナントのあとは何がきても良い
# 最後はトニック
# 選ばれた役割から音を選択
def chooseSound(key, diatonic)
  $list << diatonic
  return key[diatonic[rand(0..diatonic.length - 1)]]
end


keyC	= ['C', 'Dm', 'Em', 'F', 'G', 'Am', 'Bm(b5)']
#keyD	[D	Em	F♯m	G	A	Bm	C♯m(♭5)]
#keyE	[E	F♯m	G♯m	A	B	C♯m	D♯m(♭5)]
#keyF	[F	Gm	Am	B♭	C	Dm	Em(♭5)]
#keyG	[G	Am	Bm	C	D	Em	F♯m(♭5)]
#keyA	[A	Bm	C♯m	D	E	F♯m	G♯m(♭5)]
#keyB	[B	C♯m	D♯m	E	F♯	G♯m	A♯m(♭5)]
keys = [keyC]
  #, keyD, keyE, keyF, keyG, keyA, keyB]


tonic = [0,2,5]
sub = [1,3]
dominant = [4,6]
diatonic = [tonic, sub, dominant]

$list = []
baseline = []
# 最初の音を決める
$list << tonic
baseline << keyC[tonic[rand(0..tonic.length - 1)]]
# 前の音がトニックかサブドミナントだったら
while baseline.length < 3
  if $list.last.include?(0) or $list.last.include?(1)
    # 次の音はなんでも良い
    baseline <<  chooseSound(keyC, diatonic[rand(0..2)])
  # 前の音がドミナントだったら
  elsif $list.last.include?(4)
    baseline <<  chooseSound(keyC, tonic)
  end
end
$list << tonic
baseline << keyC[tonic[rand(0..tonic.length - 1)]]
p baseline
