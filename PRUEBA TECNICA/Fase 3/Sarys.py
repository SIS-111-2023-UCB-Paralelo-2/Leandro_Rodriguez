import time

def start(mecha):
    time.sleep(0.1)
    print("Inicia perforación", mecha)

def stop(mecha):
    time.sleep(0.1)
    print("Detiene perforación", mecha)

def _in(mecha):
    time.sleep(0.1)
    print("Mecha al interior", mecha)

def _out(mecha):
    time.sleep(0.1)
    print("Mecha al exterior", mecha)

def control_perforation(mecha, distance_plants):
    pvc_speed = 40 / 30  # cm/segundo
    time_to_perforate = 1  # segundo

    while True:
        start(mecha)
        time_to_next_plant = distance_plants / pvc_speed
        time.sleep(time_to_next_plant - time_to_perforate)
        _in(mecha)
        time.sleep(time_to_perforate)
        _out(mecha)
        stop(mecha)

if __name__ == '__main__':
    control_perforation('mecha_1', 50)
