function varargout = guim(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guim_OpeningFcn, ...
                   'gui_OutputFcn',  @guim_OutputFcn, ...
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

function guim_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

%****************************************************************
function axes11_CreateFcn(hObject, eventdata, handles)
r=randi(9)
k=num2str(r);
fmt='.jpg';
file=strcat(k,fmt)
handles.axes11=imshow(imread(file));
varargin{11}=handles.axes11;
%********************************************************%********************************************************
%********************************************************%********************************************************
function varargout = guim_OutputFcn(hObject, eventdata, handles)
r1=randi(9)
k1=num2str(r1);
fmt1='.jpg';
file1=strcat(k1,fmt1)
handles.axes11=imshow(imread(file1));
varargout{11} = handles.axes11;
%****************************************************************%****************************************************************


%****************************************************************
function axes1_CreateFcn(hObject, eventdata, handles)
handles.axes1=imshow(imread('1.jpg'));
varargin{1}=handles.axes1;
function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes1=imshow(imread('1.jpg'));
pause(2);
handles.axes1=imshow(imread('2.jpg'));
varargout{1} = handles.output;
%****************************************************************
%****************************************************************
function axes2_CreateFcn(hObject, eventdata, handles)
handles.axes2=imshow(imread('2.jpg'));
varargin{2}=handles.axes2;
function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes2=imshow(imread('2.jpg'));
pause(2);
handles.axes2=imshow(imread('4.jpg'));
varargout{2} = handles.axes2;
%****************************************************************
%****************************************************************
function axes3_CreateFcn(hObject, eventdata, handles)
handles.axes3=imshow(imread('3.jpg'));
varargin{3}=handles.axes3;
function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes3=imshow(imread('3.jpg'));
varargout{3} = handles.axes3;
%****************************************************************
function axes4_CreateFcn(hObject, eventdata, handles)
handles.axes4=imshow(imread('4.jpg'));
varargin{4}=handles.axes4;
%****************************************************************
function axes5_CreateFcn(hObject, eventdata, handles)
handles.axes5=imshow(imread('5.jpg'));
varargin{5}=handles.axes5;
%****************************************************************
function axes6_CreateFcn(hObject, eventdata, handles)
handles.axes6=imshow(imread('6.jpg'));
varargin{6}=handles.axes6;
%****************************************************************
function axes7_CreateFcn(hObject, eventdata, handles)
handles.axes7=imshow(imread('7.jpg'));
varargin{7}=handles.axes7;
%****************************************************************
function axes8_CreateFcn(hObject, eventdata, handles)
handles.axes8=imshow(imread('8.jpg'));
varargin{8}=handles.axes8;
%****************************************************************
function axes9_CreateFcn(hObject, eventdata, handles)
handles.axes9=imshow(imread('9.jpg'));
varargin{9}=handles.axes9;



function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes4=imshow(imread('4.jpg'));
varargout{4} = handles.axes4;

function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes5=imshow(imread('5.jpg'));
varargout{5} = handles.axes5;

function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes6=imshow(imread('6.jpg'));
varargout{6} = handles.axes6;

function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes7=imshow(imread('7.jpg'));
varargout{7} = handles.axes7;

function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes8=imshow(imread('8.jpg'));
varargout{8} = handles.axes8;

function varargout = guim_OutputFcn(hObject, eventdata, handles)
handles.axes9=imshow(imread('9.jpg'));
varargout{9} = handles.axes9;
