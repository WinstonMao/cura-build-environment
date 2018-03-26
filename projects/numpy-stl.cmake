ExternalProject_Add(NumpySTL
    URL https://github.com/WoLpH/numpy-stl/releases/download/v2.4.1/numpy-stl-v2.4.1.tar.xz
    URL_MD5 d0282e04d5715df83b5edd499aedb951
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
    INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=numpystl-install.log
    BUILD_IN_SOURCE 1
)
SetProjectDependencies(TARGET NumpySTL DEPENDS NumPy python-utils)
