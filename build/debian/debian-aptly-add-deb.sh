#!/bin/bash
#
# MindForger knowledge management tool
#
# Copyright (C) 2016-2020 Martin Dvorak <martin.dvorak@mindforger.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

# Debian releases: https://www.debian.org/releases/
#   6/7/8/9/10: squeeze wheezy jessie stretch buster

echo "See 'MindForger Release Guide#Debian and my PPA' notebook for detailed steps description..."

# list aptly repositories
#aptly repo list

# show repository basic info
#aptly repo show mindforger-com-ppa

# show repo content w/ packages
#aptly repo show -with-packages mindforger-com-ppa

# show snapshots
#aptly snapshot list 

# show published snapshots
#aptly publish list 

echo "Add new .deb to PPA"

# delete published snapshot(s) ONLY if needed
#aptly publish drop stretch

# delete snapshot(s) ONLY if needed - publish must be deleted first!
#aptly snapshot drop mindforger-1.49.0-snapshot

# add .deb to repository
#aptly repo add mindforger-com-ppa mindforger_1.50.1-1_amd64.deb

# create snapshot in the time of release - note release NAME 
#aptly snapshot create mindforger-1.50.0-snapshot from repo mindforger-com-ppa

# publish snapshot to local filesystem so that it can be uploaded - note release NAME
#aptly publish snapshot mindforger-1.50.0-snapshot

# eof
