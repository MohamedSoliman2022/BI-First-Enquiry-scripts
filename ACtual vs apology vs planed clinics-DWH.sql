


select doc.mainspecialityEnglish ,doc.PhysicianEnglishName ,fwc.physicianid ,
count (fwc.AltKey)as ActualClinics , 
count (Distinct fca.OPDPatternID)as ApologyDays ,
(count (fwc.AltKey) + count (Distinct fca.OPDPatternID))as PlannedClinics
from opddax.DimPhysician doc 
left outer join opddax.factworkingclinicsv2  fwc 
on doc.physiciankey=fwc.physicianid 
left outer join opddax.FactClinicsApologiesv2  fca 
on doc.physiciankey=fca.[PhysicianID] 
where fwc.OrganizationKey=6    --to find bu 
and fwc.datekey=20201011        --to find date 
and fwc.IsActive=1    --counting wc condition
and fca.ApologyDateKey=20201011
and fca.OrganizationKey=6
and fca.EffectKey=1   -- counting apology condition 
and doc.PhysicianEnglishName='Heba Mahmoud Dunya'
group by  doc.mainspecialityEnglish ,doc.PhysicianEnglishName ,fwc.physicianid




select *
from opddax.factworkingclinicsv2
where physicianid  = 1168
and IsActive = 1
and datekey = 20201011


select * 
from opddax.FactClinicsApologiesv2 
where 
physicianid  = 1168
and EffectKey=1 
and clinicDateKey = 20201011

