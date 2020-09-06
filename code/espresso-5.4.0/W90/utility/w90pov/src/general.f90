!-*- mode: F90; mode: font-lock; column-number-mode: true -*-!
!                                                            !
! Copyright (C) 2012 Daniel Aberg                            !
!                                                            !
! This file is distributed under the terms of the GNU        !
! General Public License. See the file `LICENSE' in          !
! the root directory of the present distribution, or         !
! http://www.gnu.org/copyleft/gpl.txt .                      !
!                                                            !
!------------------------------------------------------------!
! Code to enable use of the POV-Ray ray-tracing software for !
! the rendering of Wannier function isosurfaces from .xsf    !
! files generated by Wannier90.                              !
!------------------------------------------------------------! 
module general

  implicit none

  integer, parameter   :: q = kind(1.0d0)
  real(q), parameter   :: pi=3.1415926536_q, tpi=2.0_q*pi
  real(q), parameter   :: zero=0.0_q
  complex(q),parameter :: czero=cmplx(0.0_q,0.0_q,kind=q)
contains

  !-----------------------------------------------

  function upcase(string) result(upper)
    character(len=*), intent(in) :: string
    character(len=len(string))   :: upper
    integer :: j
    do j = 1,len(string)
       if(string(j:j) >= "a" .and. string(j:j) <= "z") then
          upper(j:j) = achar(iachar(string(j:j)) - 32)
       else
          upper(j:j) = string(j:j)
       end if
    end do
  end function upcase

end module general
