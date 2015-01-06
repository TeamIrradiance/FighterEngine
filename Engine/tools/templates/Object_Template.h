/******************************************************************************/
/*!
 \file   sampleObject.h
 \author Darthvader
 \par    Course: GAM250
 \par    All content ?2014 DigiPen (USA) Corporation, all rights reserved.
 \brief
 */
/******************************************************************************/

#pragma once

#include "IData.h"

namespace Data
{

  class ObjectTemplate: public IData
  {
  public:
    ObjectTemplate();
    ~ObjectTemplate();
    void DefineMeta();

    //DATAS
  };

}