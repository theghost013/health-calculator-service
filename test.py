import unittest
from health_utils import calculate_bmi, calculate_bmr


class TestHealthUtils(unittest.TestCase):
    def test_calculate_bmi(self):
        self.assertAlmostEqual(calculate_bmi(70, 1.75), 22.86, places=2)

    def test_calculate_bmr(self):
        self.assertAlmostEqual(calculate_bmr(70, 175, 30, "male"), 1695.66, delta=0.01)
        self.assertAlmostEqual(
            calculate_bmr(70, 175, 30, "female"), 1506.25, delta=0.01
        )


if __name__ == "__main__":
    unittest.main()
