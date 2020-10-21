


-----Rania Elhadad 
--1--
--checking in pivot dose not exist 

==============================================
--2-- checking in data wrehouse  facts 

select * 
from opddax.DimPhysician
where PhysicianEnglishName='Rania Elhadad'

--B- in fact apology 

select *
from opddax.FactClinicsApologiesv2
where PhysicianID= 118100606
--and IsActive = 1
and ApologyDateKey ='20201008' 
order by ApologyDateKey desc



--A-in fact working clinnics 

select *
from opddax.factworkingclinicsv2
where 
StartDateTime between '2020-10-11 01:00:00.000'and  '2020-10-11 23:00:00.000'
and IsActive = 1
and PhysicianID= 118100606
order by datekey desc


--=================================================

--3--checking in data warehous tables  not staging 
--A--Exceptions
SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM newopd.PHS_PatternException aa join newopd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName = N'Rania Elhadad'
and LocationID=7
and aa.CreatedDate >='2020-10-11 00:00:00.000' --or aa.UpdatedDate >='2020-10-11 00:00:00.000'


--she had only one exception in 10-10 not 11-10

--B--Pattern Instance
SELECT *   ,2 as Datasource
FROM newopd.BK_PatternInstance i
left join newopd.PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE i.StartDateTime >='2020-10-11 00:00:00.000' --and i.StartDateTime <='2020-10-11 23:00:00.000'
and LocationID=7
and o.physicianid= 18100606

-- she had no pattern  in 11-10

--===================================================

--4--checking in staging tables 

--A--Exceptions
SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM opdstg.PHS_PatternException aa join opdstg.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName = N'Rania Elhadad'
and LocationID=7
and aa.CreatedDate >='2020-10-11 00:00:00.000' --or aa.UpdatedDate >='2020-10-11 00:00:00.000'

--B--Pattern Instance
SELECT *   ,2 as Datasource
FROM opdstg.BK_PatternInstance i
left join opdstg.PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE i.StartDateTime >='2020-10-11 00:00:00.000' -- or i.StartDateTime >='2020-10-11 00:00:00.000'
and LocationID=7
and o.physicianid= 18100606 


--she had only one exception in 10-10 not 11-10
--=============================================

--5-- checking in the live DB change to server 3.121.57.119 Anc.inv.hcms DB
---Exception
SELECT bb.PhysicianEnName ,*   ,1 as DataSource
FROM [opd].PHS_PatternException aa join opd.PHS_OPDPattern bb
on aa.OPDPatternID=bb.ID
WHERE bb.PhysicianEnName like N'%Rania Elhadad%'
and ( CAST(aa.CreatedDate AS DATE) = dateadd(DD, -3, cast(getdate() as date)) OR CAST(aa.UpdatedDate AS DATE) = dateadd(DD, -3, cast(getdate() as date)) )
and LocationID=7

--pattern instance
SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left outer join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
WHERE  CAST(StartDateTime AS DATE) =dateadd(DD, -3, cast(getdate() as date))
and LocationID=7
and o.physicianid= 18100606




