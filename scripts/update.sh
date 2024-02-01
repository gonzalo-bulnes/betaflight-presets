rm -rf misc presets

PERSONAL_BRANCH=personal

git checkout $PERSONAL_BRANCH
git pull origin $PERSONAL_BRANCH

git remote add betaflight git@github.com:betaflight/firmware-presets.git
git fetch betaflight master
git checkout master
git pull betaflight master
git checkout $PERSONAL_BRANCH

git remote add chrisrosser git@github.com:chrisrosser/firmware-presets.git
git fetch chrisrosser aos-rc
git checkout aos-rc
git pull chrisrosser aos-rc
git checkout $PERSONAL_BRANCH


git checkout $PERSONAL_BRANCH

git checkout master -- presets/4.4/vtx/HDZero.txt
git checkout master -- presets/4.5/vtx/HDZero.txt
git checkout master -- presets/4.3/rc_link/elrs_250hz.txt
git checkout master -- presets/4.3/rc_link/defaults.txt
git checkout master -- presets/4.3/vtx/defaults_vtx_tables.txt
git checkout master -- misc/disclaimer/en/vtxtable.txt
git checkout master -- misc/warnings/en/rpm_filters.txt

git checkout aos-rc -- presets/4.4/tune/aos_rc/aos_3.5_tune.txt
git checkout aos-rc -- presets/4.4/tune/defaults.txt
git checkout aos-rc -- presets/4.4/filters/aos_rc/aos_3.5_filters.txt
git checkout aos-rc -- presets/4.3/filters/defaults.txt
