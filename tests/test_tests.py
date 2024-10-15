from random import randint

def test_test():
    # This test should always pass.
    assert 1 == 1

def test_randoms():
    # This test should fail randomly, roughly half the time.
    assert randint(0, 1) == 1

def test_fail():
    # This test should always fail.
    assert 1 == 0
