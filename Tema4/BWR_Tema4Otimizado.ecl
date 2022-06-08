IMPORT $, STD;
Seguro_Defeso := $.Tema4.File_Seguro_Defeso;
BestRecordSeguroDefeso := STD.DataPatterns.BestRecordStructure(Seguro_Defeso);
OUTPUT(BestRecordSeguroDefeso, ALL, NAMED('BestRecordSeguroDefeso'));

BPC := $.Tema4.File_BPC;
BestRecordBPC := STD.DataPatterns.BestRecordStructure(BPC);
OUTPUT(BestRecordBPC, ALL, NAMED('BestRecordBPC'));

Auxilio_Emergencial := $.Tema4.File_Auxilio_Emergencial;
BestRecordAuxilioEmergencial := STD.DataPatterns.BestRecordStructure(Auxilio_Emergencial);
OUTPUT(BestRecordAuxilioEmergencial, ALL, NAMED('BestRecordAuxilioEmergencial'));

Garantia_Safra := $.Tema4.File_Garantia_Safra;
BestRecordGarantiaSafra := STD.DataPatterns.BestRecordStructure(Garantia_Safra);
OUTPUT(BestRecordGarantiaSafra, ALL, NAMED('BestRecordGarantiaSafra'));