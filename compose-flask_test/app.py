import time
import redis

from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)

def get_contador():
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            reintentos -= 1
            time.sleep(0.5)

@app.route('/')
def hello():
    contador = get_contador()
    return "Hello World! I've been wisited {} times".format(contador)
