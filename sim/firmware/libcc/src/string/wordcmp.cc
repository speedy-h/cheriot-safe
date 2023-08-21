
// =====================================================
// Copyright (c) Microsoft Corporation.
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//    http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =====================================================

// Simple memcpy routine

#include <string.h>

int wordcmp (const void *destaddr, const void *srcaddr, int len)
{
  int retval=0;
  const uint32_t * dest, * src;
  dest = (uint32_t*) destaddr;
  src  = (uint32_t*) srcaddr;

  while (len-- > 0 && (retval=*dest++-*src++) == 0);
  return retval;
}

