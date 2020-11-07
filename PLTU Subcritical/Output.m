function varargout = Output(varargin)
% OUTPUT MATLAB code for Output.fig
%      OUTPUT, by itself, creates a new OUTPUT or raises the existing
%      singleton*.
%
%      H = OUTPUT returns the handle to a new OUTPUT or the handle to
%      the existing singleton*.
%
%      OUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OUTPUT.M with the given input arguments.
%
%      OUTPUT('Property','Value',...) creates a new OUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Output_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Output_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Output

% Last Modified by GUIDE v2.5 11-Aug-2020 15:09:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Output_OpeningFcn, ...
                   'gui_OutputFcn',  @Output_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Output is made visible.
function Output_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Output (see VARARGIN)

% Choose default command line output for Output
handles.output = hObject;

hback = axes('unit','normalized','position',[0 0 1 1]);
uistack(hback, 'bottom');
[back map] = imread('Blank.png');
image(back)
colormap(map)
set(hback,'handlevisibility','off','visible','off');

% Update handles structure
guidata(hObject, handles);

global EfficiencyGA1
global EfficiencyGA2
global EfficiencyGA3
global EfficiencyGA4
global EfficiencyGA5
global EfficiencyNorm1
global EfficiencyNorm2
global EfficiencyNorm3
global EfficiencyNorm4
global EfficiencyNorm5
global TemperatureSteamGA1
global TemperatureSteamGA2
global TemperatureSteamGA3
global TemperatureSteamGA4
global TemperatureSteamGA5
global TemperatureWaterGA1
global TemperatureWaterGA2
global TemperatureWaterGA3
global TemperatureWaterGA4
global TemperatureWaterGA5
global TemperatureReheaterGA1
global TemperatureReheaterGA2
global TemperatureReheaterGA3
global TemperatureReheaterGA4
global TemperatureReheaterGA5
global TemperatureSteamNorm1
global TemperatureSteamNorm2
global TemperatureSteamNorm3
global TemperatureSteamNorm4
global TemperatureSteamNorm5
global TemperatureWaterNorm1
global TemperatureWaterNorm2
global TemperatureWaterNorm3
global TemperatureWaterNorm4
global TemperatureWaterNorm5
global TemperatureReheaterNorm1
global TemperatureReheaterNorm2
global TemperatureReheaterNorm3
global TemperatureReheaterNorm4
global TemperatureReheaterNorm5

set(handles.text0, 'string', EfficiencyGA1);
set(handles.text1, 'string', TemperatureSteamGA1);
set(handles.text2, 'string', TemperatureWaterGA1);
set(handles.text3, 'string', TemperatureReheaterGA1);
set(handles.text8, 'string', EfficiencyGA2);
set(handles.text9, 'string', TemperatureSteamGA2);
set(handles.text10, 'string', TemperatureWaterGA2);
set(handles.text11, 'string', TemperatureReheaterGA2);
set(handles.text16, 'string', EfficiencyGA3);
set(handles.text17, 'string', TemperatureSteamGA3);
set(handles.text18, 'string', TemperatureWaterGA3);
set(handles.text19, 'string', TemperatureReheaterGA3);
set(handles.text24, 'string', EfficiencyGA4);
set(handles.text25, 'string', TemperatureSteamGA4);
set(handles.text26, 'string', TemperatureWaterGA4);
set(handles.text27, 'string', TemperatureReheaterGA4);
set(handles.text32, 'string', EfficiencyGA5);
set(handles.text33, 'string', TemperatureSteamGA5);
set(handles.text34, 'string', TemperatureWaterGA5);
set(handles.text35, 'string', TemperatureReheaterGA5);

set(handles.text4, 'string', EfficiencyNorm1);
set(handles.text5, 'string', TemperatureSteamNorm1);
set(handles.text6, 'string', TemperatureWaterNorm1);
set(handles.text7, 'string', TemperatureReheaterNorm1);
set(handles.text12, 'string', EfficiencyNorm2);
set(handles.text13, 'string', TemperatureSteamNorm2);
set(handles.text14, 'string', TemperatureWaterNorm2);
set(handles.text15, 'string', TemperatureReheaterNorm2);
set(handles.text20, 'string', EfficiencyNorm3);
set(handles.text21, 'string', TemperatureSteamNorm3);
set(handles.text22, 'string', TemperatureWaterNorm3);
set(handles.text23, 'string', TemperatureReheaterNorm3);
set(handles.text28, 'string', EfficiencyNorm4);
set(handles.text29, 'string', TemperatureSteamNorm4);
set(handles.text30, 'string', TemperatureWaterNorm4);
set(handles.text31, 'string', TemperatureReheaterNorm4);
set(handles.text36, 'string', EfficiencyNorm5);
set(handles.text37, 'string', TemperatureSteamNorm5);
set(handles.text38, 'string', TemperatureWaterNorm5);
set(handles.text39, 'string', TemperatureReheaterNorm5);


% UIWAIT makes Output wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Output_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run('SettingParameter.m');
