/*********************************************************************
* Software License Agreement (BSD License)
*
*  Copyright (c) 2013, Willow Garage, Inc.
*  All rights reserved.
*
*  Redistribution and use in source and binary forms, with or without
*  modification, are permitted provided that the following conditions
*  are met:
*
*   * Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   * Redistributions in binary form must reproduce the above
*     copyright notice, this list of conditions and the following
*     disclaimer in the documentation and/or other materials provided
*     with the distribution.
*   * Neither the name of the Willow Garage nor the names of its
*     contributors may be used to endorse or promote products derived
*     from this software without specific prior written permission.
*
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
*  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
*  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
*  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
*  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
*  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
*  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
*  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
*  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
*  POSSIBILITY OF SUCH DAMAGE.
*********************************************************************/

#ifndef MOVEIT_VERSION_
#define MOVEIT_VERSION_

#define MOVEIT_VERSION_STR "1.1.14-devel"

#define MOVEIT_VERSION_MAJOR 1
#define MOVEIT_VERSION_MINOR 1
#define MOVEIT_VERSION_PATCH 14
#define MOVEIT_VERSION_EXTRA "-devel"

#define MOVEIT_GIT_NAME "master"
#define MOVEIT_GIT_COMMIT_HASH "984a0ea2a"

/// MOVEIT_VERSION is (major << 16) + (minor << 8) + patch.
#define MOVEIT_VERSION MOVEIT_VERSION_CHECK(MOVEIT_VERSION_MAJOR, MOVEIT_VERSION_MINOR, MOVEIT_VERSION_PATCH)

/// Use like: #if MOVEIT_VERSION >= MOVEIT_VERSION_CHECK(1, 0, 0)
#define MOVEIT_VERSION_CHECK(major, minor, patch) ((major << 16) | (minor << 8) | (patch))

#endif
