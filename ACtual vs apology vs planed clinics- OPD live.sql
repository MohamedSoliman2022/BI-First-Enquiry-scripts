
SELECT * 
FROM [opd].BK_PatternInstance i
left join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID
 and o.PhysicianID=168
 where i.StartDateTime between '2020-10-11 01:00:00.000'and  '2020-10-11 23:00:00.000'
 and o.PhysicianID=168
 and i.IsActive=1
order by i.StartDateTime desc 

----------------------
select  bb.PhysicianID,bb.PhysicianArName,pin.StartDateTime,pin.EndDateTime,pin.PatternID , aa.OPDPatternID ,* from  OPD.PHS_PatternException aa 
left outer join  opd.BK_PatternInstance pin
on pin.PatternID =  aa.OPDPatternID 
left outer join  opd.PHS_OPDPattern bb
on pin.PatternID =  bb.ID 
where pin.StartDateTime between '2020-10-11 01:00:00.000'and  '2020-10-11 23:00:00.000'
and aa.DateFrom='2020-10-11 00:00:00.000'
and bb.PhysicianID=168
order by pin.StartDateTime desc 

-------------------------------------------------

SELECT physicianid,*   ,2 as Datasource
FROM [opd].PHS_OPDPattern
WITH(NOLOCK)
WHERE   = N'Heba Mahmoud Dunya' 
and (CAST(CreatedDate AS DATE) >= dateadd(DD, -1, cast(getdate() as date)) OR CAST(UpdatedDate AS DATE) >= dateadd(DD, -1, cast(getdate() as date)))


------------------------------------------------

SELECT *   ,2 as Datasource
FROM [opd].PHS_PatternException
WITH(NOLOCK)
WHERE
--( CAST(CreatedDate AS DATE) >= dateadd(DD, -1, cast(getdate() as date)) OR CAST(UpdatedDate AS DATE) >= dateadd(DD, -1, cast(getdate() as date)))
--and DateFrom='2020-10-11 00:00:00.000'
--and 
OPDPatternID=18134287


-----------------------------------
SELECT *   ,2 as Datasource
FROM [opd].BK_PatternInstance i
left join [opd].PHS_OPDPattern  o
 on o.id = i.PatternID

WHERE CAST(i.StartDateTime AS DATE) >=dateadd(DD, -1, cast(getdate() as date))
and cast ( i.StartDateTime as date ) = cast ('2020-10-11 12:00:00.000' as date )

and o.physicianid= 168




select   * 
from [opd].PHS_OPDPattern
where PhysicianArName like N'%œ‰Ì%'
--where id  in (118134286)
and IsDeleted = 0
