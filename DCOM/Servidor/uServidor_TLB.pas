unit uServidor_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 27/03/2013 09:54:43 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\EC2019\DCOM\Servidor\uServidor.tlb (1)
// LIBID: {7F601A61-DE1C-40EB-9289-06109DCEDCDC}
// LCID: 0
// Helpfile: 
// HelpString: PrjDCOMServer Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Program Files\Embarcadero\RAD Studio\11.0\bin\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PrjDCOMServerMajorVersion = 1;
  PrjDCOMServerMinorVersion = 0;

  LIBID_PrjDCOMServer: TGUID = '{7F601A61-DE1C-40EB-9289-06109DCEDCDC}';

  IID_IRDM: TGUID = '{5069703E-B9A7-4DB4-9976-04FC137A39E6}';
  CLASS_RDM: TGUID = '{B64C8329-2A04-447F-9009-FFAA70B886F8}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRDM = interface;
  IRDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RDM = IRDM;


// *********************************************************************//
// Interface: IRDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5069703E-B9A7-4DB4-9976-04FC137A39E6}
// *********************************************************************//
  IRDM = interface(IAppServer)
    ['{5069703E-B9A7-4DB4-9976-04FC137A39E6}']
    function Echo(const Str: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5069703E-B9A7-4DB4-9976-04FC137A39E6}
// *********************************************************************//
  IRDMDisp = dispinterface
    ['{5069703E-B9A7-4DB4-9976-04FC137A39E6}']
    function Echo(const Str: WideString): WideString; dispid 301;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoRDM provides a Create and CreateRemote method to          
// create instances of the default interface IRDM exposed by              
// the CoClass RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRDM = class
    class function Create: IRDM;
    class function CreateRemote(const MachineName: string): IRDM;
  end;

implementation

uses ComObj;

class function CoRDM.Create: IRDM;
begin
  Result := CreateComObject(CLASS_RDM) as IRDM;
end;

class function CoRDM.CreateRemote(const MachineName: string): IRDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RDM) as IRDM;
end;

end.
