%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	50881.65	-1871.47	0.0	0.0	1	1	1.05	500	1	1.05	0.95	
	5028	2	706.34	-1023.08	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	70002	2	1336.3	-982.47	0.22	80.97	1	1	1.01	345	1	1.05	0.95	
	71786	2	7573.59	-1413.69	0.0	0.0	1	1	1.04	345	1	1.05	0.95	
	71797	2	6389.86	-113.84	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	72926	2	1935.86	-348.18	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	73106	2	1512.04	-244.86	0.0	0.0	1	1	1.02	345	1	1.05	0.95	
	73110	2	2215.29	-351.46	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	73171	2	2212.84	-412.45	0.0	0.0	1	1	1.03	115	1	1.05	0.95	
	73663	2	670.91	-145.2	0.0	0.0	1	1	1.02	345	1	1.05	0.95	
	74316	2	3322.66	-248.92	0.0	0.0	1	1	1.01	345	1	1.05	0.95	
	74327	2	11497.69	-943.68	0.0	0.0	1	1	1.02	345	1	1.05	0.95	
	74341	2	463.14	148.48	0.0	0.0	1	1	1.01	345	1	1.05	0.95	
	74344	2	1217.29	-239.87	0.0	0.0	1	1	1.0	345	1	1.05	0.95	
	74347	2	1996.07	-669.1	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	75050	2	4855.08	-155.4	0.0	0.0	1	1	1.01	138	1	1.05	0.95	
	75403	2	121.66	-181.52	0.0	0.0	1	1	1.04	345	1	1.05	0.95	
	75405	2	1097.65	-155.87	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	76663	2	3737.64	278.44	0.0	0.0	1	1	0.98	230	1	1.05	0.95	
	77400	2	636.02	-177.65	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	77406	2	1410.38	-1098.46	0.0	0.0	1	1	1.04	345	1	1.05	0.95	
	77950	2	-295.41	642.52	0.0	0.0	1	1	1.0	25	1	1.05	0.95	
	78701	2	73.1	-46.08	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	78702	2	1613.99	-257.16	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	79578	2	888.16	-345.85	0.0	0.0	1	1	1.02	765	1	1.05	0.95	
	79581	2	-2.05	-15.7	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	79583	2	408.57	-328.0	0.0	0.0	1	1	1.02	345	1	1.05	0.95	
	79584	2	3317.51	-617.71	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	79800	2	1616.97	-30.17	0.0	0.0	1	1	1.03	345	1	1.05	0.95	
	80001	2	789.69	194.55	0.0	0.0	1	1	1.09	500	1	1.1	0.95	
	80031	2	2680.09	-681.22	0.0	0.0	1	1	1.08	500	1	1.1	0.95	
	80101	2	10660.21	406.77	0.0	0.0	1	1	1.04	500	1	1.1	0.95	
	80121	2	1942.11	-440.63	0.0	0.0	1	1	1.08	500	1	1.1	0.95	
	81615	2	5085.55	-2767.19	0.0	0.0	1	1	1.1	220	1	1.1	0.95	
	84819	2	0.0	0.0	0.0	0.0	1	1	1.01	765	1	1.05	0.95	
	87004	2	3546.17	-404.25	-0.07	71.11	1	1	1.02	345	1	1.05	0.95	
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	71797	0.0	0.0	158.88	-881.54	0	100	1	1226.04	0.0	0	0	0	0	0	0	0	0	0	0	0
	75050	0.0	0.0	189.51	-1089.57	0	100	1	1591.84	0.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	477.36	-16943.29	0	100	1	17861.9	0.0	0	0	0	0	0	0	0	0	0	0	0
	74327	0.0	0.0	400.47	-5221.02	0	100	1	3213.61	0.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	1053.6	-37374.9	0	100	1	39401.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	74347	0.0	0.0	6748.58	-11659.88	0	100	1	16562.25	0.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	337.15	-11959.97	0	100	1	12608.57	0.0	0	0	0	0	0	0	0	0	0	0	0
	73110	0.0	0.0	165.62	-374.45	0	100	1	765.75	0.0	0	0	0	0	0	0	0	0	0	0	0
	73110	0.0	0.0	496.88	-1123.35	0	100	1	2297.25	0.0	0	0	0	0	0	0	0	0	0	0	0
	73106	0.0	0.0	120.99	-515.61	0	100	1	789.91	0.0	0	0	0	0	0	0	0	0	0	0	0
	73110	0.0	0.0	99.38	-224.67	0	100	1	459.45	0.0	0	0	0	0	0	0	0	0	0	0	0
	73110	0.0	0.0	496.88	-1123.35	0	100	1	2297.25	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	101.8	-452.64	0	100	1	633.74	0.0	0	0	0	0	0	0	0	0	0	0	0
	5028	0.0	0.0	85.0	-439.96	0	100	1	619.92	0.0	0	0	0	0	0	0	0	0	0	0	0
	87004	0.0	0.0	112.47	-408.2	0	100	1	720.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	1053.6	-37374.9	0	100	1	39401.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	2351.58	-10455.98	0	100	1	14639.39	0.0	0	0	0	0	0	0	0	0	0	0	0
	80031	0.0	0.0	3.51	-887.64	0	100	1	871.23	0.0	0	0	0	0	0	0	0	0	0	0	0
	75403	0.0	0.0	13.1	-2.1	0	100	1	25.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	356.3	-1584.24	0	100	1	2218.09	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	203.6	-905.28	0	100	1	1267.48	0.0	0	0	0	0	0	0	0	0	0	0	0
	77950	0.0	0.0	360.0	50.0	0	100	1	1212.0	700.0	0	0	0	0	0	0	0	0	0	0	0
	78702	0.0	0.0	87.1	-212.08	0	100	1	355.82	0.0	0	0	0	0	0	0	0	0	0	0	0
	73171	0.0	0.0	630.01	-3367.07	0	100	1	4745.47	0.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	70.24	-2491.66	0	100	1	2626.78	0.0	0	0	0	0	0	0	0	0	0	0	0
	71797	0.0	0.0	2621.52	-14545.41	0	100	1	20229.66	0.0	0	0	0	0	0	0	0	0	0	0	0
	80101	0.0	0.0	579.0	-3000.0	0	100	1	3335.16	0.0	0	0	0	0	0	0	0	0	0	0	0
	75405	0.0	0.0	-8.05	-2612.5	0	100	1	2807.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	74341	0.0	0.0	20.7	-41.3	0	100	1	55.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	80121	0.0	0.0	-35.0	-968.9	0	100	1	1380.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	75403	0.0	0.0	272.0	-345.2	0	100	1	0.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	80001	0.0	0.0	1475.5	-2097.7	0	100	1	3460.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	77406	0.0	0.0	1041.5	-9692.0	0	100	1	11767.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	87004	0.0	0.0	262.43	-952.46	0	100	1	1680.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	76663	0.0	0.0	921.17	-9362.35	0	100	1	12688.66	0.0	0	0	0	0	0	0	0	0	0	0	0
	79583	0.0	0.0	2.5	-10.8	0	100	1	34.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	78702	0.0	0.0	653.25	-1590.56	0	100	1	2668.69	0.0	0	0	0	0	0	0	0	0	0	0	0
	74344	0.0	0.0	975.5	-1937.5	0	100	1	4945.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	70002	0.0	0.0	-199.8	-8844.5	0	100	1	10125.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	74347	0.0	0.0	158.79	-274.35	0	100	1	389.7	0.0	0	0	0	0	0	0	0	0	0	0	0
	84819	0.0	0.0	200.0	-400.0	0	100	1	1500.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	72926	0.0	0.0	21.52	-230.7	0	100	1	460.78	0.0	0	0	0	0	0	0	0	0	0	0	0
	71797	0.0	0.0	1350.48	-7493.09	0	100	1	10421.34	0.0	0	0	0	0	0	0	0	0	0	0	0
	77406	0.0	0.0	104.15	-969.2	0	100	1	1176.7	0.0	0	0	0	0	0	0	0	0	0	0	0
	80101	0.0	0.0	1351.0	-7000.0	0	100	1	7782.04	0.0	0	0	0	0	0	0	0	0	0	0	0
	74327	0.0	0.0	7985.34	-104107.79	0	100	1	64079.86	0.0	0	0	0	0	0	0	0	0	0	0	0
	79583	0.0	0.0	75.0	-324.0	0	100	1	1020.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	70002	0.0	0.0	-199.8	-8844.5	0	100	1	10125.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	78701	0.0	0.0	810.25	-1672.0	0	100	1	2700.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	79583	0.0	0.0	2.5	-10.8	0	100	1	34.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	75405	0.0	0.0	-8.05	-261.25	0	100	1	280.7	0.0	0	0	0	0	0	0	0	0	0	0	0
	79584	0.0	0.0	290.6	-4476.0	0	100	1	6063.6	0.0	0	0	0	0	0	0	0	0	0	0	0
	5028	0.0	0.0	25.73	-129.4	0	100	1	182.33	0.0	0	0	0	0	0	0	0	0	0	0	0
	73171	0.0	0.0	210.0	-1122.66	0	100	1	1581.82	0.0	0	0	0	0	0	0	0	0	0	0	0
	79800	0.0	0.0	191.52	-375.62	0	100	1	631.4	0.0	0	0	0	0	0	0	0	0	0	0	0
	5028	0.0	0.0	-255.0	-255.0	0	100	1	-600.0	-600.0	0	0	0	0	0	0	0	0	0	0	0
	79578	0.0	0.0	275.76	-817.04	0	100	1	1141.92	0.0	0	0	0	0	0	0	0	0	0	0	0
	73171	0.0	0.0	167.5	-895.44	0	100	1	1261.67	0.0	0	0	0	0	0	0	0	0	0	0	0
	79578	0.0	0.0	689.4	-2042.6	0	100	1	2854.8	0.0	0	0	0	0	0	0	0	0	0	0	0
	74327	0.0	0.0	-270.0	-270.0	0	100	1	600.0	600.0	0	0	0	0	0	0	0	0	0	0	0
	1	0.0	0.0	323.1	-11461.64	0	100	1	12083.21	0.0	0	0	0	0	0	0	0	0	0	0	0
	78701	0.0	0.0	2430.75	-5016.0	0	100	1	8100.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	5028	0.0	0.0	169.82	-854.04	0	100	1	1203.38	0.0	0	0	0	0	0	0	0	0	0	0	0
	76663	0.0	0.0	183.68	-1866.86	0	100	1	2530.13	0.0	0	0	0	0	0	0	0	0	0	0	0
	80031	0.0	0.0	8.19	-2071.16	0	100	1	2032.87	0.0	0	0	0	0	0	0	0	0	0	0	0
	84819	0.0	0.0	70.0	-140.0	0	100	1	525.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	74347	0.0	0.0	6748.58	-11659.88	0	100	1	16562.25	0.0	0	0	0	0	0	0	0	0	0	0	0
	5028	0.0	0.0	25.73	-129.4	0	100	1	182.33	0.0	0	0	0	0	0	0	0	0	0	0	0
	77400	0.0	0.0	-5.9	-3734.0	0	100	1	4131.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	79583	0.0	0.0	200.0	-200.0	0	100	1	0.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	79800	0.0	0.0	82.08	-160.98	0	100	1	270.6	0.0	0	0	0	0	0	0	0	0	0	0	0
	73663	0.0	0.0	14.32	-270.13	0	100	1	588.74	0.0	0	0	0	0	0	0	0	0	0	0	0
	87004	0.0	0.0	112.47	-408.2	0	100	1	720.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	78702	0.0	0.0	1959.75	-4771.69	0	100	1	8006.06	0.0	0	0	0	0	0	0	0	0	0	0	0
	75050	0.0	0.0	3778.88	-21726.25	0	100	1	31741.56	0.0	0	0	0	0	0	0	0	0	0	0	0
	87004	0.0	0.0	262.43	-952.46	0	100	1	1680.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	72926	0.0	0.0	64.58	-692.1	0	100	1	1382.32	0.0	0	0	0	0	0	0	0	0	0	0	0
	73106	0.0	0.0	96.5	-411.26	0	100	1	630.04	0.0	0	0	0	0	0	0	0	0	0	0	0
	74316	0.0	0.0	304.6	-3694.4	0	100	1	2130.7	0.0	0	0	0	0	0	0	0	0	0	0	0
	74344	0.0	0.0	975.5	-1937.5	0	100	1	4945.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	78701	0.0	0.0	270.0	-300.0	0	100	1	0.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	73663	0.0	0.0	17.95	-338.68	0	100	1	738.14	0.0	0	0	0	0	0	0	0	0	0	0	0
	73106	0.0	0.0	362.97	-1546.84	0	100	1	2369.73	0.0	0	0	0	0	0	0	0	0	0	0	0
	70002	0.0	0.0	450.0	-150.0	0	100	1	0.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	73663	0.0	0.0	53.86	-1016.03	0	100	1	2214.42	0.0	0	0	0	0	0	0	0	0	0	0	0
	79581	0.0	0.0	119.5	-114.3	0	100	1	500.0	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	1425.2	-5386.42	0	100	1	7541.51	0.0	0	0	0	0	0	0	0	0	0	0	0
	74347	0.0	0.0	79.4	-137.18	0	100	1	194.85	0.0	0	0	0	0	0	0	0	0	0	0	0
	71786	0.0	0.0	-755.64	-755.64	0	100	1	1500.0	1500.0	0	0	0	0	0	0	0	0	0	0	0
	71797	0.0	0.0	238.32	-1322.31	0	100	1	1839.06	0.0	0	0	0	0	0	0	0	0	0	0	0
	81615	0.0	0.0	-374.4	-2477.5	0	100	1	3515.0	0.0	0	0	0	0	0	0	0	0	0	0	0
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	76663	1	0.03	0.29827	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	71797	70002	0.07217	1.37799	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79800	77400	0.00193	0.02011	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	77400	0.17926	0.83495	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	77400	0.09552	0.54674	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	77400	0.00127	0.01341	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77406	77400	0.00082	0.01062	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	77406	0.0012	0.0301	0.61305	1434.0	1434.0	1434.0	1	0.0	1	-27.64	27.64
	77950	77406	0.0003	0.01232	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79800	77406	0.06654	0.46038	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	77406	0.39062	1.75589	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	77950	0.00536	0.06137	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	71797	71786	0.00133	0.0172	0.3175	1434.0	1434.0	1434.0	1	0.0	1	-27.64	27.64
	79583	78701	0.00399	0.19258	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	78701	0.00127	0.0131	0.213	1331.0	1331.0	1331.0	1	0.0	1	-27.64	27.64
	79581	78701	0.00116	0.01845	0.31498	1428.0	1428.0	1428.0	1	0.0	1	-27.64	27.64
	79581	78701	0.36673	2.03778	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	78701	0.00127	0.01332	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	78702	0.10404	0.94043	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79581	78702	0.0014	0.01717	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	78702	0.15285	1.01697	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	78702	0.00123	0.01908	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	79578	0.00058	0.01512	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	71797	71786	0.00126	0.01682	0.31325	1313.0	1313.0	1313.0	1	0.0	1	-27.64	27.64
	79800	79584	0.00362	0.03758	0.564	1301.0	1301.0	1301.0	1	0.0	1	-27.64	27.64
	79800	79584	0.00594	0.04362	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	71786	-0.00325	0.49565	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	71786	0.04522	0.42055	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73110	71786	0.02941	0.40675	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	71786	0.08306	0.98516	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	72926	71786	0.00342	0.04598	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	71797	71786	0.00206	0.04736	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73663	71797	0.02227	0.29239	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75405	1	0.063	0.63331	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	71797	0.08853	0.55031	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73110	71797	0.00326	0.03859	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	71797	0.243	1.75975	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73106	71797	0.01586	0.17687	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	72926	71797	0.00361	0.04038	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	72926	-0.00736	0.57811	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73663	72926	0.02638	0.38413	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	72926	0.00314	0.04087	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73110	72926	0.00571	0.09372	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	72926	0.05932	0.62456	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	5028	1	0.0055	0.05877	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	72926	0.18515	1.671	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73106	72926	0.01854	0.21439	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73110	73106	0.00227	0.02662	0.46111	1255.0	1255.0	1255.0	1	0.0	1	-27.64	27.64
	73663	73106	0.00289	0.03274	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73110	73106	0.00242	0.02913	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	73106	0.00232	0.03638	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73171	73106	0.01429	0.08921	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73663	73110	0.00363	0.04974	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	73663	73171	0.00688	0.11003	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	73171	0.02503	0.24228	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74347	1	0.0051	0.05904	0	1000.0	1000.0	1000.0	1	2.0	1	-27.64	27.64
	75050	73171	0.00797	0.04466	0	301.0	301.0	301.0	1	-1.1	1	-27.64	27.64
	74344	73663	0.04034	0.7208	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80031	80001	0.0161	0.23252	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80101	80001	0.00093	0.01236	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80121	80001	0.00099	0.01156	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	81615	80001	0.00545	0.069	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80121	80031	0.08552	0.8644	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	81615	80031	0.01069	0.11458	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80101	80031	0.00134	0.01925	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	80031	79578	0.00358	0.09628	0	600.0	600.0	600.0	1	-8.5	1	-27.64	27.64
	74347	5028	0.00019	0.00196	0	1261.0	1261.0	1261.0	1	0.0	1	-27.64	27.64
	80121	80101	0.00518	0.04811	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79584	80101	0.00569	0.14534	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	81615	80101	0.00045	0.00787	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	81615	80121	0.00108	0.01932	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79584	81615	0.00215	0.02304	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	76663	81615	0.05653	0.32936	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79578	84819	0.00018	0.00515	2.53	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75050	74316	0.00173	0.01817	0	690.0	690.0	690.0	1	0.0	1	-27.64	27.64
	74341	74316	0.00016	0.00321	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74327	74316	0.00024	0.00631	0	2800.0	2800.0	2800.0	1	0.0	1	-27.64	27.64
	74327	5028	0.0025	0.04009	0	1000.0	1000.0	1000.0	1	-10.1	1	-27.64	27.64
	79583	74316	0.08749	1.48406	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	74316	0.01804	0.23641	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75403	74316	0.04014	0.66967	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74347	74316	0.00119	0.02146	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	74316	0.00053	0.01643	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75050	74327	0.0101	0.10336	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74341	74327	-0.0003	0.12013	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74347	74327	-0.00426	0.29938	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	74341	0.00069	0.01874	0.375	1720.0	1720.0	1720.0	1	0.0	1	-27.64	27.64
	75050	74341	0.01821	0.32529	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	87004	70002	0.00728	0.07613	0	730.0	730.0	730.0	1	0.0	1	-27.64	27.64
	74347	74341	0.0004	0.00824	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74344	74341	0.00066	0.01828	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	74344	0.00194	0.02007	0.32563	1331.0	1331.0	1331.0	1	0.0	1	-27.64	27.64
	78702	74344	0.02147	0.26677	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	74344	0.02053	0.2883	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	74344	0.00428	0.05254	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75403	74344	0.00877	0.15125	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	74347	74344	0.00239	0.04133	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	74344	0.00204	0.02109	0	1331.0	1331.0	1331.0	1	0.0	1	-27.64	27.64
	79583	74347	0.01211	0.21188	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	71786	70002	0.0053	0.07452	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	74347	0.01513	0.17138	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75403	74347	0.00571	0.09389	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	75405	75403	0.0022	0.0284	0.4776	1255.0	1255.0	1255.0	1	0.0	1	-27.64	27.64
	79581	75403	0.0014	0.0183	0.2831	1494.0	1494.0	1494.0	1	0.0	1	-27.64	27.64
	75405	75403	0.03139	0.30932	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78702	75403	0.12686	1.0465	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	75403	0.0018	0.03297	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	78701	75403	0.05589	0.6077	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77400	75403	0.07592	0.60736	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79800	75405	0.0559	0.33777	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	72926	70002	0.02434	0.33083	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79584	75405	0.08074	1.20196	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	76663	75405	0.00683	0.17396	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79583	75405	0.19664	1.14823	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77406	75405	0.00753	0.12351	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77400	75405	0.00371	0.05608	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79800	76663	0.04335	0.21239	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	79584	76663	0.00159	0.02078	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77400	76663	0.26745	1.13514	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
	77406	77400	0.00074	0.0121	0.11888	1032.0	1032.0	1032.0	1	0.0	1	-27.64	27.64
	77950	77400	0.00122	0.04098	0	9.99999999e8	9.99999999e8	9.99999999e8	1	0.0	1	-27.64	27.64
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	520.08	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	1200.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	1200.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	520.08	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	799.2	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	2798.4	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	240.0	0.0
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.0	360.0	0.0
	2	0	0	3	0.0	799.2	0.0
];

