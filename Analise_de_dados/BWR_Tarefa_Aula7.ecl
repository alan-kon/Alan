IMPORT $, STD;
LayoutCrimesID := RECORD
    UNSIGNED4 recid;
    STRING data_formatada;
    STRING hora_formatada;
    $.Tarefa3_Otimizada.NewLayout;
END;


LayoutCrimesID ID_Recs($.Tarefa3_Otimizada.File L,INTEGER C) := TRANSFORM
	SELF.recid := C;
  SELF.data_formatada := L.date[1..10];
  SELF.hora_formatada := L.date[12..19];
	SELF := L;
END;

 novo_dataset := PROJECT($.Tarefa3_Otimizada.File, ID_Recs(LEFT,COUNTER));
 novo_dataset;