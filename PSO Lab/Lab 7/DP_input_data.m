% Input Data for Dynamic Programming based Unit Commitment
%-----------------------------------------------------------------------
%                                                                                                                                                                                             cost coeff: a + b*PG + c*PG^2
% PARAMETERS setting
MIN_UP_DOWN_TIME_FLAG       = 1;        % take minimum up and down times into account (1) or not (0)
RAMP_UP_DOWN_FLAG           = 0;        % take ramp    up and down rates into account (1) or not (0)
N_PRED                      = 1;        % number of predecesors to be searched (N_PRED >= 1)
COMPLETE_ENUMERATION_FLAG   = 1;        % 1 - complete enumeration, 0 - priority list
DETAIL_PRINT_FLAG           = 0;        % detailed results printing: 0 - no, 1 - yes
DISPATCH_METHOD             = 3;        % 1 - quadprog, 2 - linprog, 3 - quick dispatch
RESERVE_FLAG                = 0;        % take spinning reserve in calculation (1) or not (0)
START_UP_COST_METHOD        = 1;        % 1-cold start-up (const), 2-cold/hot start-up, 3-exponential start-up                                                                                                                                                                                          -----------------------------------                                         
% Unit_no.    Pmin   Pmax  Inc.heat_rate  No_load_cost  Start_cost_cold  Fuel_cost  Min_up_time  Min_down_time In.status   Start_cost_hot     Cold_start_[h]    Ramp-up      Ramp-down      coef_a      coef_b        coef_c        shut_down_cost       TAU
%             [MW]   [MW]    [BTU/kWh]        [£/h]        [£]           [£/MBTU]      [h]           [h]          [h]         [£]                [h]            [MW/h]         [MW/h]        [£]        [£/MWh]      [£/MW^2h]           [£]             [h]
gen_data = [...                                                                                                                                                                                                                                           
      1        25     80      10440           213.00       350            2.00          4             2           -5          150                4                50             75          NaN         NaN           NaN               0               NaN 
      2        60    250       9000           585.62       400            2.00          5             3           +8          170                5                80            120          NaN         NaN           NaN               0               NaN 
      3        75    300       8730           684.74      1100            2.00          5             4           +8          500                5               100            150          NaN         NaN           NaN               0               NaN 
      4        20     60      11900           252.00      0.02            2.00          1             1           -6            0                0                80            120          NaN         NaN           NaN               0               NaN 
];                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                         
DEMAND = [475;500];
K_RES_UP = 0.00;    % if not specified, reserve up   is calculated as RES_UP(HOUR) = K_RES_UP*DEMAND(HOUR)
K_RES_DN = 0.00;    % if not specified, reserve down is calculated as RES_DN(HOUR) = K_RES_DN*DEMAND(HOUR)


