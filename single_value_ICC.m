clear
clc

%Take the ICC map that was created based on the specific connectivity mask
%(for the specific seed). The mask has to initially being changed (Use ImCalc in SPM) to the
%same dimentions of the other nii/ initial ICC maps. 

%read in data


V=spm_vol('E:\conn_analysis\conn_project25\results\ICC\PCC\ICC.img');
V=spm_vol('E:\conn_analysis\conn_project25\results\ICC\prec\ICC.img');
V=spm_vol('E:\conn_analysis\conn_project25\results\ICC\SMA\ICC.img');
V=spm_vol('E:\conn_analysis\conn_project25\results\ICC\IPS\ICC.img');
V=spm_vol('E:\conn_analysis\conn_project25\results\ICC\PCC\MASK\ICC_MASK_BASED\ICC.img');



% load the ICC data
ICC=spm_read_vols(V);

%change the matrix to a vector
ICCv=ICC(:);

%Exlude NaN values
mean = nanmean(ICCv)
median = nanmedian(ICCv)
Max = nanmax(ICCv)
Min = nanmin(ICCv)
STD = nanstd(ICCv)