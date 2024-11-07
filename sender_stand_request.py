import configuration
import requests
import data

def post_new_orders(order_body):
    return requests.post(configuration.URL_SERVICE + configuration.CREATE_ORDERS,
                          json=order_body,
                          headers=data.headers)
def get_orders_track(track):
    return requests.get(configuration.URL_SERVICE + configuration.ORDERS_TRACK + str(track),
                        headers=data.headers)
