# MFHD records transformation report
<br/>Data errors preventing records from being migrated are marked **FIX BEFORE MIGRATION**. The library is advised to clean up these errors in the source data.<br/><br/> The sections related to field counts and mapping results are marked **REVIEW**. These do not indicate errors preventing records from being migrated, but may point to data anomalies or in the mappings. The library should review these to make sure that the numbers are what one would expect, knowing the source data. Is this the expected number of serials? Is this the expected number of cartographic materials?
## Timings

Measure | Value
--- | ---:
Time Started: | 2024-03-21T01:19:27.976633+00:00
Time Finished: | 2024-03-21T01:19:38.262270+00:00
Elapsed time: | 0:00:10.285637
## General statistics
A list of general counters to outline the transformation as a whole.
<details><summary>Click to expand all 6 things</summary>

Measure | Count
--- | ---:
Inventory records written to disk | 9,698
Records in file before parsing | 9,698
Records successfully decoded from MARC21 | 9,698
SRS records written to disk | 9,698
Unique ID:s written to legacy map | 9,698
</details>

## Record status (leader pos 5)
Library action: **All values that are not a, c, d, n or p will be set to c. If this is not what you want, you need to correct these values in your system. **<br/>An overview of the Record statuses (Leader position 5) present in your source data.    Pay attention to the number of occurrences of the value 'd'. These d's are expressing that they are deleted, and the records might not work as expected in FOLIO. Consider marking them as suppressed in your current system and export them as a separate batch in order to have them suppressed in FOLIO. Allowed values according to the MARC standard are a,c,d,n,p
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
n | 9,698
</details>

## Trivia

<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Total number of Tags processed | 38,792
</details>

## Holdings type mapping

<details><summary>Click to expand all 3 things</summary>

Measure | Count
--- | ---:
Condition in rules hit | 9,698
x -> Monograph -> Monograph (03c9c400-b9e3-4a07-ac0e-05ab470233ed | 9,698
</details>

## Callnumber type mapping
Call number types in MFHDs are mapped from 852, Indicator 1 according to a certain scheme. (LOC documentation)[https://www.loc.gov/marc/holdings/hd852.html]
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Mapped from Indicator 1 0 -> Library of Congress classification | 9,698
</details>

## Location mapping
These are the results for the mapping between legacy locations and your new FOLIO location structure
<details><summary>Click to expand all 9 things</summary>

Measure | Count
--- | ---:
'1F' (1F) -> 1st floor | 888
'2F' (2F) -> Stacks 2nd floor | 3,237
'BKF' (BKF) -> Backoffice | 18
'BSD' (BSD) -> Biblioteca e Serviços de Documentação | 9
'SINLOCALIZACION' (SINLOCALIZACION) -> SINLOCALIZACION | 4,935
'ST' (ST) -> Storage | 611
Fallback mapping: SINLOCALIZACION->SINLOCALIZACION | 4,935
Set 852 to FOLIO location code | 9,698
</details>

## HRID and 001/035 handling
There are two ways of handling HRIDs. The default behaviour is to take the current 001 and move that to a new 035. This will also emerge as an Identifier on the Inventory Instances. The 001 and Instance HRID will be generated from the HRID settings in FOLIO. The second option is to maintain the 001s in the records, and also add this as the Instance HRID
<details><summary>Click to expand all 4 things</summary>

Measure | Count
--- | ---:
Added 035 from 001 | 9,698
Created HRID using default settings | 9,698
Values in 003: Empty | 9,698
</details>

## Suppression
What records got assigned what suppression setting in the records.
<details><summary>Click to expand all 2 things</summary>

Measure | Count
--- | ---:
Suppressed from discovery = False | 9,698
</details>

## Mapped FOLIO fields
<details><summary>Click to expand field report</summary>

FOLIO Field | Mapped | Unmapped
---|---|---
_version | 0 (0%) | 9,698 (100%) 
acquisitionFormat | 0 (0%) | 9,698 (100%) 
acquisitionMethod | 0 (0%) | 9,698 (100%) 
administrativeNotes | 9,698 (100%) | 0 (0%) 
bareHoldingsItems | 0 (0%) | 9,698 (100%) 
callNumber | 9,698 (100%) | 0 (0%) 
callNumberPrefix | 0 (0%) | 9,698 (100%) 
callNumberSuffix | 0 (0%) | 9,698 (100%) 
callNumberTypeId | 9,698 (100%) | 0 (0%) 
copyNumber | 0 (0%) | 9,698 (100%) 
digitizationPolicy | 0 (0%) | 9,698 (100%) 
discoverySuppress | 9,698 (100%) | 0 (0%) 
effectiveLocationId | 0 (0%) | 9,698 (100%) 
electronicAccess | 0 (0%) | 9,698 (100%) 
formerIds | 9,698 (100%) | 0 (0%) 
holdingsInstance | 0 (0%) | 9,698 (100%) 
holdingsItems | 0 (0%) | 9,698 (100%) 
holdingsStatements | 0 (0%) | 9,698 (100%) 
holdingsStatementsForIndexes | 0 (0%) | 9,698 (100%) 
holdingsStatementsForSupplements | 0 (0%) | 9,698 (100%) 
holdingsTypeId | 9,698 (100%) | 0 (0%) 
hrid | 9,698 (100%) | 0 (0%) 
id | 9,698 (100%) | 0 (0%) 
illPolicy | 0 (0%) | 9,698 (100%) 
illPolicyId | 0 (0%) | 9,698 (100%) 
instanceId | 9,698 (100%) | 0 (0%) 
metadata | 0 (0%) | 9,698 (100%) 
notes | 0 (0%) | 9,698 (100%) 
numberOfItems | 0 (0%) | 9,698 (100%) 
permanentLocation | 0 (0%) | 9,698 (100%) 
permanentLocationId | 9,698 (100%) | 0 (0%) 
receiptStatus | 0 (0%) | 9,698 (100%) 
receivingHistory | 0 (0%) | 9,698 (100%) 
retentionPolicy | 0 (0%) | 9,698 (100%) 
shelvingTitle | 0 (0%) | 9,698 (100%) 
sourceId | 9,698 (100%) | 0 (0%) 
statisticalCodeIds | 0 (0%) | 9,698 (100%) 
tags | 0 (0%) | 9,698 (100%) 
temporaryLocationId | 0 (0%) | 9,698 (100%) 
</details>

## Mapped Legacy fields
<details><summary>Click to expand field report</summary>

Legacy Field|Present|Mapped|Unmapped
---|---|---|---
001 | 9,698 (100.0%) | 9,698 (100%) | 0  
004 | 9,698 (100.0%) | 0 (0%) | 9,698  
008 | 9,698 (100.0%) | 0 (0%) | 9,698  
852 | 9,698 (100.0%) | 9,698 (100%) | 0  
</details>
