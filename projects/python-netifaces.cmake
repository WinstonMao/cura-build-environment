ExternalProject_Add(PythonNetifaces
    URL https://pypi.python.org/packages/72/01/ba076082628901bca750bf53b322a8ff10c1d757dc29196a8e6082711c9d/netifaces-0.10.6.tar.gz
    URL_MD5 1d424cb5ef52907c5ab913011122a98b
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
    INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=netifaces-install.log
    BUILD_IN_SOURCE 1
)
SetProjectDependencies(TARGET PythonNetifaces DEPENDS Python)