%column_names%	f_bus	t_bus	br_r	br_x	br_b	rate_a	rate_b	rate_c	tap	shift	br_status	angmin	angmax	construction_cost
mpc.ne_branch = [
];

%column_names%  consumer  heat_rate_quad_coeff   heat_rate_linear_coeff   heat_rate_constant_coeff
mpc.gen_gas = [
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	29	0	140674.114	0
	31	0	140674.114	0
	-1	0	0	0
	64	0	56269.6455	0
	-1	0	0	0
	66	0	56269.6455	0
	-1	0	0	0
	64	0	140674.114	0
	-1	0	0	0
	14	0	140674.114	0
	-1	0	0	0
	29	0	56269.6455	0
	66	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	93	0	140674.114	0
	-1	0	0	0
	62	0	140674.114	0
	-1	0	0	0
	44	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	82	0	140674.114	0
	-1	0	0	0
	76	0	140674.114	0
	-1	0	0	0
	86	0	140674.114	0
	91	0	140674.114	0
	71	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	62	0	56269.6455	0
	-1	0	0	0
	-1	0	0	0
	19	0	140674.114	0
	48	0	140674.114	0
	71	0	56269.6455	0
	87	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	93	0	56269.6455	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	100	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	87	0	56269.6455	0
	14	0	56269.6455	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	31	0	56269.6455	0
	-1	0	0	0
	82	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	86	0	56269.6455	0
	21	0	140674.114	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	91	0	56269.6455	0
	-1	0	0	0
	34	0	56269.6455	0
	66	0	140674.114	0
	-1	0	0	0
	34	0	140674.114	0
	-1	0	0	0
	66	0	56269.6455	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
	-1	0	0	0
];

