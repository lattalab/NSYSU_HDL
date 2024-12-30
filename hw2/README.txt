VCS simulation正常輸出的waveform格式是fsdb，需要使用以下指令：

fsdb2vcd example.fsdb -o example.vcd

將fsdb file轉換成vcd file，使PrimeTime Power Analysis可以正確讀取。