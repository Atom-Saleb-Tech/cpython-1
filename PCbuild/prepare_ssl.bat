@echo off
if not defined HOST_PYTHON (
  if "%1" EQU "Debug" (
    shift
    set HOST_PYTHON=python_d.exe
    if not exist python37_d.dll
  ) ELSE (
    set HOST_PYTHON=python.exe
    if not exist python37.dll
  )
)
%HOST_PYTHON% "%~dp0prepare_ssl.py" %1