%column_names%  name
mpc.bus_name = [
	'Alburtis';
	'Waldick';
	'Orrington';
	'Sandy Pond';
	'Millbury';
	'Northfield';
	'Southington';
	'Millstone';
	'Norwalk Harbor';
	'East Shore';
	'Dunwoodie';
	'Farragut';
	'Millwood';
	'Pleasant Valley';
	'Ramapo';
	'Newbridge';
	'Fraser';
	'Oakdale';
	'Gardenville';
	'Clay';
	'Volney';
	'9 Mile Point';
	'Leeds';
	'New Scotland';
	'Massena';
	'Gilboa';
	'Marcy';
	'Niagara';
	'Rochester';
	'Bruce B';
	'Hawthorne';
	'Milton';
	'Longwood';
	'Middle DK 1';
	'Chateaguay';
	'Keswick';
];

%column_names%  name fuel_type comment
mpc.gen_name = [
	'32'	'Oil'	'none';
	'109'	'Oil'	'none';
	'1'	'Coal'	'none';
	'81'	'Oil'	'none';
	'3'	'Gas'	'single_cycle';
	'101'	'Gas'	'single cycle';
	'2'	'Nuclear'	'none';
	'2052'	'Gas'	'combined cycle';
	'51'	'Nuclear'	'none';
	'2045'	'Gas'	'combined cycle';
	'53'	'Oil'	'none';
	'52'	'Gas'	'single cycle';
	'26'	'Hydro'	'none';
	'10'	'Gas'	'single_cycle';
	'250'	'Hydro'	'none';
	'2003'	'Gas'	'combined_cycle';
	'24'	'Gas'	'single_cycle';
	'215'	'Hydro'	'none';
	'117'	'Hydro'	'none';
	'25'	'Oil'	'none';
	'23'	'Nuclear'	'none';
	'149'	'Nuclear'	'none';
	'166'	'Hydro'	'none';
	'59'	'Gas'	'single cycle';
	'5'	'Hydro'	'none';
	'31'	'Gas'	'single cycle';
	'218'	'Coal'	'none';
	'122'	'Gas'	'single cycle';
	'90'	'Refuse'	'none';
	'225'	'Coal'	'none';
	'1004'	'None'	'SVC';
	'205'	'Nuclear'	'none';
	'143'	'Gas'	'single cycle';
	'249'	'Oil'	'none';
	'129'	'Gas'	'single cycle';
	'189'	'Refuse'	'none';
	'164'	'Gas'	'single cycle';
	'94'	'Gas'	'single cycle';
	'17'	'Gas'	'single cycle';
	'99'	'Coal'	'none';
	'243'	'Hydro'	'none';
	'37'	'Nuclear'	'none';
	'2031'	'Gas'	'combined cycle';
	'142'	'Nuclear'	'none';
	'219'	'Nuclear'	'none';
	'80'	'Gas'	'single cycle';
	'185'	'Gas'	'single cycle';
	'2017'	'Gas'	'combined cycle';
	'157'	'Gas'	'single cycle';
	'187'	'Hydro'	'none';
	'123'	'Oil'	'none';
	'194'	'Hydro'	'none';
	'8'	'Coal'	'none';
	'2059'	'Gas'	'combined cycle';
	'198'	'Nuclear'	'none';
	'1000'	'None'	'DC Line Terminal';
	'173'	'Hydro'	'none';
	'60'	'Oil'	'none';
	'171'	'Gas'	'single cycle';
	'1006'	'None'	'DC Line Terminal';
	'4'	'Oil'	'none';
	'2157'	'Gas'	'combined cycle';
	'2010'	'Gas'	'combined_cycle';
	'130'	'Oil'	'none';
	'212'	'Nuclear'	'none';
	'239'	'Coal'	'none';
	'2101'	'Gas'	'combined cycle';
	'11'	'Oil'	'none';
	'136'	'Gas'	'single cycle';
	'1005'	'None'	'STATCON';
	'197'	'Coal'	'none';
	'67'	'Oil'	'none';
	'247'	'Nuclear'	'none';
	'2164'	'Gas'	'combined cycle';
	'108'	'Gas'	'single cycle';
	'246'	'Coal'	'none';
	'40'	'Hydro'	'none';
	'46'	'Oil'	'none';
	'72'	'Nuclear'	'none';
	'2094'	'Gas'	'combined cycle';
	'1001'	'None'	'SVC';
	'2066'	'Gas'	'combined cycle';
	'45'	'Gas'	'single cycle';
	'1003'	'None'	'SVC';
	'66'	'Gas'	'single cycle';
	'180'	'Hydro'	'none';
	'2024'	'Gas'	'combined_cycle';
	'103'	'Hydro'	'none';
	'1002'	'None'	'DC Line Terminal';
	'30'	'Nuclear'	'none';
	'232'	'Coal'	'none';
];

