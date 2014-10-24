[Setup]
AppName=Vanilla Perl
AppVerName=Vanilla Perl 5.8.8 build 4

AppId=vanillaperl

; name of startmenu folder
DefaultGroupName=Vanilla Perl
AllowNoIcons=yes

; hardcode where it's installed
DefaultDirName=c:\vanilla-perl
DisableDirPage=yes

; folder + filename of created setup exe
OutputDir=C:\
OutputBaseFilename=vanilla-perl-5.8.8-build-4

; location of source files
SourceDir=C:\vanilla-perl

; disallow win95 or above
; allow nt4 or above
MinVersion=4.0.950,4.0.1381

; use fast setting for testing
;Compression=lzma
Compression=lzma/fast

SolidCompression=yes
ChangesEnvironment=true

[Languages]
Name: eng; MessagesFile: compiler:Default.isl

[Files]
Source: dmake\*; DestDir: {app}\dmake; Flags: ignoreversion recursesubdirs createallsubdirs
Source: licenses\*; DestDir: {app}\licenses; Flags: ignoreversion recursesubdirs createallsubdirs
Source: links\*; DestDir: {app}\links; Flags: ignoreversion recursesubdirs createallsubdirs
Source: mingw\*; DestDir: {app}\mingw; Flags: ignoreversion recursesubdirs createallsubdirs
Source: perl\bin\*; DestDir: {app}\perl\bin; Flags: ignoreversion recursesubdirs createallsubdirs
Source: perl\html\*; DestDir: {app}\perl\html; Flags: ignoreversion recursesubdirs createallsubdirs
Source: perl\lib\*; DestDir: {app}\perl\lib; Flags: ignoreversion recursesubdirs createallsubdirs
Source: perl\site\lib\*; DestDir: {app}\perl\site\lib; Flags: ignoreversion recursesubdirs createallsubdirs confirmoverwrite
Source: README.txt; DestDir: {app}; Flags: ignoreversion isreadme
Source: LICENSE.txt; DestDir: {app}; Flags: ignoreversion
Source: Release-Notes.txt; DestDir: {app}; Flags: ignoreversion

[Icons]
Name: {group}\{cm:UninstallProgram,Vanilla Perl}; Filename: {uninstallexe}
Name: {group}\Internet Links\Vanilla Perl Homepage; Filename: {app}\links\Vanilla Perl Homepage.url
Name: {group}\Internet Links\Perlmonks Community Forum; Filename: {app}\links\Perlmonks Community Forum.url
Name: {group}\Internet Links\Mailing Lists; Filename: {app}\links\Mailing Lists.url
Name: {group}\Internet Links\perldoc Documentation; Filename: {app}\links\perldoc Documentation.url
Name: {group}\Internet Links\Perl Homepage; Filename: {app}\links\Perl Homepage.url
Name: {group}\Internet Links\Search CPAN Modules; Filename: {app}\links\Search CPAN Modules.url
Name: {group}\Perl Documentation; Filename: {app}\perl\html\pod\perltoc.html
Name: {group}\Install modules with CPAN.pm; Filename: {app}\perl\bin\cpan.bat; WorkingDir: {app}\perl
Name: {group}\README; Filename: {app}\README.txt

[Registry]
; only for task passiveftp
; set the path
Root: HKLM; Subkey: SYSTEM\CurrentControlSet\Control\Session Manager\Environment; ValueType: expandsz; ValueName: PATH; ValueData: "{app}\perl\bin;{olddata};{app}\dmake\bin;{app}\mingw\bin"
Root: HKLM; Subkey: SYSTEM\CurrentControlSet\Control\Session Manager\Environment; ValueType: expandsz; ValueName: LIB; ValueData: "{olddata};{app}\mingw\lib;{app}\perl\bin"
Root: HKLM; Subkey: SYSTEM\CurrentControlSet\Control\Session Manager\Environment; ValueType: expandsz; ValueName: INCLUDE; ValueData: "{olddata};{app}\mingw\include;{app}\perl\lib\CORE;{app}\perl\lib\encode"
