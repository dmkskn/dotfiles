def _init():
    import time
    import types
    import inspect
    import datetime
    import builtins

    pocket = types.ModuleType("pocket")
    pocket.tt = time.time
    pocket.dt = datetime.datetime
    pocket.i = inspect
    builtins.p = pocket


_init()
del _init
