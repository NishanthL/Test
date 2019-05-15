clc;
clear all;
close all;


feedbck =1;
cut_out= 25;
cut_in = 40;
y=[];
for ii= 1:5
if feedbck==1

y= [y ((cut_out:cut_in-1)*1 + 1)] ;
feedbck=0;
else

y= [y ((1:cut_in-cut_out)*-1 +cut_in)] ;
feedbck=1;
end
end

plot(y)