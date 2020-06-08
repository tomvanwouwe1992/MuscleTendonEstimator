function [Misc] = DefaultSettings(Misc)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% Filters
if ~isfield(Misc,'f_cutoff_ID') || isempty(Misc.f_cutoff_ID)
    Misc.f_cutoff_ID=6;
end
if ~isfield(Misc,'f_order_ID') || isempty(Misc.f_order_ID)
    Misc.f_order_ID=6;
end
% Muscle-tendon lengths
if ~isfield(Misc,'f_cutoff_lMT') || isempty(Misc.f_cutoff_lMT)
    Misc.f_cutoff_lMT=6;
end
if ~isfield(Misc,'f_order_lMT') || isempty(Misc.f_order_lMT)
    Misc.f_order_lMT=6;
end
% Moment arms
if ~isfield(Misc,'f_cutoff_dM') || isempty(Misc.f_cutoff_dM)
    Misc.f_cutoff_dM=6;
end
if ~isfield(Misc,'f_order_dM') || isempty(Misc.f_order_dM)
    Misc.f_order_dM=6;
end
% Inverse Kinematics
if ~isfield(Misc,'f_cutoff_IK') || isempty(Misc.f_cutoff_IK)
    Misc.f_cutoff_IK=6;
end
if ~isfield(Misc,'f_order_IK') || isempty(Misc.f_order_IK)
    Misc.f_order_IK=6;
end

%% Mesh Frequency
if ~isfield(Misc,'Mesh_Frequency') || isempty(Misc.Mesh_Frequency)
    Misc.Mesh_Frequency=100;
end

%% Run muscle analysis (default true)
if ~isfield(Misc,'RunAnalysis') || isempty(Misc.RunAnalysis)
    Misc.RunAnalysis = 1;
end

%% EMG
if ~isfield(Misc,'EMGconstr') || isempty(Misc.EMGconstr)
    Misc.EMGconstr  = 0;
end
% bounds on scaling EMG
if ~isfield(Misc,'BoundsScaleEMG') || isempty(Misc.BoundsScaleEMG)
    Misc.BoundsScaleEMG = [0.9 1.1];
end
% bounds on EMG signal
if ~isfield(Misc,'EMGbounds')
    Misc.EMGbounds = [];
end
% copies of EMG
if ~isfield(Misc,'EMG_MuscleCopies')
    Misc.EMG_MuscleCopies = [];
end
% selected EMG information
if ~isfield(Misc,'EMGSelection')
    Misc.EMGSelection = [];
end

%% Info related to parameter optimization
if ~isfield(Misc,'Estimate_OptFL')
    Misc.Estimate_OptFL =[];
end
if ~isfield(Misc,'Estimate_TendonStifness')
    Misc.Estimate_TendonStifness =[];
end
if ~isfield(Misc,'Coupled_fiber_length')
    Misc.Coupled_fiber_length =[];
end
if ~isfield(Misc,'Coupled_slack_length')
    Misc.Coupled_slack_length =[];
end
if ~isfield(Misc,'Coupled_TendonStifness')
    Misc.Coupled_TendonStifness =[];
end

%% ResultsName
if ~isfield(Misc,'OutName') || isempty(Misc.OutName)
    Misc.OutName = '';
end

%% weights
if ~isfield(Misc,'wlM') || isempty(Misc.wlM)
    Misc.wlM = 0;
end
if ~isfield(Misc,'wEMG')|| isempty(Misc.wEMG)
    Misc.wEMG = 0;
end
if ~isfield(Misc,'wAct')|| isempty(Misc.wAct)
    Misc.wAct = 1;
end
if ~isfield(Misc,'wTres')|| isempty(Misc.wTres)
    Misc.wTres = 1000;
end
if ~isfield(Misc,'wVm')|| isempty(Misc.wVm)
    Misc.wVm = 0.01;
end

%% reserve actuator
if ~isfield(Misc,'Topt')|| isempty(Misc.Topt)
    Misc.Topt = 150;
end

%% ultrasound
if ~isfield(Misc,'USfile')
    Misc.USfile = [];
end
end

