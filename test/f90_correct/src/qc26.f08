! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! test for constant complex(16) convert to integer(2)

program test
  integer, parameter :: n = 9
  integer, parameter :: m = n * 4
  complex(16) :: c_16(n)
  integer(2) :: result(m), expect(m)
  integer(2), parameter :: rst1 = (-2147483648.0_16, -2147483648.0_16) ! (-2^31, -2^31)
  integer(2), parameter :: rst2 = (-32769.0_16, -32769.0_16) ! (-2^15 - 1, -2^15 - 1)
  integer(2), parameter :: rst3 = (-32768.0_16, -32768.0_16) ! (-2^15, -2^15)
  integer(2), parameter :: rst4 = (-7.123456789012345678901234567890123456789_16,&
                                   -7.123456789012345678901234567890123456789_16)
  integer(2), parameter :: rst5 = (0.0_16, 0.0_16)
  integer(2), parameter :: rst6 = (77.123456789012345678901234567890123456789_16,&
                                   77.123456789012345678901234567890123456789_16)
  integer(2), parameter :: rst7 = (32767.0_16, 32767.0_16) ! (2^15 - 1, 2^15 - 1)
  integer(2), parameter :: rst8 = (32768.0_16, 32768.0_16) ! (2^15, 2^15)
  integer(2), parameter :: rst9 = (2147483647.0_16, 2147483647.0_16) ! (2^31 - 1, 2^31 - 1)
  integer(2) :: rst10 = (-2147483648.0_16, -2147483648.0_16) ! (-2^31, -2^31)
  integer(2) :: rst11 = (-32769.0_16, -32769.0_16) ! (-2^15 - 1, -2^15 - 1)
  integer(2) :: rst12 = (-32768.0_16, -32768.0_16) ! (-2^15, -2^15)
  integer(2) :: rst13 = (-7.123456789012345678901234567890123456789_16,&
                                   -7.123456789012345678901234567890123456789_16)
  integer(2) :: rst14 = (0.0_16, 0.0_16)
  integer(2) :: rst15 = (77.123456789012345678901234567890123456789_16,&
                                   77.123456789012345678901234567890123456789_16)
  integer(2) :: rst16 = (32767.0_16, 32767.0_16) ! (2^15 - 1, 2^15 - 1)
  integer(2) :: rst17 = (32768.0_16, 32768.0_16) ! (2^15, 2^15)
  integer(2) :: rst18 = (2147483647.0_16, 2147483647.0_16) ! (2^31 - 1, 2^31 - 1)

  expect(1) = 0
  expect(2) = 32767
  expect(3) = -32768
  expect(4) = -7
  expect(5) = 0
  expect(6) = 77
  expect(7) = 32767
  expect(8) = -32768
  expect(9) = -1
  expect(10) = 0
  expect(11) = 32767
  expect(12) = -32768
  expect(13) = -7
  expect(14) = 0
  expect(15) = 77
  expect(16) = 32767
  expect(17) = -32768
  expect(18) = -1
  expect(19) = 0
  expect(20) = 32767
  expect(21) = -32768
  expect(22) = -7
  expect(23) = 0
  expect(24) = 77
  expect(25) = 32767
  expect(26) = -32768
  expect(27) = -1
  expect(28) = 0
  expect(29) = 32767
  expect(30) = -32768
  expect(31) = -7
  expect(32) = 0
  expect(33) = 77
  expect(34) = 32767
  expect(35) = -32768
  expect(36) = -1

  c_16(1) = (-2147483648.0_16, -2147483648.0_16) ! (-2^31, -2^31)
  c_16(2) = (-32769.0_16, -32769.0_16) ! (-2^15 - 1, -2^15 - 1)
  c_16(3) = (-32768.0_16, -32768.0_16) ! (-2^15, -2^15)
  c_16(4) = (-7.123456789012345678901234567890123456789_16,&
             -7.123456789012345678901234567890123456789_16)
  c_16(5) = (0.0_16, 0.0_16)
  c_16(6) = (77.123456789012345678901234567890123456789_16,&
             77.123456789012345678901234567890123456789_16)
  c_16(7) = (32767.0_16, 32767.0_16) ! (2^15 - 1, 2^15 - 1)
  c_16(8) = (32768.0_16, 32768.0_16) ! (2^15, 2^15)
  c_16(9) = (2147483647.0_16, 2147483647.0_16) ! (2^31 - 1, 2^31 - 1)

  do i = 1, n
    result(i) = c_16(i)
  enddo

  result(n+1) = rst1
  result(n+2) = rst2
  result(n+3) = rst3
  result(n+4) = rst4
  result(n+5) = rst5
  result(n+6) = rst6
  result(n+7) = rst7
  result(n+8) = rst8
  result(n+9) = rst9
  result(n+10) = (-2147483648.0_16, -2147483648.0_16) ! (-2^31, -2^31)
  result(n+11) = (-32769.0_16, -32769.0_16) ! (-2^15 - 1, -2^15 - 1)
  result(n+12) = (-32768.0_16, -32768.0_16) ! (-2^15, -2^15)
  result(n+13) = (-7.123456789012345678901234567890123456789_16,&
             -7.123456789012345678901234567890123456789_16)
  result(n+14) = (0.0_16, 0.0_16)
  result(n+15) = (77.123456789012345678901234567890123456789_16,&
             77.123456789012345678901234567890123456789_16)
  result(n+16) = (32767.0_16, 32767.0_16) ! (2^15 - 1, 2^15 - 1)
  result(n+17) = (32768.0_16, 32768.0_16) ! (2^15, 2^15)
  result(n+18) = (2147483647.0_16, 2147483647.0_16) ! (2^31 - 1, 2^31 - 1)
  result(n+19) = rst10
  result(n+20) = rst11
  result(n+21) = rst12
  result(n+22) = rst13
  result(n+23) = rst14
  result(n+24) = rst15
  result(n+25) = rst16
  result(n+26) = rst17
  result(n+27) = rst18

  do i = 1, m
    if (result(i) .ne. expect(i)) STOP i
  enddo

  print *, 'PASS'

end program
