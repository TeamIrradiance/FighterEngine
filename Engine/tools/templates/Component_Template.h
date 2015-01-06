/******************************************************************************/
/*!
 \file   ComponentTemplate.h
 \author Darthvader
 \par    Course: GAM250
 \par    All content ?2014 DigiPen (USA) Corporation, all rights reserved.
 \brief
 */
/******************************************************************************/

#pragma once

#include "Components.h"

//@@ REMEMBER TO INCLUDE NEW COMPONENT TO "IComponents.h"

namespace Component
{

//@@ Only this 4 function is allowed in component class
  class ComponentTemplate: public BaseEngine::Component
  {
  public:
    ComponentTemplate();
    ~ComponentTemplate();
    void DefineMeta();

    //DATAS
  };

}