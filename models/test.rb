require "./models/parser.rb"

@parser = Parse.new
p @parser.parse("

                                                             [2014-04-11 20:30]
                                                             rps     Pages   T1   T2   T3     C    M    Y    K  Status
                                                             -----  ------- ---- ---- ----  ---- ---- ---- ---- ------
                                                             rps01      599 100% 100% 100%   90%  90%  90%  90% Energy Saver Mode
                                                             rps02      900  75% 100% 100%  100% 100% 100%  80% Energy Saver Mode
                                                             rps03     1426  75% 100% 100%   80%  60%  60%  80% Energy Saver Mode
                                                             rps04     2070  25% 100% 100%   90%  90%  90%  70% Energy Saver Mode
                                                             rps05     2179 100% 100% 100%    5%  50%  50%  70% Energy Saver Mode
                                                             rps07      920  75% 100% 100%  100% 100% 100%  90% Energy Saver Mode
                                                             rps08     4124   0% 100%  10%   80%  80%  80%  70% Energy Saver Mode
                                                             rps09      849  75% 100% 100%   80%  80%  90%  80% Energy Saver Mode
                                                             rps10     2041  10% 100% 100%   80%  80%  70%  80% Energy Saver Mode
                                                             rps11     1510 100%  75%  75%   50%  70%  60%  80% Energy Saver Mode
                                                             rps12     2587 100% 100% 100%   60%  80%  80%   5% Energy Saver Mode
                                                             rps13    13219   0%  75%  75%   40%  70%  50%  80% Energy Saver Mode
                                                             rps14    14766   0% 100% 100%   90%   5% 100%  50% Energy Saver Mode
                                                             rps15     1372 100%  75% 100%   40%  60%  50%  80% Energy Saver Mode
                                                             rps16      817  75%  75% 100%  100% 100% 100%  80% Energy Saver Mode

                                                             ")
