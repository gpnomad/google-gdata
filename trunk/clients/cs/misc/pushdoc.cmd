@echo off
set shfb_home=%ProgramFiles%\EWSoftware\Sandcastle Help File Builder
set src_home=..\src\VS2003
set out_dir=..\lib
set doc_dir=..\docs

rem build documentation
"%shfb_home%\SandcastleBuilderConsole.exe" GDataProject.shfb
move "%doc_dir%\HTMLDocumentation\Google.GData.Documentation.chm" "%doc_dir%"
del "%doc_dir%\HTMLDocumentation\*.log"

rem Create doc archive
7z a -tzip -mx9 "%doc_dir%\HTMLDocumentation.zip" "%doc_dir%\HTMLDocumentation"
