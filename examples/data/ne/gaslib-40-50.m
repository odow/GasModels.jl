function mgc = gaslib-40-50

mgc.sound_speed = 312.805;
mgc.temperature = 273.15;
mgc.R = 8.314;
mgc.compressibility_factor = 0.8;
mgc.gas_molar_mass = 0.0185674;
mgc.gas_specific_gravity = 0.6;
mgc.specific_heat_capacity_ratio = 1.4;
mgc.standard_density = 1;
mgc.baseP = 8101325;
mgc.baseF = 906.25;
mgc.per_unit= 1;

%% junction data
%  junction_i type pmin pmax status p
mgc.junction = [
32      0       0.012507213326215       0.87656340166578        1       0.012507213326215
29      0       0.012507213326215       1       1       0.012507213326215
1       0       0.38281700832888        1       1       0.38281700832888
2       0       0.38281700832888        1       1       0.38281700832888
600013  0       0.012507213326215       1       1       0.012507213326215
27      0       0.012507213326215       0.87656340166578        1       0.012507213326215
200002  0       0.012507213326215       1       1       0.012507213326215
33      0       0.012507213326215       0.87656340166578        1       0.012507213326215
28      0       0.012507213326215       1       1       0.012507213326215
26      0       0.012507213326215       1       1       0.012507213326215
10      0       0.012507213326215       1       1       0.012507213326215
24      0       0.012507213326215       1       1       0.012507213326215
25      0       0.012507213326215       1       1       0.012507213326215
23      0       0.012507213326215       1       1       0.012507213326215
5       0       0.38281700832888        1       1       0.38281700832888
31      0       0.012507213326215       1       1       0.012507213326215
39      0       0.012507213326215       0.87656340166578        1       0.012507213326215
34      0       0.012507213326215       1       1       0.012507213326215
17      0       0.012507213326215       1       1       0.012507213326215
37      0       0.38281700832888        1       1       0.38281700832888
9       0       0.012507213326215       1       1       0.012507213326215
12      0       0.012507213326215       1       1       0.012507213326215
20      0       0.012507213326215       1       1       0.012507213326215
6       0       0.012507213326215       1       1       0.012507213326215
400037  0       0.012507213326215       1       1       0.012507213326215
14      0       0.012507213326215       1       1       0.012507213326215
7       0       0.012507213326215       1       1       0.012507213326215
8       0       0.012507213326215       1       1       0.012507213326215
19      0       0.012507213326215       1       1       0.012507213326215
0       0       0.012507213326215       1       1       0.012507213326215
4       0       0.012507213326215       1       1       0.012507213326215
22      0       0.012507213326215       1       1       0.012507213326215
11      0       0.012507213326215       1       1       0.012507213326215
35      0       0.012507213326215       0.87656340166578        1       0.012507213326215
13      0       0.38281700832888        1       1       0.38281700832888
100021  0       0.012507213326215       1       1       0.012507213326215
15      0       0.012507213326215       1       1       0.012507213326215
16      0       0.012507213326215       1       1       0.012507213326215
21      0       0.38281700832888        1       1       0.38281700832888
38      0       0.012507213326215       0.87656340166578        1       0.012507213326215
300001  0       0.012507213326215       1       1       0.012507213326215
36      0       0.012507213326215       1       1       0.012507213326215
500005  0       0.012507213326215       1       1       0.012507213326215
18      0       0.012507213326215       1       1       0.012507213326215
30      0       0.012507213326215       1       1       0.012507213326215
3       0       0.012507213326215       1       1       0.012507213326215
];

