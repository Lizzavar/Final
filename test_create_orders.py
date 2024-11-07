# Елизавета Варламова, 23-я когорта — Финальный проект. Инженер по тестированию плюс

import sender_stand_request
import data


def positive_assert():
   order_response = sender_stand_request.post_new_orders(data.order_body)
   track = order_response.json()["track"]
   return sender_stand_request.get_orders_track(track).status_code


def test_orders_track_code_200():
    assert positive_assert() == 200

