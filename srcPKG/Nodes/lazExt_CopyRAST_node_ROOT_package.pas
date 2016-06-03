unit lazExt_CopyRAST_node_ROOT_package;

{$mode objfpc}{$H+}

interface

uses //Dialogs,
    PackageIntf,
    lazExt_CopyRAST_node_File,
    lazExt_CopyRAST_node_Folder,
    lazExt_CopyRAST_node_ROOT;

type

 tCopyRAST_ROOT_package=class(tCopyRAST_ROOT)
  public
    procedure set_DirExpanded(const DirPath:string);
    procedure add_SearchPaths(const SrchPTH:string; const KIND:eCopyRAST_node_SrchPath);
    procedure add_PackageFile(const FullFileName:string);
    procedure add_File       (const FullFileName:string; const FileType:TPkgFileType);
  public
    procedure PREAPARE;
  end;



implementation

procedure tCopyRAST_ROOT_package.set_DirExpanded(const DirPath:string);
begin
   _set_BaseDIR_(DirPath);
end;

procedure tCopyRAST_ROOT_package.add_SearchPaths(const SrchPTH:string; const KIND:eCopyRAST_node_SrchPath);
begin
   _add_SrchPTH_(SrchPTH,KIND);
end;

procedure tCopyRAST_ROOT_package.add_PackageFile(const FullFileName:string);
var fileXXX:tCopyRAST_node_fileMainPKG;
begin
    fileXXX:=tCopyRAST_node_fileMainPKG.Create(FullFileName);
   _add_FileXXX_(fileXXX);
end;

procedure tCopyRAST_ROOT_package.add_File(const FullFileName:string; const FileType:TPkgFileType);
var fileXXX:tCopyRAST_node_File;
begin
    fileXXX:=tCopyRAST_node_File.Create(FullFileName,FileType);
   _add_FileXXX_(fileXXX);
end;

procedure tCopyRAST_ROOT_package.PREAPARE;
begin
   _prepare_fnd8add_fileRES_4ROOT_;
end;

end.