%column_names%  name
mpc.branch_name = [
	'1';
	'10';
	'100';
	'101';
	'102';
	'103';
	'104';
	'105';
	'106';
	'107';
	'108';
	'109';
	'11';
	'110';
	'111';
	'112';
	'113';
	'114';
	'115';
	'116';
	'117';
	'118';
	'119';
	'12';
	'120';
	'121';
	'13';
	'14';
	'15';
	'16';
	'17';
	'18';
	'19';
	'2';
	'20';
	'21';
	'22';
	'23';
	'24';
	'25';
	'26';
	'27';
	'28';
	'29';
	'3';
	'30';
	'31';
	'32';
	'33';
	'34';
	'35';
	'36';
	'37';
	'38';
	'39';
	'4';
	'40';
	'41';
	'42';
	'43';
	'44';
	'45';
	'46';
	'47';
	'48';
	'49';
	'5';
	'50';
	'51';
	'52';
	'53';
	'54';
	'55';
	'56';
	'57';
	'58';
	'59';
	'6';
	'60';
	'61';
	'62';
	'63';
	'64';
	'65';
	'66';
	'67';
	'68';
	'69';
	'7';
	'70';
	'71';
	'72';
	'73';
	'74';
	'75';
	'76';
	'77';
	'78';
	'79';
	'8';
	'80';
	'81';
	'82';
	'83';
	'84';
	'85';
	'86';
	'87';
	'88';
	'89';
	'9';
	'90';
	'91';
	'92';
	'93';
	'94';
	'95';
	'96';
	'97';
	'98';
	'99';
];

