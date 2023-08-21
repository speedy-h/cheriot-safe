
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

void *memcpy (void *destaddr, const void *srcaddr, unsigned int  len)
{
  char *dest = (char *)destaddr;
  const char *src = (const char *)srcaddr;

  while (len-- > 0)
    *dest++ = *src++;
  return destaddr;
}

