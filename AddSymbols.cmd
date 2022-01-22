@rem 
@rem PROJECT:   Mouri Internal Library Essentials
@rem FILE:      AddSymbols.cmd
@rem PURPOSE:   Add symbols to this symbol store
@rem 
@rem LICENSE:   The MIT License
@rem 
@rem DEVELOPER: Mouri_Naruto (Mouri_Naruto AT Outlook.com)
@rem 

@setlocal
@echo off

pushd %~dp0
set SymbolStoreFolder=%cd%
popd

pushd "C:\Program Files (x86)\Windows Kits\10\Debuggers\x64"
symstore.exe add /r /f "%~1\*.pdb" /s "%SymbolStoreFolder%" /t "%~2" /v "%~3"
popd

@endlocal