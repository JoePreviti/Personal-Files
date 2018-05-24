function varargout = ThreeDotGui(varargin)
% THREEDOTGUI MATLAB code for ThreeDotGui.fig
%      THREEDOTGUI, by itself, creates a new THREEDOTGUI or raises the existing
%      singleton*.
%
%      H = THREEDOTGUI returns the handle to a new THREEDOTGUI or the handle to
%      the existing singleton*.
%
%      THREEDOTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREEDOTGUI.M with the given input arguments.
%
%      THREEDOTGUI('Property','Value',...) creates a new THREEDOTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ThreeDotGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ThreeDotGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ThreeDotGui

% Last Modified by GUIDE v2.5 21-May-2018 15:26:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ThreeDotGui_OpeningFcn, ...
                   'gui_OutputFcn',  @ThreeDotGui_OutputFcn, ...
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


% --- Executes just before ThreeDotGui is made visible.
function ThreeDotGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ThreeDotGui (see VARARGIN)

% Choose default command line output for ThreeDotGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
GroundState3DotPrac(handles);

% UIWAIT makes ThreeDotGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ThreeDotGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function editPdrv_Callback(hObject, eventdata, handles)
% hObject    handle to editPdrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
GroundState3DotPrac(handles);

% --- Executes during object creation, after setting all properties.
function editPdrv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPdrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function editAdrv_Callback(hObject, eventdata, handles)
% hObject    handle to editAdrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
GroundState3DotPrac(handles);

% --- Executes during object creation, after setting all properties.
function editAdrv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAdrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edita_Callback(hObject, eventdata, handles)
% hObject    handle to edita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita as text
%        str2double(get(hObject,'String')) returns contents of edita as a double
GroundState3DotPrac(handles)

% --- Executes during object creation, after setting all properties.
function edita_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editGamma_Callback(hObject, eventdata, handles)
% hObject    handle to editGamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editGamma as text
%        str2double(get(hObject,'String')) returns contents of editGamma as a double
GroundState3DotPrac(handles);

% --- Executes during object creation, after setting all properties.
function editGamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editGamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editE_Callback(hObject, eventdata, handles)
% hObject    handle to editE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editE as text
%        str2double(get(hObject,'String')) returns contents of editE as a double
GroundState3DotPrac(handles);

% --- Executes during object creation, after setting all properties.
function editE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
