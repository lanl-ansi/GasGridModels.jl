function mpc = case5_NE
mpc.version = '1';
mpc.baseMVA = 100.0;
mpc.gas_ne_weight = 1.0;
mpc.power_ne_weight = 1.0;
mpc.ne_normalization = 1.0e-8;

%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
    1     2     0.0      0.0       0.0    0.0    1    1.00000     2.80377    230.0    1    1.10000    0.90000;
    2     1     300.0    98.61     0.0    0.0    1    1.08407    -0.73465    230.0    1    1.10000    0.90000;
    3     2     300.0    98.61     0.0    0.0    1    1.00000    -0.55972    230.0    1    1.10000    0.90000;
    4     3     400.0    131.47    0.0    0.0    1    1.00000     0.00000    230.0    1    1.10000    0.90000;
    10    2     0.0      0.0       0.0    0.0    1    1.00000     3.59033    230.0    1    1.10000    0.90000;
];

%% generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin
mpc.gen = [
    1     40.0        30.0       30.0     -30.0     1.07762    100.0    1    40.0     0.0;
    1     170.0       127.5      127.5    -127.5    1.07762    100.0    1    170.0    0.0;
    3     324.498     390.0      390.0    -390.0    1.1        100.0    1    520.0    0.0;
    4     0.0        -10.802     150.0    -150.0    1.06414    100.0    1    200.0    0.0;
    10    470.694    -165.039    450.0    -450.0    1.06907    100.0    1    600.0    0.0;
];

%% generator cost data
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
    2    0.0    0.0    3    1.000000    14.000000    1.000000    2.000000;
    2    0.0    0.0    3    0.000000    15.000000    1.000000    2.000000;
    2    0.0    0.0    3    0.000000    0.0000000    1.000000    2.000000;
    2    0.0    0.0    3    0.000000    0.0000000    0.000000    0.000000;
    2    0.0    0.0    3    0.000000    15.000000    5.000000    2.000000;
];

%% branch data
%    fbus    tbus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
    1     2     0.00281     0.0281     0.00712     400.0     400.0     400.0     0.0      0.0     1     -30.0     30.0;
    1     4     0.00304     0.0304     0.00658     426     426     426     0.0      0.0     1     -30.0     30.0;
    1     10     0.00064     0.0064     0.03126     426     426     426     0.0      0.0     1     -30.0     30.0;
    2     3     0.00108     0.0108     0.01852     426     426     426     0.0      0.0     1     -30.0     30.0;
    4     3     0.00297     0.0297     0.00674     426     426     426     1.05     -1.0     1     -30.0     30.0;
    4     10     0.00297     0.0297     0.00674     240.0     240.0     240.0     0.0      0.0     1     -30.0     30.0;
];

%column_names%    f_bus    t_bus    br_r    br_x    br_b    rate_a    rate_b    rate_c    tap    shift    br_status    angmin    angmax    construction_cost
mpc.ne_branch = [
    3     4     0.00297     0.0297     0.00674     426     426     426     1.05      1.0     1     -30.0     30.0 1.0e6;
]

%% gas network linking data
%column_names%  delivery  heat_rate_quad_coeff   heat_rate_linear_coeff   heat_rate_constant_coeff
mpc.gen_gas = [
    -1    0.0    0           0.0;
    -1    0.0    0           0.0;
     1    3600.0    360000000.0    0.0;
    -1    0.0    0           0.0;
     3    0.0    360000000.0    0.0;
];
