#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/max/final-project/src/clover/clover_simulation"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/max/final-project/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/max/final-project/install/lib/python3/dist-packages:/home/max/final-project/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/max/final-project/build" \
    "/usr/bin/python3" \
    "/home/max/final-project/src/clover/clover_simulation/setup.py" \
     \
    build --build-base "/home/max/final-project/build/clover/clover_simulation" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/max/final-project/install" --install-scripts="/home/max/final-project/install/bin"
