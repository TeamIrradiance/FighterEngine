/******************************************************************************/
/*!
\file   ProcessTemplate.cpp
\author Darthvader
\par    Course: GAM250
\par    All content ?2014 DigiPen (USA) Corporation, all rights reserved.
\brief  Template for all proces classes
*/
/******************************************************************************/

#include <Precompiled.h>
#include "ProcessTemplate.h"

namespace Process
{


  /*************************************************************************/
  // Method:    ProcessTemplate
  // FullName:  Process::ProcessTemplate::ProcessTemplate
  // Access:    public 
  // Returns:   
  // Qualifier:
  // Brief:
  /*************************************************************************/
  ProcessTemplate::ProcessTemplate ()
  {
    std::hash<std::string> id;
    mName = std::string ("ProcessTemplate");
    mProcessID = id (mName);    //faster access with hash instead of string
    m_bActive = true;           // skip when process is deactivated
    m_bInitialized = false;     //debugging purposes if initialized
    m_bAttached = false;        // check if process is attached to manager

  }

  /*************************************************************************/
  // Method:    ~ProcessTemplate
  // FullName:  Process::ProcessTemplate::~ProcessTemplate
  // Access:    public 
  // Returns:   
  // Qualifier:
  // Brief:
  /*************************************************************************/
  ProcessTemplate:: ~ProcessTemplate ()
  {

  }

  /*************************************************************************/
  // Method:    VInit
  // FullName:  Process::ProcessTemplate::VInit
  // Access:    public 
  // Returns:   void
  // Qualifier:
  // Brief:
  /*************************************************************************/
  void ProcessTemplate::VInit ()
  {

  }

  /*************************************************************************/
  // Method:    VUpdate
  // FullName:  Process::ProcessTemplate::VUpdate
  // Access:    public 
  // Returns:   void
  // Qualifier:
  // Parameter: const double dt
  // Brief:
  /*************************************************************************/
  void ProcessTemplate::VUpdate (const double dt)
  {

  }
}