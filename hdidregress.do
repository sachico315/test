*Setup
webuse hhabits
*Estimate ATETs of treatment hhabit on outcome body mass index, bmi for school districts over year; use AIPW estimator and model bmi using medu, girl, sports, and model treatment hhabit using parksd
hdidregress aipw (bmi medu i.girl i.sports) (hhabit parksd), group(schools) time(year)

    As above but only model the treatment using the RA estimator
        . hdidregress ra (bmi medu i.girl i.sports) (hhabit), group(schools) time(year)

    Fit the same model but instead use the TWFE estimator
        . hdidregress twfe (bmi medu i.girl i.sports) (hhabit), group(schools) time(year)

    Fit a TWFE without only cohort and treatment interactions using hettype(cohort)
        . hdidregress twfe (bmi medu i.girl i.sports) (hhabit), group(schools) time(year) hettype(cohort)
