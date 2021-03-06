package VC14WorkspaceCreator;

# ************************************************************
# Description   : A VC14 Workspace Creator
# Author        : Johnny Willemsen
# Create Date   : 06/04/2014
# $Id: VC14WorkspaceCreator.pm 2215 2014-06-30 17:37:41Z elliott_c $
# ************************************************************

# ************************************************************
# Pragmas
# ************************************************************

use strict;

use VC14ProjectCreator;
use VC12WorkspaceCreator;

use vars qw(@ISA);
@ISA = qw(VC12WorkspaceCreator);

# ************************************************************
# Subroutine Section
# ************************************************************

sub pre_workspace {
  my($self, $fh) = @_;
  my $crlf = $self->crlf();

  print $fh '﻿', $crlf,
            'Microsoft Visual Studio Solution File, Format Version 14.00', $crlf;
  $self->print_workspace_comment($fh,
            '# Visual Studio 2014', $crlf,
            '# $Id: VC14WorkspaceCreator.pm 2215 2014-06-30 17:37:41Z elliott_c $', $crlf,
            '#', $crlf,
            '# This file was generated by MPC.  Any changes made directly to', $crlf,
            '# this file will be lost the next time it is generated.', $crlf,
            '#', $crlf,
            '# MPC Command:', $crlf,
            '# ', $self->create_command_line_string($0, @ARGV), $crlf);
}


1;