%% pipeline data
% pipeline_i f_junction t_junction diameter length friction_factor status
mgc.pipe = [
32      21      34      0.8     3479.454666     0.0074213240041551      1
29      4       17      1       12766.70341     0.0071281482254495      1
1       32      18      0.8     76893.55076     0.0074213240041552      1
24      27      22      0.6     66036.59463     0.0078267644317864      1
12      8       9       0.6     3802.586677     0.0078267644317863      1
20      19      6       0.6     10586.12947     0.0078267644317864      1
4       16      12      0.8     58218.96955     0.0074213240041552      1
2       37      15      1       21557.56619     0.0071281482254495      1
25      27      17      1       18969.41271     0.0071281482254496      1
6       28      11      0.6     16579.326       0.0078267644317864      1
23      10      22      0.6     19303.19202     0.0078267644317863      1
22      5       25      0.8     12397.35216     0.007421324004155       1
11      27      39      0.8     47488.28385     0.0074213240041551      1
35      29      21      0.8     26427.48165     0.0074213240041551      1
13      8       24      0.8     39036.04181     0.0074213240041552      1
27      31      30      0.8     22224.15325     0.0074213240041551      1
5       27      28      0.8     86690.26557     0.0074213240041551      1
31      35      21      0.8     49866.14839     0.0074213240041552      1
15      24      3       0.6     18017.8496      0.0078267644317863      1
33      35      36      1       3418.008251     0.0071281482254495      1
28      31      4       0.8     31179.6191      0.0074213240041551      1
16      26      23      0.6     3067.54744      0.0078267644317866      1
14      9       26      0.4     38659.82436     0.0084570907765485      1
21      19      10      0.6     10452.03118     0.0078267644317864      1
38      12      34      0.8     65532.21271     0.0074213240041552      1
7       11      20      0.6     10022.78298     0.0078267644317864      1
34      29      36      1       32449.37205     0.0071281482254494      1
8       28      6       0.6     35218.83909     0.0078267644317867      1
36      12      13      1       18136.59729     0.0071281482254495      1
26      17      31      0.8     36061.00987     0.0074213240041551      1
17      23      14      0.4     12015.87483     0.0084570907765482      1
10      20      8       0.8     32868.20253     0.0074213240041551      1
19      7       19      0.6     20634.69827     0.0078267644317863      1
0       0       5       1       13071.08523     0.0071281482254495      1
37      12      33      0.8     65057.17427     0.0074213240041551      1
9       6       22      0.6     20322.20543     0.0078267644317865      1
18      9       7       0.4     14043.11354     0.0084570907765483      1
30      31      38      0.8     32921.25982     0.0074213240041551      1
3       15      16      1       6998.053779     0.0071281482254495      1
];

%% compressor data
% compressor_i f_junction t_junction cmin cmax power_max fmin fmax status
mgc.compressor = [
41      21      100021  1       5       1.0e9   1.0e9   1e9     1
100003  27      400037  1       5       1.0e9   1.0e9   1e9     1
100001  35      200002  1       5       1.0e9   1.0e9   1e9     1
100002  38      300001  1       5       1.0e9   1.0e9   1e9     1
100000  33      100021  1       5       1.0e9   1.0e9   1e9     1
42      2       200002  1       5       1.0e9   1.0e9   1e9     1
43      1       300001  1       5       1.0e9   1.0e9   1e9     1
100004  39      500005  1       5       1.0e9   1.0e9   1e9     1
39      37      400037  1       5       1.0e9   1.0e9   1e9     1
40      13      600013  1       5       1.0e9   1.0e9   1e9     1
44      5       500005  1       5       1.0e9   1.0e9   1e9     1
100005  32      600013  1       5       1.0e9   1.0e9   1e9     1
];

%% producer
% producer_i junction fgmin fgmax fg status dispatchable
mgc.producer = [
1       1       0.33333333333333        0.33333333333333        0.33333333333333        1       0
2       2       0.33333333333333        0.33333333333333        0.33333333333333        1       0
0       0       0.33333333333333        0.33333333333333        0.33333333333333        1       0
];

%% consumer
% consumer_i junction fd status dispatchable
mgc.consumer = [
24      24      0.03448275862069        1       0
4       4       0.03448275862069        1       0
29      29      0.03448275862069        1       0
12      12      0.03448275862069        1       0
20      20      0.03448275862069        1       0
6       6       0.03448275862069        1       0
25      25      0.03448275862069        1       0
23      23      0.03448275862069        1       0
22      22      0.03448275862069        1       0
11      11      0.03448275862069        1       0
13      13      0.03448275862069        1       0
5       5       0.03448275862069        1       0
15      15      0.03448275862069        1       0
27      27      0.03448275862069        1       0
31      31      0.03448275862069        1       0
28      28      0.03448275862069        1       0
16      16      0.03448275862069        1       0
14      14      0.03448275862069        1       0
21      21      0.03448275862069        1       0
7       7       0.03448275862069        1       0
8       8       0.03448275862069        1       0
26      26      0.03448275862069        1       0
17      17      0.03448275862069        1       0
10      10      0.03448275862069        1       0
19      19      0.03448275862069        1       0
9       9       0.03448275862069        1       0
18      18      0.03448275862069        1       0
30      30      0.03448275862069        1       0
3       3       0.03448275862069        1       0
];


