class SrHighViewCalculation:

    def __init__(self, payroll_amount, state, class_code):
        self.payroll_amount = int(payroll_amount)
        self.state = state
        self.class_code = class_code
        self.placement_fee = 100
        self.policy_fee = 100
        self.net_premium = 0

    def LCM_Set_For_State(self):
        if self.state == "PA" or self.state == "pa":
            LCM = 1.35
        elif self.state == "NJ" or self.state == "nj":
            LCM = 1
        else:
            LCM = 1.22
        return LCM

    def Get_Qualifying_Rates(self):
        qualifying_rates = {
            "Class_0005": 1.79,
            "Class_0006": 2.39,
            "Class_0035": 2.51,
            "Class_4611": 2.24,
            "Class_2172": 4.65,
            "Class_8017": 1.39,
            "Class_8018": 3.98,
        }

        try:
            qualifying_rates = qualifying_rates[self.class_code]
        except KeyError:
            print("Invalid Class Code")
            qualifying_rates = None

        return qualifying_rates

    def Calculate_HighView_Net_Premium(self):
        LCM = self.LCM_Set_For_State()
        qualifying_rates = self.Get_Qualifying_Rates()
        net_premium = round(qualifying_rates * LCM * self.payroll_amount) / 100
        self.net_premium = net_premium  # Update the net_premium attribute
        return self.net_premium

    def calculate_HighView_Total_Premium(self):
        self.net_premium = self.Calculate_HighView_Net_Premium()
        total_fees = calculate_policy_and_placement_fees(self.placement_fee, self.policy_fee)
        total_premium = self.net_premium + total_fees
        return total_premium


def calculate_policy_and_placement_fees(placement_fee, policy_fee):
    fees = {
        "placement_fee": placement_fee,
        "policy_fee": policy_fee
    }

    total_fees = calculate_total_premium(fees)
    return total_fees


def calculate_total_premium(fees):
    total_fees = fees["placement_fee"] + fees["policy_fee"]
    return total_fees
