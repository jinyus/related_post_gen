import os
import time

perf = []
proc = []


def lap():
    perf.append(time.perf_counter_ns())
    proc.append(time.process_time_ns())


def finish():
    detailed = os.environ.get("DETAILED_PYTHON_PERF") == "1"
    if detailed:
        data = "\t".join(f"{(b - a)/1e9}" for a, b in zip(perf, perf[1:]))
        print(f"perf_counter\t{data}")
        data = "\t".join(f"{(b - a)/1e9}" for a, b in zip(proc, proc[1:]))
        print(f"process_time\t{data}")
    else:
        end = perf[-2]  # before final output
        start = perf[-3]  # before process and output
        print(f"Processing time (w/o IO): {(end - start)/1e9:.3f}s")
