from json import load

import matplotlib.pyplot as plt
from numpy import reshape


def picture34():
    sum_V2IRate_marl = []
    sum_V2IRate_sarl = []
    sum_V2IRate_rand = []
    sum_V2IRate_dpra = []

    total_V2Vsuccess_marl = []
    total_V2Vsuccess_sarl = []
    total_V2Vsuccess_rand = []
    total_V2Vsuccess_dpra = []

    file = open('output.txt', 'r')
    file_data = file.readlines()

    rownum = 0
    for row in file_data:
        tmp_list = row.split(',')  # 切分行
        tmp_list.pop()
        # tmp_list[-1] = tmp_list[-1].replace('\n')
        print(tmp_list)
        print(rownum)
        for i in range(len(tmp_list)):
            if (rownum == 0):
                sum_V2IRate_marl.append(float(tmp_list[i]))
            if (rownum == 1):
                sum_V2IRate_sarl.append(float(tmp_list[i]))
            if (rownum == 2):
                sum_V2IRate_rand.append(float(tmp_list[i]))
            if (rownum == 3):
                sum_V2IRate_dpra.append(float(tmp_list[i]))
            if (rownum == 4):
                total_V2Vsuccess_marl.append(float(tmp_list[i]))
            if (rownum == 5):
                total_V2Vsuccess_sarl.append(float(tmp_list[i]))
            if (rownum == 6):
                total_V2Vsuccess_rand.append(float(tmp_list[i]))
            if (rownum == 7):
                total_V2Vsuccess_dpra.append(float(tmp_list[i]))
        rownum += 1

    # 画图
    x = range(1, 7)
    plt.grid(True)
    plt.plot(x, sum_V2IRate_marl, c='red', marker='o', label='Marl')
    plt.plot(x, sum_V2IRate_sarl, c='blue', marker='d', label='Sarl')
    plt.plot(x, sum_V2IRate_rand, c='black', marker='x', label='Random baseline')
    plt.plot(x, sum_V2IRate_dpra, c='black', linestyle='--', marker='v', label='Centralized maxV2V')
    # plt.title('Sum capacity performance of V2I links with varying V2V payload sizes B')
    plt.xlabel('N (x 1060 Bytes)')
    plt.ylabel('Sum capacity of all V2I links')
    plt.xlim(1,6)
    plt.ylim(25,45)
    plt.legend()
    plt.show()

    x = range(1, 7)
    plt.grid(True)
    plt.plot(x, total_V2Vsuccess_marl, c='red', marker='o', label='Marl')
    plt.plot(x, total_V2Vsuccess_sarl, c='blue', marker='d', label='Sarl')
    plt.plot(x, total_V2Vsuccess_rand, c='black', marker='x', label='Random baseline')
    plt.plot(x, total_V2Vsuccess_dpra, c='black', linestyle='--', marker='v', label='Centralized maxV2V')
    # plt.title('V2V payload transmission success probability with varying payload sizes B')
    plt.xlabel('N (x 1060 Bytes)')
    plt.ylabel('Average V2V payload transmission probability')
    plt.legend()
    plt.xlim(1,6)
    plt.ylim(0.5,1.1)
    plt.show()


picture34()

