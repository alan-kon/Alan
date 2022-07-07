IMPORT $;
Layout_T_recs := RECORD
UNSIGNED4 block_ID := $.Formatted_File.row_id;
$.Formatted_File.Block;
END;
T_recs := TABLE($.Formatted_File,Layout_T_recs);
S_recs := SORT(T_recs,block);
S_recs;
COUNT(S_recs);
Layout_T_recs RollCSV(Layout_T_recs L, Layout_T_recs R) := TRANSFORM
SELF.block_ID := IF(L.block_ID < R.block_ID,L.block_ID,R.block_ID);
SELF := L;
END;
Rollup_block := ROLLUP(S_Recs,LEFT.block=RIGHT.block,RollCSV(LEFT,RIGHT));
Rollup_block;
COUNT(Rollup_block);
S_Rollup_block := SORT(Rollup_block,block_ID);
OUTPUT(S_Rollup_block,,'~CLASS::HMW::OUT::LookupBlock',OVERWRITE);

-------------------------------------------------------------------------------
EXPORT NormAddrRecs := MODULE
EXPORT Layout := RECORD
UNSIGNED4 block_ID;
STRING38 Block;
END;
EXPORT File := DATASET('~CLASS::HMW::OUT::LookupBlock',Layout,THOR);
END;

-------------------------------------------------------------------------------
IMPORT $;
EXPORT NormCrimeRecs := MODULE
EXPORT Layout := RECORD
UNSIGNED row_id;
UNSIGNED4 day;
UNSIGNED4 time;
STRING11 Case_Number;
STRING4 IUCR;
STRING33 Primary_Type;
STRING60 Description;
UNSIGNED4 block_ID;
END;
EXPORT File := DATASET('~CLASS::HMW::OUT::Crimes_Slim',Layout,THOR);
END;

------------------------------------------------------------------------------
IMPORT $;
$.NormCrimeRecs.Layout Slimdown(RECORDOF($.Formatted_File) L,
$.NormAddrRecs.Layout R) := TRANSFORM
SELF.block_ID := R.block_ID;
SELF := L;
END;
SlimRecs := JOIN($.Formatted_File,$.NormAddrRecs.File,
LEFT.block=RIGHT.block,
Slimdown(LEFT,RIGHT),
LEFT OUTER, LOOKUP);
OUTPUT(SlimRecs,,'~CLASS::HMW::OUT::Crimes_Slim',overwrite);
