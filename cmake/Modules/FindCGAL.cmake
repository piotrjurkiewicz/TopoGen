# http://code.google.com/p/pixelstruct/source/browse/trunk/cmake/FindCGAL.cmake?r=29
#
# - Find CGAL
# adapted from
#   <http://pgrouting.postlbs.org/browser/trunk/cmake/FindCGAL.cmake?rev=53>
# Find the CGAL includes and client library
# This module defines
#  CGAL_INCLUDE_DIR: where to find CGAL.h
#  CGAL_LIBRARIES: the libraries needed to use CGAL
#  CGAL_FOUND: if false, do not try to use CGAL

IF(CGAL_INCLUDE_DIR)
    SET(CGAL_FOUND TRUE)
ELSE(CGAL_INCLUDE_DIR)
    FIND_PATH(CGAL_INCLUDE_DIR CGAL/basic.h
        /usr/include
        /usr/local/include
    )

    IF(CGAL_INCLUDE_DIR)
        SET(CGAL_FOUND TRUE)
        MESSAGE(STATUS "Found CGAL: ${CGAL_INCLUDE_DIR}, ${CGAL_LIBRARIES}")
    ELSE(CGAL_INCLUDE_DIR)
        SET(CGAL_FOUND FALSE)
        MESSAGE(STATUS "Not found CGAL: ${CGAL_INCLUDE_DIR}, ${CGAL_LIBRARIES}")
    ENDIF(CGAL_INCLUDE_DIR)

    MARK_AS_ADVANCED(CGAL_INCLUDE_DIR)
ENDIF(CGAL_INCLUDE_DIR)
