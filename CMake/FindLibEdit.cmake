if (LIBEDIT_INCLUDE_DIR AND LIBEDIT_LIBRARIES)
  set (LIBEDIT_FOUND TRUE)
else (LIBEDIT_INCLUDE_DIR AND LIBEDIT_LIBRARIES)

  find_path(LIBEDIT_INCLUDE_DIR
    NAMES histedit.h
    HINTS ${LIBEDIT_ROOT_DIR}/include)

  find_library(LIBEDIT_LIBRARIES
    NAMES edit
    HINTS ${LIBEDIT_ROOT_DIR}/lib)

  include(FindPackageHandleStandardArgs)

  find_package_handle_standard_args(Libedit
    DEFAULT_MSG
    LIBEDIT_LIBRARIES
    LIBEDIT_INCLUDE_DIR)

  mark_as_advanced(LIBEDIT_ROOT_DIR
    LIBEDIT_LIBRARIES
    LIBEDIT_INCLUDE_DIR)
endif (LIBEDIT_INCLUDE_DIR AND LIBEDIT_LIBRARIES)
