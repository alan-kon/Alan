IMPORT $, STD;
LayoutCrimesID := RECORD
    UNSIGNED4 recid;
    STRING data_formatada;
    UNSIGNED hora_formatada;
    $.Tarefa3_Otimizada.NewLayout AND NOT date;
END;


LayoutCrimesID ID_Recs($.Tarefa3_Otimizada.File L,INTEGER C) := TRANSFORM
	SELF.recid := C;
  SELF.data_formatada := (L.date[1..10]);
  SELF.hora_formatada := (UNSIGNED4) STD.Date.TimeFromParts
		(IF(L.Date[21..22]='PM',
			IF(L.Date[12..13]='12',12,(UNSIGNED1)L.Date[12..13]+12),
			IF(L.Date[12..13]='12',24,(UNSIGNED1)L.Date[12..13])),
			(UNSIGNED1)L.Date[15..16],(UNSIGNED1)L.Date[18..19]);
	SELF := L;
END;

 novo_dataset := PROJECT($.Tarefa3_Otimizada.File, ID_Recs(LEFT,COUNTER));
 novo_dataset;