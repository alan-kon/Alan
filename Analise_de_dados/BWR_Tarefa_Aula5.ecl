IMPORT $, STD;
Crimes := $.Tarefa3.File;
BestRecord := STD.DataPatterns.BestRecordStructure(crimes);
OUTPUT(BestRecord, ALL, NAMED('BestRecord'));
