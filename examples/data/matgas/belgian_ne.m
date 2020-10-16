function mgc = belgian-ne

%% required global data
mgc.energy_factor = 2.61590529e-08;
mgc.gas_molar_mass = 0.0185674;
mgc.gas_specific_gravity = 0.6;
mgc.specific_heat_capacity_ratio = 1.4;  % unitless
mgc.temperature = 281.15;  % K
mgc.compressibility_factor = 0.8;  % unitless
mgc.standard_density = 1.0; %
mgc.units = 'si';

%% optional global data (that was either provided or computed based on required global data)
mgc.sound_speed = 317.354;  % m/s
mgc.R = 8.314;  % J/(mol K)
mgc.base_pressure = 8000000;  % Pa
mgc.base_length = 5000;  % m
mgc.base_flow = 535; % kg/s
mgc.is_per_unit = 0;

%% junction data
% id	p_min	p_max	p_nominal	junction_type	status	pipeline_name	edi_id	lat	lon
mgc.junction = [
1	      0	      7700000	0	      0	1	'belgian'	1	      51.317627 3.207505
2	      0	      7700000	0	      0	1	'belgian'	2	      51.273122 3.225252
3	      3000000	8000000	3000000	0	1	'belgian'	3	      51.213300 3.238619
4	      0	      8000000	0	      0	1	'belgian'	4	      51.129415 3.565951
5	      0	      7700000	0	      0	1	'belgian'	5	      51.398470 4.642843
6	      3000000	8000000	3000000	0	1	'belgian'	6	      51.228278 4.396853
7	      3000000	8000000	3000000	0	1	'belgian'	7	      51.021064 3.696627
8	      5000000	6620000	5000000	0	1	'belgian'	8	      50.747104 5.807359
9	      0	      6620000	0	      0	1	'belgian'	9	      50.742332 5.728989
10      3000000	6620000	3000000	0	1	'belgian'	10	    50.623966 5.604243
11	    0	      6620000	0	      0	1	'belgian'	11	    50.594875 5.226843
12	    0	      6620000	0	      0	1	'belgian'	12	    50.457312 4.857902
13	    0	      6620000	0	      0	1	'belgian'	13	    50.404252 4.282298
14    	0	      6620000	0      	0	1	'belgian'	14	    50.436809 4.148354
15	    0	      6620000	0	      0	1	'belgian'	15	    50.460400 3.963180
16	    5000000	6620000	5000000	0	1	'belgian'	16	    50.356656 3.895753
17	    0	      6620000	0	      0	1	'belgian'	17	    50.522473 5.208038
18	    0	      6300000	0      	0	1	'belgian'	18	    50.274169 5.254187
19	    0	      6620000	0	      0	1	'belgian'	19	    49.682769 5.789927
20	    2500000	6620000	2500000	0	1	'belgian'	20	    49.539411 5.835195
81	    0	      6620000	0	      0	1	'belgian'	81	    50.400676 5.855991
171	    0	      6620000	0	      0	1	'belgian'	171	    50.806672 4.481877
];

%% pipe data
% id	fr_junction	to_junction	diameter	length	friction_factor	p_min	p_max	status
mgc.pipe = [
1	  1	  2	  0.89	  4000	0.0070	0	      7700000	1
2	  1	  2	  0.89	  4000	0.0070	0	      7700000	1
3	  2	  3	  0.89	  6000	0.0070	0	      8000000	1
4	  2	  3	  0.89	  6000	0.0070	0	      8000000	1
5	  3	  4	  0.89	  26000	0.0070	3000000	8000000	1
6	  5	  6	  0.5901	43000	0.0076	0	      8000000	1
7	  6	  7	  0.5901	29000	0.0076	3000000	8000000	1
8	  7	  4	  0.5901	19000	0.0076	3000000	8000000	1
9	  4	  14	0.89	  55000	0.0070	0	      8000000	1
12	9	  10	0.89	  20000	0.0070	0	      6620000	1
13	9	  10	0.3955	20000	0.0082	0	      6620000	1
14	10	11	0.89	  25000	0.0070	0	      6620000	1
15	10	11	0.3955	25000	0.0082	0	      6620000	1
16	11	12	0.89	  42000	0.0070	0	      6620000	1
17	12	13	0.89	  40000	0.0070	0	      6620000	1
18	13	14	0.89	  5000	0.0070	0	      6620000	1
19	14	15	0.89	  10000	0.0070	0	      6620000	1
20	15	16	0.89	  25000	0.0070	0	      6620000	1
21	11	17	0.3955	10500	0.0082	0	      6620000	1
23	18	19	0.3155	98000	0.0086	0	      6620000	1
24	19	20	0.3155	6000	0.0086	0	      6620000	1
101	81	9	  0.89	  5000	0.0070  0	      6620000	1
111	81	9	  0.3955	5000	0.0082	0	      6620000	1
221	171	18	0.3155	26000	0.0086	0	      6620000	1
];

