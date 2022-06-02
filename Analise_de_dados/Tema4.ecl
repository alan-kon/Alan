EXPORT Tema4 := MODULE
	EXPORT Layout_PEP := RECORD
		STRING CPF;
    STRING Nome_PEP;				
    STRING Sigla_Funcao;
    STRING Descricao_Funcao;
		STRING Nivel_Funcao;
		STRING Nome_orgao;
		STRING Data_Inicio_Exercicio;
		STRING Data_Fim_Exercicio;
		STRING Data_Fim_Carencia;
END;
EXPORT FilePEP := DATASET ('~pep::202204_pep[1].csv', Layout_PEP, csv(heading(1)));



	// EXPORT Layout_Politicos := RECORD
		// STRING 
    // STRING 
    // STRING 
    // STRING 
// END;
// EXPORT FilePoliticos := DATASET ('nomedospraydopolíticos.csv', Layout_Politicos, csv(heading(1)));



	// EXPORT Layout_Empresas := RECORD
		// STRING 
    // STRING 
    // STRING 
    // STRING 
// END;
// EXPORT FileEmpresas := DATASET ('nomedospraydoempresas.csv', Layout_Empresas, csv(heading(1)));
END;