%% expansion pipes
% pipeline_i f_junction t_junction diameter length friction_factor status      construction_cost
mgc.ne_pipe = [
82      12      13      1       18136.59729     0.0071281482254495      1       3.7501246241352e7
81      29      21      0.8     26427.48165     0.0074213240041551      1       4.0805944712072e7
54      28      6       0.6     35218.83909     0.0078267644317867      1       4.2314361962641e7
78      21      34      0.8     3479.454666     0.0074213240041551      1       5.3725298766391e6
79      35      36      1       3418.008251     0.0071281482254495      1       7.0674541109427e6
58      8       9       0.6     3802.586677     0.0078267644317863      1       4.5686920183175e6
74      31      4       0.8     31179.6191      0.0074213240041551      1       4.8143588934743e7
84      12      34      0.8     65532.21271     0.0074213240041552      1       1.0118648019964e8
65      7       19      0.6     20634.69827     0.0078267644317863      1       2.4791961181781e7
51      27      28      0.8     86690.26557     0.0074213240041551      1       1.3385604541416e8
49      15      16      1       6998.053779     0.0071281482254495      1       1.4469954522351e7
53      11      20      0.6     10022.78298     0.0078267644317864      1       1.2042068331808e7
80      29      36      1       32449.37205     0.0071281482254494      1       6.7095931621928e7
59      8       24      0.8     39036.04181     0.0074213240041552      1       6.0274474313257e7
61      24      3       0.6     18017.8496      0.0078267644317863      1       2.1647897246542e7
67      19      10      0.6     10452.03118     0.0078267644317864      1       1.2557796963867e7
75      4       17      1       12766.70341     0.0071281482254495      1       2.6397856257893e7
62      26      23      0.6     3067.54744      0.0078267644317866      1       3.6855647735018e6
70      27      22      0.6     66036.59463     0.0078267644317864      1       7.9340956151715e7
50      16      12      0.8     58218.96955     0.0074213240041552      1       8.989430336625e7
52      28      11      0.6     16579.326       0.0078267644317864      1       1.9919554976468e7
46      0       5       1       13071.08523     0.0071281482254495      1       2.7027229971203e7
63      23      14      0.4     12015.87483     0.0084570907765482      1       1.0203262230002e7
72      17      31      0.8     36061.00987     0.0074213240041551      1       5.5680809639942e7
83      12      33      0.8     65057.17427     0.0074213240041551      1       1.0045298646098e8
57      27      39      0.8     47488.28385     0.0074213240041551      1       7.332534786773e7
56      20      8       0.8     32868.20253     0.0074213240041551      1       5.0750883984603e7
68      5       25      0.8     12397.35216     0.007421324004155       1       1.9142409160165e7
55      6       22      0.6     20322.20543     0.0078267644317865      1       2.441651055694e7
64      9       7       0.4     14043.11354     0.0084570907765483      1       1.1924688963684e7
66      19      6       0.6     10586.12947     0.0078267644317864      1       1.2718911973e7
76      31      38      0.8     32921.25982     0.0074213240041551      1       5.0832808281098e7
71      27      17      1       18969.41271     0.0071281482254496      1       3.9223268053913e7
47      32      18      0.8     76893.55076     0.0074213240041552      1       1.1872920857851e8
48      37      15      1       21557.56619     0.0071281482254495      1       4.4574822119537e7
69      10      22      0.6     19303.19202     0.0078267644317863      1       2.3192196996651e7
73      31      30      0.8     22224.15325     0.0074213240041551      1       3.4315701390038e7
60      9       26      0.4     38659.82436     0.0084570907765485      1       3.282793232217e7
77      35      21      0.8     49866.14839     0.0074213240041552      1       7.6996942847421e7
];

%% junction data
%column_names% latitude longitude
mgc.junction_data = {
48.68116719     8.462165532
49.59906651     8.522974689
48.81954737     6.037965632
49.76190172     8.972793056
0       0
48.43944074     7.125950441
0       0
49.33348585     8.583339554
47.71858108     6.682728687
47.06334966     7.375377697
47.68491579     7.334321825
47.04609847     6.704129879
48.99650392     6.985401049
47.03802643     7.391411724
48.88544272     6.970774678
48.68585213     6.482711455
48.85701639     6.991006806
49.35375393     8.5225982
48.50659413     6.890115373
48.44886966     7.175358607
47.33697273     7.060507549
48.79746338     8.226777359
47.48827194     6.646695907
47.70262448     7.151456801
0       0
46.93619913     7.444375531
47.44368652     7.160019633
47.32750791     7.012162287
47.62325261     7.229303087
48.9636071      6.837566076
48.45970144     6.732481162
47.85672269     7.297282518
47.57618394     6.617232238
49.7403095      8.941170283
48.69715728     8.421237101
0       0
48.52155545     7.445707841
48.54893883     7.531026915
49.36328555     8.568217723
48.81046104     6.076634313
0       0
49.75682733     8.901176918
0       0
48.43337494     9.434658491
48.87915021     6.405925721
46.91925127     6.556714558
};
