
  select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Rania Elhadad%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'  

SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Rania Elhadad%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR  CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=7

--pattern instance
SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE  CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and LocationID=7
and o.physicianid= 18100606

--temp patern 

SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [OPD].[PHS_TempOPDPattern] aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Rania Elhadad%'
and ( CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=7

--RANIA 1 ACTUAL + 1 APOLOGY + 1 Temp 
--=================================================
  select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mai Mohamed El-Ghazaly Ahmed%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'  


SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mai Mohamed El-Ghazaly Ahmed%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR  CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=7

--pattern instance
SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE  CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and LocationID=7
and o.physicianid= 9940560

--temp patern 

SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [OPD].[PHS_TempOPDPattern] aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mai Mohamed El-Ghazaly Ahmed%'
and ( CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=7

--MAI 1 APOLOGY 
--====================================================
  select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%yasmine Maamoun%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'  

SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%yasmine Maamoun %'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE  CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and LocationID=1    --FOR  SHALALAT
and o.physicianid= 18100905

--temp patern 

SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [OPD].[PHS_TempOPDPattern] aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%yasmine Maamoun%'
and ( CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1

---no apology no clinic 


--====================================================
  select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%hassan khalaf%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


 SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%hassan khalaf %'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and LocationID=1    --FOR  SHALALAT
and o.physicianid= 9940451

--temp patern 

SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [OPD].[PHS_TempOPDPattern] aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%hassan khalaf%'
and ( CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1

--hassan khalaf  no apology no clinics

 --=============================================================================================================================
 select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Ahmed El raei %'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Ahmed El raei %'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=1    --FOR  SHALALAT
and o.physicianid= 18101389

--Ahmed El raei  no apology no clinics
---=====================================================

select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mona Abdelfattah Nada%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mona Abdelfattah Nada%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=1    --FOR  SHALALAT
and o.physicianid= 18101020

----has no apology and no clinics 
======================================



select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%ahmed samara%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%ahmed samara%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=1    --FOR  SHALALAT
and o.physicianid= 18101049

----hass 6 apology 

--------------------------------------



select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Kareem Hussien Mohamed Shebl%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'



SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Kareem Hussien Mohamed Shebl%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=1    -- FOR SHALALAT


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=1    --FOR  SHALALAT
and o.physicianid= 18101367

---had no clinics in 11-10
----------------------------------------------


select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mohamed elmenisy%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mohamed elmenisy%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 274

-----HE HAD NO CLINICS 
------------------------------------------------------------------------


select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mahmoud Hamdy Fergany%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mahmoud Hamdy Fergany%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 18101068

---HAD NO CLINICS

------------------------------------------------------------------

select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mohamed Abdel Salam%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mohamed Abdel Salam%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 18101307


--had no clinics 
-------------------------------------------------------------------------

select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Noor Salah al sayed%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Noor Salah al sayed%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 18101271

------------------------------------------------------

select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%sameh abdelaziz mansour%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%sameh abdelaziz mansour%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 18101342

---- nop clinics found the doctor 

----------------------------------------------------

select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%eyad mohamed ftouh%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%eyad mohamed ftouh%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 18101317

---- nop clinics found to the doctor 

--------------------------------


select * from  OPD.PHS_OPDPattern 
where PhysicianEnName like  N'%Mostafa Ramadan%'   ---- to get doctor id 
AND StartDate='2020-10-11 00:00:00.000'


SELECT bb.PhysicianEnName ,bb.LocationID ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Mostafa Ramadan%'
and (CAST(aa.EffectiveStartDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.CreatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -9, cast(getdate() as date)) )
and LocationID=3    -- FOR MAADI


SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE CAST(StartDateTime AS DATE) =dateadd(DD, -9, cast(getdate() as date))
and o.LocationID=3    --FOR  MAADI
and o.physicianid= 289

----------------------------------------no clinics to the doctor