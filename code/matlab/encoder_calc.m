clear all; close all; clc;

max_freq_pr_chan = 200000;
min_edge_sep_pr_chan_req = 1/max_freq_pr_chan

cpr = 7200;
max_rpm = 1013;
max_rps = max_rpm/60

edge_sep_pr_chan = 1/((max_rps * cpr)/2)

min_edge_s1ep_pr_chan_req < edge_sep_pr_chan