%column_names%  name
mpc.ne_branch_name = [
];

%column_names%  latitude longitude
mpc.bus_geo = [
	40.51096	-75.6012
	41.012131	-74.124353
	44.71331	-68.773837
	42.563014	-71.565571
	42.195575	-71.776468
	42.682743	-72.448623
	41.597925	-72.881032
	41.3111	-72.166724
	41.097019	-73.40998
	41.279775	-72.899887
	40.935782	-73.865865
	40.63848	-73.92653
	41.191325	-73.799727
	41.746989	-73.826634
	41.131742	-74.142467
	40.653613	-73.536373
	42.24544	-74.965122
	40.738084	-73.137793
	42.85852	-78.75637
	43.182418	-76.174107
	43.342948	-76.358173
	43.520158	-76.406747
	42.25244	-73.892826
	42.6071	-73.939901
	44.92777	-74.892207
	42.397121	-74.445895
	43.170711	-75.291814
	43.096196	-79.052168
	43.159655	-77.610324
	44.327512	-81.590156
	44.308936	-80.481141
	43.510101	-79.909482
	42.839955	-81.584225
	43.686629	-79.419143
	45.3577	-73.737705
	45.995151	-66.837436
];

%column_names%  length
mpc.branch_length = [
	370.01799330627
	370.44146057949
	116.80948644663
	219.43816758023
	193.34312200918
	71.74776380532
	23.268376056542
	88.676630249505
	20.077206209093
	103.70124487903
	211.57625677086
	98.38357958292
	44.357169529228
	153.42087543125
	39.586147368656
	48.338021003013
	48.338021003013
	39.586147368656
	126.94455467001
	47.684728787411
	268.97853689543
	126.94455467001
	197.83280925817
	44.357169529228
	117.53365493668
	117.53365493668
	375.15943236928
	194.95039194446
	147.7154129612
	311.83028961877
	73.653718543842
	44.357169529228
	138.1266928526
	209.93468319112
	183.8716324429
	103.458952307
	307.74338015745
	113.17111832371
	77.374850269425
	317.5567580515
	160.2516405914
	122.58294935309
	154.12872632941
	238.33092165262
	136.55224617686
	154.10456060913
	125.68516261139
	67.65229011702
	35.369577076778
	67.65229011702
	80.464978005231
	71.094375050193
	61.506590160419
	47.363272797447
	80.149946673078
	141.04953443823
	50.380168181435
	93.153001593495
	88.495761961093
	162.68472734405
	165.26976519196
	188.09294417399
	185.93739207001
	109.71079469395
	99.932339889336
	448.69765569541
	13.3703846453
	155.18734126609
	83.385529385397
	44.183983376317
	199.35420523584
	72.020593626297
	106.57676187953
	102.60367431525
	41.894263887629
	28.9186990972
	33.409998484528
	44.723965320742
	274.84647145925
	146.24922142652
	171.91726605143
	31.853142551352
	90.152128883596
	33.043601888631
	62.316815850901
	57.721503194866
	61.754379398459
	63.701171836582
	208.11107575626
	29.517193589246
	61.754379398459
	56.40912188178
	95.994607747038
	198.81956404548
	56.40912188178
	109.37459183628
	73.251188430826
	56.40912188178
	245.57573444658
	328.28884341354
	126.19367751349
	141.38569976376
	226.49741109726
	45.997916648732
	226.49741109726
	93.445634337903
	106.21162056521
	88.495558592164
	143.66847889695
	457.91061547273
	372.24227436103
	555.81270787602
	522.69860246395
	323.82155082117
	393.33394798585
	370.12824833111
	99.242298483607
	35.767971208644
	213.52464422715
	23.268376056542
	41.996374301254
];

%column_names%  length
mpc.ne_branch_length = [
];

