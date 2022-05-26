IMPORT $, STD;
crimes := $.Tarefa3_Otimizada.File;
filtro := crimes.year >= 2010 AND crimes.year <= 2020;
recset := crimes(filtro);
rec2 := RECORD
	ano := recset.year;
	cnt := COUNT(GROUP);
END;
crosstab := TABLE(recset,rec2,year);
media := AVE(crosstab,cnt);
crosstab;
media;
