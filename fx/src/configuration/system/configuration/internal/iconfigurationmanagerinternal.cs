//------------------------------------------------------------------------------
// <copyright file="IConfigurationManagerInternal.cs" company="Microsoft">
//     
//      Copyright (c) 2006 Microsoft Corporation.  All rights reserved.
//     
//      The use and distribution terms for this software are contained in the file
//      named license.txt, which can be found in the root of this distribution.
//      By using this software in any fashion, you are agreeing to be bound by the
//      terms of this license.
//     
//      You must not remove this notice, or any other, from this software.
//     
// </copyright>
//------------------------------------------------------------------------------

using System;
using System.IO;
using System.Security;
using System.Collections.Specialized;
using System.Configuration;
using ClassConfiguration=System.Configuration.Configuration;

//
// This file contains most of the interfaces that allow System.Web, Venus, and 
// Whitehorse to customize configuration in some way.
//
// The goal of the design of customization is to only require other MS assemblies
// to create an instance of an internal object via Activator.CreateInstance(), and then
// use these objects through *public* System.Configuration.Internal interfaces. 
// We do not want extenders to have to use reflection to call a method - it is slow,
// not typesafe, and more difficult to promote correct use of the internal object.
//
namespace System.Configuration.Internal {

    //
    // Exposes support in System.Configuration for functions that were
    // once available in System.dll
    //
    [System.Runtime.InteropServices.ComVisible(false)]
    public interface IConfigurationManagerInternal {
        bool    SupportsUserConfig          {get;} 
        bool    SetConfigurationSystemInProgress {get;}
        string  MachineConfigPath           {get;}
        string  ApplicationConfigUri        {get;}
        string  ExeProductName              {get;}
        string  ExeProductVersion           {get;} 
        string  ExeRoamingConfigDirectory   {get;}
        string  ExeRoamingConfigPath        {get;}
        string  ExeLocalConfigDirectory     {get;} 
        string  ExeLocalConfigPath          {get;}
        string  UserConfigFilename          {get;} 
    }
}