%% compressor data
% id	fr_junction	to_junction	c_ratio_min	c_ratio_max	power_max	flow_min	flow_max	inlet_p_min	inlet_p_max	outlet_p_min	outlet_p_max	status	operating_cost	directionality
mgc.compressor = [
10	    8	  81	1	2	1000000000	-5000	5000	0	6620000	0	6620000	1	10	0
11	    8	  81	1	2	1000000000	-5000	5000	0	6620000	0	6620000	1	10	0
22	    17	171	1	2	1000000000	-5000	5000	0	6620000	0	6620000	1	10	0
];

%% short_pipe data
%
mgc.short_pipe = [
];

%% resistor data
%
mgc.resistor = [
];

%% valve data
%
mgc.valve = [
];

%% receipt data
% id	junction_id	injection_min	injection_max	injection_nominal	is_dispatchable	status
mgc.receipt = [
1	    1	  126	126	  126	0	1
2	    2	  97	97	  97	0	1
5	    5	  33	33	  33	0	1
8	    8	  255	255	  255	0	1
13	  13	14	14	  14	0	1
14	  14	11	11	  11	0	1
10001	1	  0	  1157  0	  1	1
10002	2	  0	  1157  0	  1	1
10005	5	  0	  1157  0	  1	1
10008	8	  0	  1157  0	  1	1
10013	13	0   1157  0	  1	1
10014	14	0	  1157  0	  1	1
];

%% delivery data
% id	junction_id	withdrawal_min	withdrawal_max	withdrawal_nominal	is_dispatchable	status
mgc.delivery = [
3	    3	  45	45	  45	0	1
4	    4	  0	  1157	0	  1	1
6	    6	  47	47	  47	0	1
7	    7	  61	61	  61	0	1
10	  10	74	74	  74	0	1
12	  12	25	25	  25	0	1
15	  15	80	80	  80	0	1
16	  16	181	181	  181	0	1
19	  19	3	  3	    3	  0	1
20	  20	22	22	  22	0	1
10012	12	0	  1157  0	  1	1
];

%% ne_pipe data
% id	fr_junction	to_junction	diameter	length	friction_factor	p_min	p_max	status	construction_cost
mgc.ne_pipe = [
28	1	  2	  0.89	  4000	0.0070	0	      7700000	1	 14324097
29	1	  2	  0.89	  4000	0.0070	0	      7700000	1	 14324097
30	2	  3	  0.89	  6000	0.0070	0	      8000000	1	 21486146
31	2	  3	  0.89	  6000	0.0070	0	      8000000	1	 21486146
32	3	  4	  0.89	  26000	0.0070	3000000	8000000	1	 93106633
33	5	  6	  0.5901	43000	0.0076	0	      8000000	1	 86083962
34	6	  7	  0.5901	29000	0.0076	3000000	8000000	1	 58056625
35	7	  4	  0.5901	19000	0.0076	3000000	8000000	1	 38037099
36	4	  14	0.89	  55000	0.0070	0	      8000000	1	 196956340
37	81	9	  0.89	  5000	0.0070	0	      6620000	1	 17905121
38	81	9	  0.3955	5000	0.0082	0	      6620000	1	 7226588
39	9	  10	0.89	  20000	0.0070	0	      6620000	1	 71620487
40	9	  10	0.3955	20000	0.0082	0	      6620000	1	 28906353
41	10	11	0.89	  25000	0.0070	0	      6620000	1	 89525609
42	10	11	0.3955	25000	0.0082	0	      6620000	1	 36132942
43	11	12	0.89	  42000	0.0070	0	      6620000	1	 1504030233
44	12	13	0.89	  40000	0.0070	0	      6620000	1	 1432409745
45	13	14	0.89	  5000	0.0070	0	      6620000	1	 179051218
46	14	15	0.89	  10000	0.0070	0	      6620000	1	 358102436
47	15	16	0.89	  25000	0.0070	0	      6620000	1	 895256091
48	11	17	0.3955	10500	0.0082	0	      6620000	1	 151758357
49	171	18	0.3155	26000	0.0086	0	      6620000	1	 339448273
50	18	19	0.3155	98000	0.0086	0	      6620000	1	 1279458876
51	19	20	0.3155	6000	0.0086	0	      6620000	1	 7833421
];

%% ne_compressor data
%
mgc.ne_compressor = [
];



end
