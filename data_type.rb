puts <<~TEXT

整数 #{1.class}
少数 #{1.0.class}
文字列 #{"文字列".class}
配列 #{[1, 2, 3].class}
連想配列 #{{"key" => "value"}.class}
true #{true.class}
false #{false.class}
nil（存在なし）#{nil.class}

TEXT
