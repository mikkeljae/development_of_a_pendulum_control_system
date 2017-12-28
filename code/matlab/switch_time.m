clear all; close all; clc;

Ciss = 4476e-12;
Rgi = 2.4;
Rge = 7;
Rg = Rgi + Rge
Vgp = 4.5;
Vgs = 8;

t2 = Rg * Ciss * log(1/(1-Vgp/Vgs))