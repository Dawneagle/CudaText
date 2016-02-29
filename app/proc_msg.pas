(*
This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at http://mozilla.org/MPL/2.0/.

Copyright (c) Alexey Torgashin
*)
unit proc_msg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  cAppExeVersion = '1.2.26.0';
  cAppApiVersion = '1.0.130';


const
  msgTitle = 'CudaText';
  msgUntitledTab = 'Untitled';
  msgAllFiles = 'All files';
  msgDefTheme = '(default)';
  msgNoLexer = '(none)';
  msgCannotOpenFile = 'Cannot open file:';
  msgCannotFindFile = 'Cannot find file:';
  msgCannotFindLexlib = 'Cannot find lexer-library:';
  msgCannotSaveFile = 'Cannot save file:';
  msgCannotSaveUserConf = 'Cannot save user config (read only?)';
  msgCannotReadConf = 'Cannot read/parse config:';
  msgErrRegex = 'Incorrect regex passed:';
  msgThemeName = 'Theme name:';

  msgStatusNoCmtStr = 'No line comment defined for lexer';
  msgStatusReplaceCount = 'Replaces made: ';
  msgStatusFindCount = 'Count of "%s": ';
  msgStatusReadOps = 'Reading options';
  msgStatusSavedFile = 'Saved:';
  msgStatusReadonly = '[Read Only]';
  msgStatusMacroRec = '[Macro Rec]';
  msgStatusPicture = 'Image %dx%d';
  msgStatusCancel = 'Cancelled';
  msgStatusBadNum = 'Incorrect number entered';
  msgStatusEndsChanged = 'Line ends changed';
  msgStatusEncChanged = 'Encoding changed';
  msgStatusGotoLine = 'Go to line: %d';
  msgStatusGotoTab = 'Go to tab: %s';
  msgStatusSorted = 'Sorted %d lines';
  msgStatusLexlibSave = 'Lexer-library saved';

  msgConfirmSaveColors = 'Save theme to file?';
  msgConfirmOpenNotText = 'File is maybe not text:'#13'%s'#13#13'Do you want to open it?';
  msgConfirmReplaceText = 'Replace match at line %d ?';
  msgConfirmSaveModifiedTab = 'Tab is modified:'#13'%s'#13#13'Save it first?';
  msgConfirmReopenModifiedTab = 'Tab is modified:'#13'%s'#13#13'Reload it?';
  msgConfirmReloadFileWithEnc = 'Encoding is changed in memory.'#13'Do you also want to reload file?';
  msgConfirmCreateNewFile = 'File not found:'#13'%s'#13#13'Create it?';
  msgConfirmCreateUserConf = 'User config not found. Create it?';
  msgConfirmCloseDel = 'Close tab and delete its file?';
  msgConfirmDelLexer = 'Delete lexer "%s"?';
  msgConfirmSaveLib = 'Lexer-library modified. Save it?';

  msgAboutCredits =
      'Credits:'+sLineBreak+sLineBreak+
      'Lazarus IDE'+sLineBreak+
      'ATSynEdit, ATTabs, ATListbox, ATButton, Python wrapper: https://github.com/Alexey-T/'+sLineBreak+
      'EControl parser: http://www.econtrol.ru, https://github.com/Alexey-T/'+sLineBreak+
      'Helper Python code: Andrey Kvichanskiy, https://github.com/kvichans/'+sLineBreak+
      'Toolbar icons: Silk icons, http://www.famfamfam.com'+sLineBreak+
      '    License: CC BY 2.5, http://creativecommons.org/licenses/by/2.5/'+sLineBreak+
      'App icon: Snipicons, http://www.snipicons.com/'+sLineBreak+
      '    License: CC BY-NC 3.0, http://creativecommons.org/licenses/by-nc/3.0/'+sLineBreak+
      '';

function GetUntitledCaption: string;


implementation

var
  FUntitledCount: integer = 0;

function GetUntitledCaption: string;
begin
  Inc(FUntitledCount);
  Result:= msgUntitledTab+IntToStr(FUntitledCount);
end;

end.

