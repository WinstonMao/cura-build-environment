ExternalProject_Add(python-utils
    URL https://pypi.python.org/packages/30/95/d01fbd09ced38a16b7357a1d6cefe1327b9273885bffd6371cbec3e23af7/python-utils-2.3.0.tar.gz
    URL_MD5 1b2cfddd1c4f882f4870e431f4cdd7e6
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
    INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=pythonutils-install.log
    BUILD_IN_SOURCE 1
)
SetProjectDependencies(TARGET python-utils DEPENDS Python)
