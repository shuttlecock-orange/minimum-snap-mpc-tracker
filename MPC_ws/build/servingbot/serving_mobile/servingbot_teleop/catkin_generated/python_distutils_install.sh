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

echo_and_run cd "/home/czj/MPC_ws/src/servingbot/serving_mobile/servingbot_teleop"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/czj/MPC_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/czj/MPC_ws/install/lib/python3/dist-packages:/home/czj/MPC_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/czj/MPC_ws/build" \
    "/home/czj/miniconda3/bin/python3" \
    "/home/czj/MPC_ws/src/servingbot/serving_mobile/servingbot_teleop/setup.py" \
     \
    build --build-base "/home/czj/MPC_ws/build/servingbot/serving_mobile/servingbot_teleop" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/czj/MPC_ws/install" --install-scripts="/home/czj/MPC_ws/install/bin"
