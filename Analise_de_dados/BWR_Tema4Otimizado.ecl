IMPORT $, STD;
PEP := $.Tema4.FilePEP;
BestRecordPEP := STD.DataPatterns.BestRecordStructure(PEP);
OUTPUT(BestRecordPEP, ALL, NAMED('BestRecordPEP'));

Politicos := $.Tema4.FilePoliticos;
BestRecordPoliticos := STD.DataPatterns.BestRecordStructure(Politicos);
OUTPUT(BestRecordPoliticos, ALL, NAMED('BestRecordPoliticos'));

Empresas := $.Tema4.FileEmpresas;
BestRecordEmpresas := STD.DataPatterns.BestRecordStructure(Empresas);
OUTPUT(BestRecordEmpresas, ALL, NAMED('BestRecordEmpresas'));