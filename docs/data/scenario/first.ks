*start

[title name="雪山の黙示録"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

; 変数の初期化
[iscript]
f = {}; // フラグ用のオブジェクトを初期化
f.heard_argument = false;
f.akira_motive = false;
f.miyu_motive = false;
f.taro_motive = false;
f.yuki_inquired = false;
f.akira_inquired = false;
f.miyu_inquired = false;
f.taro_inquired = false;
f.found_pen = false;
f.knows_ex = false;
f.found_report = false;
[endscript]

[bg storage="snowy_mountain.webp" time=1000]

あなたは冬の山々に囲まれた小さなコテージに向かっていた。[l][r]
仕事の疲れを癒すため、一人で静かな時間を過ごす予定だった。[l][r]
しかし、突然の吹雪により、道が封鎖されてしまった。[l][r]

[bg storage="cabin_exterior.webp" time=1000]

運良く近くのコテージを見つけ、避難することにした。[l][r]
コテージにはすでにに他の宿泊客がいた。[l][r]

[bg storage="cabin_lobby.webp" time=1000]

オーナーのタロウが出迎えてくれた。[l][r]
タロウ：「いらっしゃいませ。吹雪で大変でしたね。ここで暖をとってください。」[l][r]

他の宿泊客とも挨拶を交わした。[l][r]

[bg storage="yuki.webp" time=500]

静かな雰囲気の女性、ユキ。[l][r]
ユキ：「こんにちは。大変でしたね。」[l][r]

[bg storage="akira.webp" time=500]

カジュアルな服装の男性、アキラ。[l][r]
アキラ：「まあ、せっかくですし、楽しみましょうよ。」[l][r]

[bg storage="miyu.webp" time=500]

少し緊張した様子の女性、ミユ。[l][r]
ミユ：「よろしくお願いします...」[l][r]

[bg storage="kenji.webp" time=500]

スーツ姿のビジネスマン、ケンジ。[l][r]
ケンジ：「こんな場所で足止めとは参りましたね。」[l][r]

[bg storage="cabin_lobby.webp" time=500]

それぞれが自己紹介を終え、コテージで一夜を過ごすことになった。[l][r]
吹雪は激しさを増し、外には出られそうにない。[l][r]

[bg storage="cabin_room.webp" time=1000]

あなたは自室に入り、疲れからすぐに眠りについた。[l][r]

[wt]

[bg storage="cabin_morning.webp" time=1000]

翌朝、頭が痛い。[l][r]
目を覚ますと、まだ吹雪は続いている。[l][r]

突然、廊下から叫び声が聞こえる。[l][r]

[bg storage="corridor.webp" time=500]

ミユの声：「大変！誰かが...！」[l][r]
あなたは急いで声のする方へ向かった。[l][r]

[bg storage="living_room.webp" time=500]

部屋には宿泊客全員が集まっており、その中央にはケンジが倒れている。[l][r]
彼はすでに息をしていない。[l][r]

あなた：「一体何が起こったんだ？」[l][r]

全員が不安そうな表情を浮かべている。[l][r]
この中に殺人鬼がいるのかもしれない。[l][r]
あなたはそれぞれに話を聞いて、真実を突き止めることにした。[l][r]

[link target=*interrogate_start]→ 尋問を始める [endlink][r]
[link target=*search_locations]→ 調査を行う [endlink][r]
[s]

*search_locations

[cm]
[bg storage="cabin_lobby.webp" time=500]

あなたはコテージ内を調査することにした。[l][r]

[link target=*search_victim_room]→ ケンジの部屋を調べる [endlink][r]
[link target=*search_lobby]→ ロビーを調べる [endlink][r]
[link target=*search_outside]→ 外を調べる [endlink][r]
[link target=*interrogate_start]→ 尋問に戻る [endlink][r]
[s]

*search_victim_room

[cm]
[bg storage="kenji_room.webp" time=500]

ケンジの部屋を調べた。[l][r]
机の上に高級なペンが置かれている。[l][r]
これはアキラのペンではないだろうか？[l][r]

[iscript]
if (!f.found_pen) {
    f.found_pen = true;
}
[endscript]

[link target=*search_locations]→ 他の場所を調べる [endlink][r]
[s]

*search_lobby

[cm]
[bg storage="cabin_lobby.webp" time=500]

ロビーを調べた。[l][r]
受付カウンターの裏から営業停止に関する報告書を見つけた。[l][r]
タロウが隠していたのだろうか？[l][r]

[iscript]
if (!f.found_report) {
    f.found_report = true;
}
[endscript]

[link target=*search_locations]→ 他の場所を調べる [endlink][r]
[s]

*search_outside

[cm]
[bg storage="cabin_exterior.webp" time=500]

外を調べた。[l][r]
ゴミ箱の中からミユとケンジが一緒に写った写真を見つけた。[l][r]
二人は以前交際していたのかもしれない。[l][r]

[iscript]
if (!f.knows_ex) {
    f.knows_ex = true;
}
[endscript]

[link target=*search_locations]→ 他の場所を調べる [endlink][r]
[s]

*interrogate_start

[cm]
[bg storage="interrogation_room.webp" time=500]

あなたは別室を使い、順番に宿泊客から話を聞くことにした。[l][r]

[link target=*interrogate_yuki]→ ユキ [endlink][r]
[link target=*interrogate_akira]→ アキラ [endlink][r]
[link target=*interrogate_miyu]→ ミユ [endlink][r]
[link target=*interrogate_taro]→ タロウ [endlink][r]
[link target=*accuse]→ 犯人を指摘する [endlink][r]
[s]

*interrogate_yuki

[cm]
[bg storage="yuki.webp" time=500]

ユキが部屋に入ってきた。[l][r]
彼女は淡い色のセーターを着ており、落ち着いた雰囲気を持っている。[l][r]
しかし、その瞳の奥には何か思い悩んでいる様子が感じられる。[l][r]

あなた：「お時間をいただきありがとうございます。昨夜のことを教えていただけますか？」[l][r]

ユキ：「はい。私は自室で絵を描いていました。誰とも会っていません。」[l][r]

[iscript]
if (!f.yuki_inquired) {
    f.yuki_inquired = true;
}
[endscript]

[ignore exp="f.heard_argument"]

あなた：「本当にそれだけですか？」[l][r]
ユキは一瞬目を伏せた。[l][r]
ユキ：「...実は、ケンジさんと言い争いをしました。でも、殺してなんていません！」[l][r]

[iscript]
f.heard_argument = true;
[endscript]

[endignore]

[link target=*interrogate_start]→ 他の人に話を聞く [endlink][r]
[link target=*search_locations]→ 調査を行う [endlink][r]
[s]

*interrogate_akira

[cm]
[bg storage="akira.webp" time=500]

アキラが部屋に入ってきた。[l][r]
カジュアルな服装で、どこか飄々とした雰囲気を持つ。[l][r]
彼は微笑みながら椅子に腰掛けた。[l][r]

あなた：「昨夜は何をしていましたか？」[l][r]

アキラ：「リビングで小説を書いていましたよ。誰も見ていませんね。」[l][r]

[iscript]
if (!f.akira_inquired) {
    f.akira_inquired = true;
}
[endscript]

[ignore exp="!f.found_pen"]

あなた：「このペンはあなたのものですか？」[l][r]
アキラ：「あ、それはケンジさんに貸したものです。返してもらっていませんが...」[l][r]

[iscript]
f.akira_motive = true;
[endscript]

[endignore]

[link target=*interrogate_start]→ 他の人に話を聞く [endlink][r]
[link target=*search_locations]→ 調査を行う [endlink][r]
[s]

*interrogate_miyu

[cm]
[bg storage="miyu.webp" time=500]

ミユが部屋に入ってきた。[l][r]
彼女は少し落ち着かない様子で、手を握りしめている。[l][r]
若々しく可憐な印象だが、その表情には不安が浮かんでいる。[l][r]

あなた：「昨夜の行動を教えてください。」[l][r]

ミユ：「寝ていました。何も知りません。」[l][r]

[iscript]
if (!f.miyu_inquired) {
    f.miyu_inquired = true;
}
[endscript]

[ignore exp="!f.knows_ex"]

あなた：「ケンジさんはあなたの元彼だと聞きましたが？」[l][r]
ミユは驚いた表情を見せた。[l][r]
ミユ：「それは...もう終わったことです。関係ありません。」[l][r]

[iscript]
f.miyu_motive = true;
[endscript]

[endignore]

[link target=*interrogate_start]→ 他の人に話を聞く [endlink][r]
[link target=*search_locations]→ 調査を行う [endlink][r]
[s]

*interrogate_taro

[cm]
[bg storage="taro.webp" time=500]

タロウが部屋に入ってきた。[l][r]
彼は無表情で、表情からは感情を読み取れない。[l][r]
落ち着いた態度で、あなたを見つめている。[l][r]

あなた：「昨夜は何をしていましたか？」[l][r]

タロウ：「客の世話をしていた。それだけだ。」[l][r]

[iscript]
if (!f.taro_inquired) {
    f.taro_inquired = true;
}
[endscript]

[ignore exp="!f.found_report"]

あなた：「この報告書について説明を。」[l][r]
タロウは眉をひそめた。[l][r]
タロウ：「ケンジさんは私のコテージの安全性を問題視していた。営業停止になると脅されていたんだ。」[l][r]

[iscript]
f.taro_motive = true;
[endscript]

[endignore]

[link target=*interrogate_start]→ 他の人に話を聞く [endlink][r]
[link target=*search_locations]→ 調査を行う [endlink][r]
[s]

*accuse

[cm]
[bg storage="cabin_lobby.webp" time=500]

全員がリビングに集まった。[l][r]
あなたは推理をまとめ、犯人を指摘することにした。[l][r]

誰が犯人だと思うか？[l][r]

[link target=*accuse_yuki]→ ユキを指摘する [endlink][r]
[link target=*accuse_akira]→ アキラを指摘する [endlink][r]
[link target=*accuse_miyu]→ ミユを指摘する [endlink][r]
[link target=*accuse_taro]→ タロウを指摘する [endlink][r]
[s]

*accuse_yuki

あなた：「犯人はユキさん、あなたです！」[l][r]

ユキ：「何ですって！？証拠もないのに！」[l][r]

[iscript]
f.accused_name = "ユキ";
f.isCorrect = (f.heard_argument && f.yuki_inquired);
[endscript]

[if exp="f.isCorrect == true"]
; 正しい推理の場合
あなたは論理的に推理を展開し、[emb exp="f.accused_name"]の動機と行動を示した。[l][r]
犯人は観念し、真実を語り始めた。[l][r]

[emb exp="f.accused_name"]：「...そうだ、私がやった。彼が許せなかったんだ。」[l][r]

【 TRUE END 】[l][cm]

[jump target=*start]
[else]
; 間違った推理の場合
あなたの推理は間違っていた。[l][r]
犯人は別にいるようだ。[l][r]

突然、照明が消えた。[l][r]
闇の中であなたは何者かに襲われ、意識を失った。[l][r]

【 BAD END 】[l][cm]

[jump target=*start]
[endif]

*accuse_akira

あなた：「アキラさん、あなたが犯人ですね！」[l][r]

アキラ：「面白い冗談だね。」[l][r]

[iscript]
f.accused_name = "アキラ";
f.isCorrect = (f.akira_motive && f.akira_inquired);
[endscript]

[if exp="f.isCorrect == true"]
; 正しい推理の場合
あなたは論理的に推理を展開し、[emb exp="f.accused_name"]の動機と行動を示した。[l][r]
犯人は観念し、真実を語り始めた。[l][r]

[emb exp="f.accused_name"]：「...そうだ、私がやった。彼が許せなかったんだ。」[l][r]

【 TRUE END 】[l][cm]

[jump target=*start]
[else]
; 間違った推理の場合
あなたの推理は間違っていた。[l][r]
犯人は別にいるようだ。[l][r]

突然、照明が消えた。[l][r]
闇の中であなたは何者かに襲われ、意識を失った。[l][r]

【 BAD END 】[l][cm]

[jump target=*start]
[endif]

*accuse_miyu

あなた：「犯人はミユさん、あなたです！」[l][r]

ミユ：「そんな...違います！」[l][r]

[iscript]
f.accused_name = "ミユ";
f.isCorrect = (f.miyu_motive && f.miyu_inquired);
[endscript]

[if exp="f.isCorrect == true"]
; 正しい推理の場合
あなたは論理的に推理を展開し、[emb exp="f.accused_name"]の動機と行動を示した。[l][r]
犯人は観念し、真実を語り始めた。[l][r]

[emb exp="f.accused_name"]：「...そうだ、私がやった。彼が許せなかったんだ。」[l][r]

【 TRUE END 】[l][cm]

[jump target=*start]
[else]
; 間違った推理の場合
あなたの推理は間違っていた。[l][r]
犯人は別にいるようだ。[l][r]

突然、照明が消えた。[l][r]
闇の中であなたは何者かに襲われ、意識を失った。[l][r]

【 BAD END 】[l][cm]

[jump target=*start]
[endif]

*accuse_taro

あなた：「タロウさん、あなたが犯人だ！」[l][r]

タロウ：「証拠はあるのか？」[l][r]

[iscript]
f.accused_name = "タロウ";
f.isCorrect = (f.taro_motive && f.taro_inquired);
[endscript]

[if exp="f.isCorrect == true"]
; 正しい推理の場合
あなたは論理的に推理を展開し、[emb exp="f.accused_name"]の動機と行動を示した。[l][r]
犯人は観念し、真実を語り始めた。[l][r]

[emb exp="f.accused_name"]：「...そうだ、私がやった。彼が許せなかったんだ。」[l][r]

【 TRUE END 】[l][cm]

[jump target=*start]
[else]
; 間違った推理の場合
あなたの推理は間違っていた。[l][r]
犯人は別にいるようだ。[l][r]

突然、照明が消えた。[l][r]
闇の中であなたは何者かに襲われ、意識を失った。[l][r]

【 BAD END 】[l][cm]

[jump target=*start]
[endif]
