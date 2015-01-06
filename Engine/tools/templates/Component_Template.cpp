/******************************************************************************/
/*!
\file   ComponentTemplate.h
\author Darthvader
\par    Course: GAM250
\par    All content ?2014 DigiPen (USA) Corporation, all rights reserved.
\brief
*/
/******************************************************************************/

#include <Precompiled.h>
#include "ComponentTemplate.h"


namespace Component
{

  /*************************************************************************/
  // Method:    ComponentTemplate
  // FullName:  Component::ComponentTemplate::ComponentTemplate
  // Access:    public 
  // Returns:   
  // Qualifier:
  // Brief:
  /*************************************************************************/
  ComponentTemplate::ComponentTemplate ()
  {
    m_sName = Tokenize (typeid(ComponentTemplate).name ());
  }

  /*************************************************************************/
  // Method:    ~ComponentTemplate
  // FullName:  Component::ComponentTemplate::~ComponentTemplate
  // Access:    public 
  // Returns:   
  // Qualifier:
  // Brief:
  /*************************************************************************/
  ComponentTemplate::~ComponentTemplate ()
  {

  }

  /*************************************************************************/
  // Method:    DefineMeta
  // FullName:  Component::ComponentTemplate::DefineMeta
  // Access:    public 
  // Returns:   
  // Qualifier:
  // Brief:
  /*************************************************************************/
  void ComponentTemplate::DefineMeta ()
  {

  }

}