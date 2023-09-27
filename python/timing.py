import time

perf = []
proc = []


def lap():
    perf.append(time.perf_counter())
    proc.append(time.process_time())


def finish():
    data = "\t".join(f"{b - a}" for a, b in zip(perf, perf[1:]))
    print(f"perf_counter\t{data}")
    data = "\t".join(f"{b - a}" for a, b in zip(proc, proc[1:]))
    print(f"process_time\t{data}")

