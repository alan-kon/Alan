IMPORT $,STD;
crimes := $.BWR_Tarefa_Aula5;
filtro := crimes.date[7..10] >= '2010' AND crimes.date[7..10] <= '2020';
recset := crimes(filtro);
rec2 := RECORD
	ano := recset.date[7..10];
	cnt := COUNT(GROUP);
END;
crosstab := TABLE(recset,rec2,date[7..10];
crosstab;