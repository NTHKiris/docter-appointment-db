INSERT INTO
    MedicalDepartments (
        DepartmentID,
        Name,
        Description,
        HeadOfDepartment,
        Phone,
        Email
    )
VALUES (
        7,
        'Tiêu hóa',
        'Chẩn đoán và điều trị các bệnh về đường tiêu hóa',
        'TS.BS. Nguyễn Văn Hùng',
        '0241111117',
        'gastro@hospital.com'
    ),
    (
        8,
        'Thần kinh',
        'Chẩn đoán và điều trị các bệnh về hệ thần kinh',
        'PGS.TS. Trần Thị Mai Hoa',
        '024111118',
        'neuro@hospital.com'
    ),
    (
        9,
        'Da liễu',
        'Chăm sóc và điều trị các bệnh về da',
        'BSCKII. Lê Thị Thúy',
        '024111119',
        'derma@hospital.com'
    ),
    (
        10,
        'Mắt',
        'Khám và điều trị các bệnh về mắt',
        'TS.BS. Phạm Văn Đức',
        '0241111120',
        'eye@hospital.com'
    ),
    (
        11,
        'Tai Mũi Họng',
        'Chẩn đoán và điều trị các bệnh về tai mũi họng',
        'BSCKII. Nguyễn Thị Lan Anh',
        '0241111121',
        'ent@hospital.com'
    ),
    (
        12,
        'Răng Hàm Mặt',
        'Khám và điều trị các bệnh về răng, hàm, mặt',
        'TS.BS. Trần Văn Cường',
        '024111122',
        'dental@hospital.com'
    ),
    (
        13,
        'Thận - Tiết niệu',
        'Chẩn đoán và điều trị các bệnh về thận và hệ tiết niệu',
        'PGS.TS. Đỗ Văn Nam',
        '024111123',
        'urology@hospital.com'
    ),
    (
        14,
        'Tâm thần',
        'Chẩn đoán và điều trị các rối loạn tâm thần',
        'TS.BS. Hoàng Thị Minh',
        '0241111124',
        'psych@hospital.com'
    ),
    (
        15,
        'Phục hồi chức năng',
        'Chăm sóc và phục hồi chức năng cho bệnh nhân',
        'BSCKII. Nguyễn Văn Long',
        '0241111125',
        'rehab@hospital.com'
    ),
    (
        16,
        'Y học thể thao',
        'Chăm sóc sức khỏe cho vận động viên và người tập thể thao',
        'TS.BS. Lê Văn Hùng',
        '024111126',
        'sportsmed@hospital.com'
    ),
    (
        17,
        'Y học hạt nhân',
        'Sử dụng đồng vị phóng xạ trong chẩn đoán và điều trị',
        'TS.BS. Trần Thị Hạnh',
        '024111127',
        'nuclear@hospital.com'
    ),
    (
        18,
        'Chẩn đoán hình ảnh',
        'Thực hiện các kỹ thuật chẩn đoán hình ảnh',
        'BSCKII. Phạm Thị Mai',
        '0241111128',
        'imaging@hospital.com'
    ),
    (
        19,
        'Xét nghiệm',
        'Thực hiện các xét nghiệm chẩn đoán và theo dõi điều trị',
        'ThS. Nguyễn Văn Tú',
        '024111129',
        'lab@hospital.com'
    ),
    (
        20,
        'Dinh dưỡng',
        'Tư vấn và điều trị các vấn đề dinh dưỡng',
        'ThS.BS. Lê Thị Hương',
        '0241111130',
        'nutrition@hospital.com'
    ),
    (
        21,
        'Y học cổ truyền',
        'Điều trị bằng các phương pháp y học cổ truyền',
        'BSCKII. Trần Văn Minh',
        '024111131',
        'tcm@hospital.com'
    ),
    (
        22,
        'Phẫu thuật tổng quát',
        'Thực hiện các phẫu thuật tổng quát',
        'PGS.TS. Nguyễn Văn Dũng',
        '0241111132',
        'gsurgery@hospital.com'
    ),
    (
        23,
        'Phẫu thuật tim mạch',
        'Thực hiện các phẫu thuật tim mạch',
        'TS.BS. Lê Văn Quang',
        '024111133',
        'cardiosurgery@hospital.com'
    ),
    (
        24,
        'Phẫu thuật thần kinh',
        'Thực hiện các phẫu thuật thần kinh',
        'PGS.TS. Trần Thị Hoa',
        '024111134',
        'neurosurgery@hospital.com'
    ),
    (
        25,
        'Phẫu thuật tạo hình',
        'Thực hiện các phẫu thuật tạo hình thẩm mỹ',
        'TS.BS. Nguyễn Thị Lan',
        '0241111135',
        'plasticsurgery@hospital.com'
    ),
    (
        26,
        'Phẫu thuật chấn thương chỉnh hình',
        'Thực hiện các phẫu thuật chấn thương chỉnh hình',
        'TS.BS. Phạm Văn Hùng',
        '0241111136',
        'orthosurgery@hospital.com'

INSERT INTO
    HospitalDepartments (
        HospitalId,
        DepartmentId,
        Address
    )
VALUES (
        104,
        1,
        'Khoa Tim mạch - Phòng 101'
    ),
    (
        104,
        2,
        'Khoa Nội tiết - Phòng 102'
    ),
    (
        104,
        3,
        'Khoa Hô hấp - Phòng 103'
    ),
    (
        104,
        7,
        'Khoa Tiêu hóa - Phòng 104'
    ),
    (
        104,
        8,
        'Khoa Thần kinh - Phòng 105'
    ),
    (
        105,
        1,
        'Khoa Tim mạch - Phòng 201'
    ),
    (
        105,
        2,
        'Khoa Nội tiết - Phòng 202'
    ),
    (
        105,
        3,
        'Khoa Hô hấp - Phòng 203'
    ),
    (
        105,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 204'
    ),
    (
        105,
        7,
        'Khoa Tiêu hóa - Phòng 205'
    ),
    (
        106,
        1,
        'Khoa Tim mạch - Phòng 301'
    ),
    (
        106,
        2,
        'Khoa Nội tiết - Phòng 302'
    ),
    (
        106,
        3,
        'Khoa Hô hấp - Phòng 303'
    ),
    (
        106,
        10,
        'Khoa Mắt - Phòng 304'
    ),
    (
        106,
        11,
        'Khoa Tai Mũi Họng - Phòng 305'
    ),
    (
        107,
        1,
        'Khoa Tim mạch - Phòng 401'
    ),
    (
        107,
        3,
        'Khoa Hô hấp - Phòng 402'
    ),
    (
        107,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 403'
    ),
    (
        107,
        12,
        'Khoa Răng Hàm Mặt - Phòng 404'
    ),
    (
        108,
        2,
        'Khoa Nội tiết - Phòng 501'
    ),
    (
        108,
        3,
        'Khoa Hô hấp - Phòng 502'
    ),
    (
        108,
        5,
        'Khoa Cơ xương khớp - Phòng 503'
    ),
    (
        108,
        6,
        'Khoa Nội tổng quát - Phòng 504'
    ),
    (
        109,
        1,
        'Khoa Tim mạch - Phòng 601'
    ),
    (
        109,
        2,
        'Khoa Nội tiết - Phòng 602'
    ),
    (
        109,
        8,
        'Khoa Thần kinh - Phòng 603'
    ),
    (
        109,
        9,
        'Khoa Da liễu - Phòng 604'
    ),
    (
        110,
        1,
        'Khoa Tim mạch - Phòng 701'
    ),
    (
        110,
        3,
        'Khoa Hô hấp - Phòng 702'
    ),
    (
        110,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 703'
    ),
    (
        110,
        10,
        'Khoa Mắt - Phòng 704'
    ),
    (
        111,
        1,
        'Khoa Tim mạch - Phòng 801'
    ),
    (
        111,
        2,
        'Khoa Nội tiết - Phòng 802'
    ),
    (
        111,
        3,
        'Khoa Hô hấp - Phòng 803'
    ),
    (
        111,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 804'
    ),
    (
        111,
        5,
        'Khoa Cơ xương khớp - Phòng 805'
    ),
    (
        112,
        1,
        'Khoa Tim mạch - Phòng 901'
    ),
    (
        112,
        3,
        'Khoa Hô hấp - Phòng 902'
    ),
    (
        112,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 903'
    ),
    (
        112,
        22,
        'Khoa Phẫu thuật tổng quát - Phòng 904'
    ),
    (
        112,
        23,
        'Khoa Phẫu thuật tim mạch - Phòng 905'
    ),
    (
        113,
        1,
        'Khoa Tim mạch - Phòng 1001'
    ),
    (
        113,
        2,
        'Khoa Nội tiết - Phòng 1002'
    ),
    (
        113,
        7,
        'Khoa Tiêu hóa - Phòng 1003'
    ),
    (
        113,
        13,
        'Khoa Thận - Tiết niệu - Phòng 1004'
    ),
    (
        113,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 1005'
    ),
    (
        114,
        5,
        'Khoa Cơ xương khớp - Phòng 1101'
    ),
    (
        114,
        6,
        'Khoa Nội tổng quát - Phòng 1102'
    ),
    (
        114,
        15,
        'Khoa Phục hồi chức năng - Phòng 1103'
    ),
    (
        114,
        20,
        'Khoa Dinh dưỡng - Phòng 1104'
    ),
    (
        115,
        9,
        'Khoa Da liễu - Phòng 1201'
    ),
    (
        115,
        19,
        'Khoa Xét nghiệm - Phòng 1202'
    ),
    (
        115,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 1203'
    ),
    (
        116,
        10,
        'Khoa Mắt - Phòng 1301'
    ),
    (
        116,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 1302'
    ),
    (
        116,
        19,
        'Khoa Xét nghiệm - Phòng 1303'
    ),
    (
        117,
        6,
        'Khoa Nội tổng quát - Phòng 1401'
    ),
    (
        117,
        15,
        'Khoa Phục hồi chức năng - Phòng 1402'
    ),
    (
        117,
        20,
        'Khoa Dinh dưỡng - Phòng 1403'
    ),
    (
        118,
        1,
        'Khoa Tim mạch - Phòng 1501'
    ),
    (
        118,
        2,
        'Khoa Nội tiết - Phòng 1502'
    ),
    (
        118,
        3,
        'Khoa Hô hấp - Phòng 1503'
    ),
    (
        118,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 1504'
    ),
    (
        118,
        8,
        'Khoa Thần kinh - Phòng 1505'
    ),
    (
        119,
        1,
        'Khoa Tim mạch - Phòng 1601'
    ),
    (
        119,
        3,
        'Khoa Hô hấp - Phòng 1602'
    ),
    (
        119,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 1603'
    ),
    (
        119,
        24,
        'Khoa Phẫu thuật thần kinh - Phòng 1604'
    ),
    (
        120,
        1,
        'Khoa Tim mạch - Phòng 1701'
    ),
    (
        120,
        2,
        'Khoa Nội tiết - Phòng 1702'
    ),
    (
        120,
        3,
        'Khoa Hô hấp - Phòng 1703'
    ),
    (
        120,
        6,
        'Khoa Nội tổng quát - Phòng 1704'
    ),
    (
        121,
        1,
        'Khoa Tim mạch - Phòng 1801'
    ),
    (
        121,
        2,
        'Khoa Nội tiết - Phòng 1802'
    ),
    (
        121,
        3,
        'Khoa Hô hấp - Phòng 1803'
    ),
    (
        121,
        7,
        'Khoa Tiêu hóa - Phòng 1804'
    ),
    (
        122,
        1,
        'Khoa Tim mạch - Phòng 1901'
    ),
    (
        122,
        3,
        'Khoa Hô hấp - Phòng 1902'
    ),
    (
        122,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 1903'
    ),
    (
        122,
        6,
        'Khoa Nội tổng quát - Phòng 1904'
    ),
    (
        123,
        1,
        'Khoa Tim mạch - Phòng 2001'
    ),
    (
        123,
        2,
        'Khoa Nội tiết - Phòng 2002'
    ),
    (
        123,
        3,
        'Khoa Hô hấp - Phòng 2003'
    ),
    (
        123,
        5,
        'Khoa Cơ xương khớp - Phòng 2004'
    ),
    (
        124,
        2,
        'Khoa Nội tiết - Phòng 2101'
    ),
    (
        124,
        3,
        'Khoa Hô hấp - Phòng 2102'
    ),
    (
        124,
        6,
        'Khoa Nội tổng quát - Phòng 2103'
    ),
    (
        124,
        7,
        'Khoa Tiêu hóa - Phòng 2104'
    ),
    (
        125,
        1,
        'Khoa Tim mạch - Phòng 2201'
    ),
    (
        125,
        2,
        'Khoa Nội tiết - Phòng 2202'
    ),
    (
        125,
        3,
        'Khoa Hô hấp - Phòng 2203'
    ),
    (
        125,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 2204'
    ),
    (
        126,
        1,
        'Khoa Tim mạch - Phòng 2301'
    ),
    (
        126,
        3,
        'Khoa Hô hấp - Phòng 2302'
    ),
    (
        126,
        5,
        'Khoa Cơ xương khớp - Phòng 2303'
    ),
    (
        126,
        6,
        'Khoa Nội tổng quát - Phòng 2304'
    ),
    (
        127,
        1,
        'Khoa Tim mạch - Phòng 2401'
    ),
    (
        127,
        2,
        'Khoa Nội tiết - Phòng 2402'
    ),
    (
        127,
        3,
        'Khoa Hô hấp - Phòng 2403'
    ),
    (
        127,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 2404'
    ),
    (
        128,
        1,
        'Khoa Tim mạch - Phòng 2501'
    ),
    (
        128,
        2,
        'Khoa Nội tiết - Phòng 2502'
    ),
    (
        128,
        3,
        'Khoa Hô hấp - Phòng 2503'
    ),
    (
        128,
        6,
        'Khoa Nội tổng quát - Phòng 2504'
    ),
    (
        129,
        1,
        'Khoa Tim mạch - Phòng 2601'
    ),
    (
        129,
        2,
        'Khoa Nội tiết - Phòng 2602'
    ),
    (
        129,
        3,
        'Khoa Hô hấp - Phòng 2603'
    ),
    (
        129,
        7,
        'Khoa Tiêu hóa - Phòng 2604'
    ),
    (
        130,
        2,
        'Khoa Nội tiết - Phòng 2701'
    ),
    (
        130,
        3,
        'Khoa Hô hấp - Phòng 2702'
    ),
    (
        130,
        6,
        'Khoa Nội tổng quát - Phòng 2703'
    ),
    (
        130,
        8,
        'Khoa Thần kinh - Phòng 2704'
    ),
    (
        131,
        1,
        'Khoa Tim mạch - Phòng 2801'
    ),
    (
        131,
        3,
        'Khoa Hô hấp - Phòng 2802'
    ),
    (
        131,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 2803'
    ),
    (
        131,
        5,
        'Khoa Cơ xương khớp - Phòng 2804'
    ),
    (
        132,
        1,
        'Khoa Tim mạch - Phòng 2901'
    ),
    (
        132,
        2,
        'Khoa Nội tiết - Phòng 2902'
    ),
    (
        132,
        3,
        'Khoa Hô hấp - Phòng 2903'
    ),
    (
        132,
        6,
        'Khoa Nội tổng quát - Phòng 2904'
    ),
    (
        133,
        1,
        'Khoa Tim mạch - Phòng 3001'
    ),
    (
        133,
        2,
        'Khoa Nội tiết - Phòng 3002'
    ),
    (
        133,
        3,
        'Khoa Hô hấp - Phòng 3003'
    ),
    (
        133,
        7,
        'Khoa Tiêu hóa - Phòng 3004'
    ),
    (
        134,
        1,
        'Khoa Tim mạch - Phòng 3101'
    ),
    (
        134,
        3,
        'Khoa Hô hấp - Phòng 3102'
    ),
    (
        134,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 3103'
    ),
    (
        134,
        6,
        'Khoa Nội tổng quát - Phòng 3104'
    ),
    (
        135,
        1,
        'Khoa Tim mạch - Phòng 3201'
    ),
    (
        135,
        2,
        'Khoa Nội tiết - Phòng 3202'
    ),
    (
        135,
        3,
        'Khoa Hô hấp - Phòng 3203'
    ),
    (
        135,
        5,
        'Khoa Cơ xương khớp - Phòng 3204'
    ),
    (
        136,
        2,
        'Khoa Nội tiết - Phòng 3301'
    ),
    (
        136,
        3,
        'Khoa Hô hấp - Phòng 3302'
    ),
    (
        136,
        6,
        'Khoa Nội tổng quát - Phòng 3303'
    ),
    (
        136,
        8,
        'Khoa Thần kinh - Phòng 3304'
    ),
    (
        137,
        1,
        'Khoa Tim mạch - Phòng 3401'
    ),
    (
        137,
        2,
        'Khoa Nội tiết - Phòng 3402'
    ),
    (
        137,
        3,
        'Khoa Hô hấp - Phòng 3403'
    ),
    (
        137,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 3404'
    ),
    (
        138,
        1,
        'Khoa Tim mạch - Phòng 3501'
    ),
    (
        138,
        3,
        'Khoa Hô hấp - Phòng 3502'
    ),
    (
        138,
        6,
        'Khoa Nội tổng quát - Phòng 3503'
    ),
    (
        138,
        7,
        'Khoa Tiêu hóa - Phòng 3504'
    ),
    (
        139,
        1,
        'Khoa Tim mạch - Phòng 3601'
    ),
    (
        139,
        2,
        'Khoa Nội tiết - Phòng 3602'
    ),
    (
        139,
        3,
        'Khoa Hô hấp - Phòng 3603'
    ),
    (
        139,
        5,
        'Khoa Cơ xương khớp - Phòng 3604'
    ),
    (
        140,
        2,
        'Khoa Nội tiết - Phòng 3701'
    ),
    (
        140,
        3,
        'Khoa Hô hấp - Phòng 3702'
    ),
    (
        140,
        6,
        'Khoa Nội tổng quát - Phòng 3703'
    ),
    (
        140,
        8,
        'Khoa Thần kinh - Phòng 3704'
    ),
    (
        141,
        1,
        'Khoa Tim mạch - Phòng 3801'
    ),
    (
        141,
        2,
        'Khoa Nội tiết - Phòng 3802'
    ),
    (
        141,
        3,
        'Khoa Hô hấp - Phòng 3803'
    ),
    (
        141,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 3804'
    ),
    (
        142,
        1,
        'Khoa Tim mạch - Phòng 3901'
    ),
    (
        142,
        2,
        'Khoa Nội tiết - Phòng 3902'
    ),
    (
        142,
        3,
        'Khoa Hô hấp - Phòng 3903'
    ),
    (
        142,
        7,
        'Khoa Tiêu hóa - Phòng 3904'
    ),
    (
        143,
        1,
        'Khoa Tim mạch - Phòng 4001'
    ),
    (
        143,
        3,
        'Khoa Hô hấp - Phòng 4002'
    ),
    (
        143,
        5,
        'Khoa Cơ xương khớp - Phòng 4003'
    ),
    (
        143,
        6,
        'Khoa Nội tổng quát - Phòng 4004'
    ),
    (
        144,
        1,
        'Khoa Tim mạch - Phòng 4101'
    ),
    (
        144,
        2,
        'Khoa Nội tiết - Phòng 4102'
    ),
    (
        144,
        3,
        'Khoa Hô hấp - Phòng 4103'
    ),
    (
        144,
        8,
        'Khoa Thần kinh - Phòng 4104'
    ),
    (
        145,
        2,
        'Khoa Nội tiết - Phòng 4201'
    ),
    (
        145,
        3,
        'Khoa Hô hấp - Phòng 4202'
    ),
    (
        145,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 4203'
    ),
    (
        145,
        6,
        'Khoa Nội tổng quát - Phòng 4204'
    ),
    (
        146,
        1,
        'Khoa Tim mạch - Phòng 4301'
    ),
    (
        146,
        3,
        'Khoa Hô hấp - Phòng 4302'
    ),
    (
        146,
        5,
        'Khoa Cơ xương khớp - Phòng 4303'
    ),
    (
        146,
        7,
        'Khoa Tiêu hóa - Phòng 4304'
    ),
    (
        147,
        1,
        'Khoa Tim mạch - Phòng 4401'
    ),
    (
        147,
        2,
        'Khoa Nội tiết - Phòng 4402'
    ),
    (
        147,
        3,
        'Khoa Hô hấp - Phòng 4403'
    ),
    (
        147,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 4404'
    ),
    (
        148,
        1,
        'Khoa Tim mạch - Phòng 4501'
    ),
    (
        148,
        2,
        'Khoa Nội tiết - Phòng 4502'
    ),
    (
        148,
        3,
        'Khoa Hô hấp - Phòng 4503'
    ),
    (
        148,
        6,
        'Khoa Nội tổng quát - Phòng 4504'
    ),
    (
        149,
        1,
        'Khoa Tim mạch - Phòng 4601'
    ),
    (
        149,
        2,
        'Khoa Nội tiết - Phòng 4602'
    ),
    (
        149,
        3,
        'Khoa Hô hấp - Phòng 4603'
    ),
    (
        149,
        8,
        'Khoa Thần kinh - Phòng 4604'
    ),
    (
        150,
        2,
        'Khoa Nội tiết - Phòng 4701'
    ),
    (
        150,
        3,
        'Khoa Hô hấp - Phòng 4702'
    ),
    (
        150,
        5,
        'Khoa Cơ xương khớp - Phòng 4703'
    ),
    (
        150,
        6,
        'Khoa Nội tổng quát - Phòng 4704'
    ),
    (
        151,
        1,
        'Khoa Tim mạch - Phòng 4801'
    ),
    (
        151,
        3,
        'Khoa Hô hấp - Phòng 4802'
    ),
    (
        151,
        7,
        'Khoa Tiêu hóa - Phòng 4803'
    ),
    (
        151,
        9,
        'Khoa Da liễu - Phòng 4804'
    ),
    (
        152,
        2,
        'Khoa Nội tiết - Phòng 4901'
    ),
    (
        152,
        3,
        'Khoa Hô hấp - Phòng 4902'
    ),
    (
        152,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 4903'
    ),
    (
        152,
        6,
        'Khoa Nội tổng quát - Phòng 4904'
    ),
    (
        153,
        1,
        'Khoa Tim mạch - Phòng 5001'
    ),
    (
        153,
        2,
        'Khoa Nội tiết - Phòng 5002'
    ),
    (
        153,
        3,
        'Khoa Hô hấp - Phòng 5003'
    ),
    (
        153,
        8,
        'Khoa Thần kinh - Phòng 5004'
    ),
    (
        154,
        1,
        'Khoa Tim mạch - Phòng 5101'
    ),
    (
        154,
        3,
        'Khoa Hô hấp - Phòng 5102'
    ),
    (
        154,
        5,
        'Khoa Cơ xương khớp - Phòng 5103'
    ),
    (
        154,
        6,
        'Khoa Nội tổng quát - Phòng 5104'
    ),
    (
        155,
        2,
        'Khoa Nội tiết - Phòng 5201'
    ),
    (
        155,
        3,
        'Khoa Hô hấp - Phòng 5202'
    ),
    (
        155,
        7,
        'Khoa Tiêu hóa - Phòng 5203'
    ),
    (
        155,
        9,
        'Khoa Da liễu - Phòng 5204'
    ),
    (
        156,
        1,
        'Khoa Tim mạch - Phòng 5301'
    ),
    (
        156,
        2,
        'Khoa Nội tiết - Phòng 5302'
    ),
    (
        156,
        3,
        'Khoa Hô hấp - Phòng 5303'
    ),
    (
        156,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 5304'
    ),
    (
        157,
        1,
        'Khoa Tim mạch - Phòng 5401'
    ),
    (
        157,
        2,
        'Khoa Nội tiết - Phòng 5402'
    ),
    (
        157,
        3,
        'Khoa Hô hấp - Phòng 5403'
    ),
    (
        157,
        6,
        'Khoa Nội tổng quát - Phòng 5404'
    ),
    (
        158,
        1,
        'Khoa Tim mạch - Phòng 5501'
    ),
    (
        158,
        3,
        'Khoa Hô hấp - Phòng 5502'
    ),
    (
        158,
        8,
        'Khoa Thần kinh - Phòng 5503'
    ),
    (
        158,
        10,
        'Khoa Mắt - Phòng 5504'
    ),
    (
        159,
        2,
        'Khoa Nội tiết - Phòng 5601'
    ),
    (
        159,
        3,
        'Khoa Hô hấp - Phòng 5602'
    ),
    (
        159,
        5,
        'Khoa Cơ xương khớp - Phòng 5603'
    ),
    (
        159,
        6,
        'Khoa Nội tổng quát - Phòng 5604'
    ),
    (
        160,
        1,
        'Khoa Tim mạch - Phòng 5701'
    ),
    (
        160,
        2,
        'Khoa Nội tiết - Phòng 5702'
    ),
    (
        160,
        3,
        'Khoa Hô hấp - Phòng 5703'
    ),
    (
        160,
        7,
        'Khoa Tiêu hóa - Phòng 5704'
    ),
    (
        161,
        1,
        'Khoa Tim mạch - Phòng 5801'
    ),
    (
        161,
        3,
        'Khoa Hô hấp - Phòng 5802'
    ),
    (
        161,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 5803'
    ),
    (
        161,
        9,
        'Khoa Da liễu - Phòng 5804'
    ),
    (
        162,
        1,
        'Khoa Tim mạch - Phòng 5901'
    ),
    (
        162,
        2,
        'Khoa Nội tiết - Phòng 5902'
    ),
    (
        162,
        3,
        'Khoa Hô hấp - Phòng 5903'
    ),
    (
        162,
        10,
        'Khoa Mắt - Phòng 5904'
    ),
    (
        163,
        1,
        'Khoa Tim mạch - Phòng 6001'
    ),
    (
        163,
        2,
        'Khoa Nội tiết - Phòng 6002'
    ),
    (
        163,
        5,
        'Khoa Cơ xương khớp - Phòng 6003'
    ),
    (
        163,
        11,
        'Khoa Tai Mũi Họng - Phòng 6004'
    ),
    (
        164,
        1,
        'Khoa Tim mạch - Phòng 6101'
    ),
    (
        164,
        2,
        'Khoa Nội tiết - Phòng 6102'
    ),
    (
        164,
        3,
        'Khoa Hô hấp - Phòng 6103'
    ),
    (
        164,
        6,
        'Khoa Nội tổng quát - Phòng 6104'
    ),
    (
        165,
        1,
        'Khoa Tim mạch - Phòng 6201'
    ),
    (
        165,
        2,
        'Khoa Nội tiết - Phòng 6202'
    ),
    (
        165,
        3,
        'Khoa Hô hấp - Phòng 6203'
    ),
    (
        165,
        12,
        'Khoa Răng Hàm Mặt - Phòng 6204'
    ),
    (
        166,
        1,
        'Khoa Tim mạch - Phòng 6301'
    ),
    (
        166,
        3,
        'Khoa Hô hấp - Phòng 6302'
    ),
    (
        166,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 6303'
    ),
    (
        166,
        8,
        'Khoa Thần kinh - Phòng 6304'
    ),
    (
        167,
        1,
        'Khoa Tim mạch - Phòng 6401'
    ),
    (
        167,
        2,
        'Khoa Nội tiết - Phòng 6402'
    ),
    (
        167,
        3,
        'Khoa Hô hấp - Phòng 6403'
    ),
    (
        167,
        10,
        'Khoa Mắt - Phòng 6404'
    ),
    (
        168,
        1,
        'Khoa Tim mạch - Phòng 6501'
    ),
    (
        168,
        3,
        'Khoa Hô hấp - Phòng 6502'
    ),
    (
        168,
        6,
        'Khoa Nội tổng quát - Phòng 6503'
    ),
    (
        168,
        9,
        'Khoa Da liễu - Phòng 6504'
    ),
    (
        169,
        1,
        'Khoa Tim mạch - Phòng 6601'
    ),
    (
        169,
        2,
        'Khoa Nội tiết - Phòng 6602'
    ),
    (
        169,
        3,
        'Khoa Hô hấp - Phòng 6603'
    ),
    (
        169,
        8,
        'Khoa Thần kinh - Phòng 6604'
    ),
    (
        170,
        1,
        'Khoa Tim mạch - Phòng 6701'
    ),
    (
        170,
        2,
        'Khoa Nội tiết - Phòng 6702'
    ),
    (
        170,
        3,
        'Khoa Hô hấp - Phòng 6703'
    ),
    (
        170,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 6704'
    ),
    (
        171,
        1,
        'Khoa Tim mạch - Phòng 6801'
    ),
    (
        171,
        3,
        'Khoa Hô hấp - Phòng 6802'
    ),
    (
        171,
        6,
        'Khoa Nội tổng quát - Phòng 6803'
    ),
    (
        171,
        7,
        'Khoa Tiêu hóa - Phòng 6804'
    ),
    (
        172,
        1,
        'Khoa Tim mạch - Phòng 6901'
    ),
    (
        172,
        2,
        'Khoa Nội tiết - Phòng 6902'
    ),
    (
        172,
        3,
        'Khoa Hô hấp - Phòng 6903'
    ),
    (
        172,
        5,
        'Khoa Cơ xương khớp - Phòng 6904'
    ),
    (
        173,
        1,
        'Khoa Tim mạch - Phòng 7001'
    ),
    (
        173,
        3,
        'Khoa Hô hấp - Phòng 7002'
    ),
    (
        173,
        6,
        'Khoa Nội tổng quát - Phòng 7003'
    ),
    (
        173,
        8,
        'Khoa Thần kinh - Phòng 7004'
    ),
    (
        174,
        3,
        'Khoa Hô hấp - Phòng 7101'
    ),
    (
        174,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 7102'
    ),
    (
        174,
        5,
        'Khoa Cơ xương khớp - Phòng 7103'
    ),
    (
        174,
        26,
        'Khoa Phẫu thuật chấn thương chỉnh hình - Phòng 7104'
    ),
    (
        175,
        9,
        'Khoa Da liễu - Phòng 7201'
    ),
    (
        175,
        12,
        'Khoa Răng Hàm Mặt - Phòng 7202'
    ),
    (
        175,
        19,
        'Khoa Xét nghiệm - Phòng 7203'
    ),
    (
        176,
        11,
        'Khoa Tai Mũi Họng - Phòng 7301'
    ),
    (
        176,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 7302'
    ),
    (
        176,
        19,
        'Khoa Xét nghiệm - Phòng 7303'
    ),
    (
        177,
        9,
        'Khoa Da liễu - Phòng 7401'
    ),
    (
        177,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 7402'
    ),
    (
        177,
        19,
        'Khoa Xét nghiệm - Phòng 7403'
    ),
    (
        178,
        8,
        'Khoa Thần kinh - Phòng 7501'
    ),
    (
        178,
        14,
        'Khoa Tâm thần - Phòng 7502'
    ),
    (
        178,
        19,
        'Khoa Xét nghiệm - Phòng 7503'
    ),
    (
        179,
        6,
        'Khoa Nội tổng quát - Phòng 7601'
    ),
    (
        179,
        15,
        'Khoa Phục hồi chức năng - Phòng 7602'
    ),
    (
        180,
        6,
        'Khoa Nội tổng quát - Phòng 7701'
    ),
    (
        180,
        15,
        'Khoa Phục hồi chức năng - Phòng 7702'
    ),
    (
        180,
        20,
        'Khoa Dinh dưỡng - Phòng 7703'
    ),
    (
        181,
        5,
        'Khoa Cơ xương khớp - Phòng 7801'
    ),
    (
        181,
        6,
        'Khoa Nội tổng quát - Phòng 7802'
    ),
    (
        181,
        15,
        'Khoa Phục hồi chức năng - Phòng 7803'
    ),
    (
        182,
        2,
        'Khoa Nội tiết - Phòng 7901'
    ),
    (
        182,
        3,
        'Khoa Hô hấp - Phòng 7902'
    ),
    (
        182,
        6,
        'Khoa Nội tổng quát - Phòng 7903'
    ),
    (
        183,
        10,
        'Khoa Mắt - Phòng 8001'
    ),
    (
        183,
        18,
        'Khoa Chẩn đoán hình ảnh - Phòng 8002'
    ),
    (
        183,
        19,
        'Khoa Xét nghiệm - Phòng 8003'
    ),
    (
        184,
        1,
        'Khoa Tim mạch - Phòng 8101'
    ),
    (
        184,
        2,
        'Khoa Nội tiết - Phòng 8102'
    ),
    (
        184,
        3,
        'Khoa Hô hấp - Phòng 8103'
    ),
    (
        184,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 8104'
    ),
    (
        185,
        1,
        'Khoa Tim mạch - Phòng 8201'
    ),
    (
        185,
        2,
        'Khoa Nội tiết - Phòng 8202'
    ),
    (
        185,
        3,
        'Khoa Hô hấp - Phòng 8203'
    ),
    (
        185,
        7,
        'Khoa Tiêu hóa - Phòng 8204'
    ),
    (
        186,
        1,
        'Khoa Tim mạch - Phòng 8301'
    ),
    (
        186,
        3,
        'Khoa Hô hấp - Phòng 8302'
    ),
    (
        186,
        5,
        'Khoa Cơ xương khớp - Phòng 8303'
    ),
    (
        186,
        6,
        'Khoa Nội tổng quát - Phòng 8304'
    ),
    (
        187,
        2,
        'Khoa Nội tiết - Phòng 8401'
    ),
    (
        187,
        3,
        'Khoa Hô hấp - Phòng 8402'
    ),
    (
        187,
        6,
        'Khoa Nội tổng quát - Phòng 8403'
    ),
    (
        187,
        8,
        'Khoa Thần kinh - Phòng 8404'
    ),
    (
        188,
        1,
        'Khoa Tim mạch - Phòng 8501'
    ),
    (
        188,
        2,
        'Khoa Nội tiết - Phòng 8502'
    ),
    (
        188,
        3,
        'Khoa Hô hấp - Phòng 8503'
    ),
    (
        188,
        7,
        'Khoa Tiêu hóa - Phòng 8504'
    ),
    (
        189,
        1,
        'Khoa Tim mạch - Phòng 8601'
    ),
    (
        189,
        3,
        'Khoa Hô hấp - Phòng 8602'
    ),
    (
        189,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 8603'
    ),
    (
        189,
        5,
        'Khoa Cơ xương khớp - Phòng 8604'
    ),
    (
        190,
        1,
        'Khoa Tim mạch - Phòng 8701'
    ),
    (
        190,
        2,
        'Khoa Nội tiết - Phòng 8702'
    ),
    (
        190,
        3,
        'Khoa Hô hấp - Phòng 8703'
    ),
    (
        190,
        6,
        'Khoa Nội tổng quát - Phòng 8704'
    ),
    (
        191,
        1,
        'Khoa Tim mạch - Phòng 8801'
    ),
    (
        191,
        2,
        'Khoa Nội tiết - Phòng 8802'
    ),
    (
        191,
        3,
        'Khoa Hô hấp - Phòng 8803'
    ),
    (
        191,
        8,
        'Khoa Thần kinh - Phòng 8804'
    ),
    (
        192,
        2,
        'Khoa Nội tiết - Phòng 8901'
    ),
    (
        192,
        3,
        'Khoa Hô hấp - Phòng 8902'
    ),
    (
        192,
        5,
        'Khoa Cơ xương khớp - Phòng 8903'
    ),
    (
        192,
        6,
        'Khoa Nội tổng quát - Phòng 8904'
    ),
    (
        193,
        1,
        'Khoa Tim mạch - Phòng 9001'
    ),
    (
        193,
        2,
        'Khoa Nội tiết - Phòng 9002'
    ),
    (
        193,
        3,
        'Khoa Hô hấp - Phòng 9003'
    ),
    (
        193,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 9004'
    ),
    (
        194,
        1,
        'Khoa Tim mạch - Phòng 9101'
    ),
    (
        194,
        3,
        'Khoa Hô hấp - Phòng 9102'
    ),
    (
        194,
        6,
        'Khoa Nội tổng quát - Phòng 9103'
    ),
    (
        194,
        7,
        'Khoa Tiêu hóa - Phòng 9104'
    ),
    (
        195,
        2,
        'Khoa Nội tiết - Phòng 9201'
    ),
    (
        195,
        3,
        'Khoa Hô hấp - Phòng 9202'
    ),
    (
        195,
        8,
        'Khoa Thần kinh - Phòng 9203'
    ),
    (
        195,
        9,
        'Khoa Da liễu - Phòng 9204'
    ),
    (
        196,
        1,
        'Khoa Tim mạch - Phòng 9301'
    ),
    (
        196,
        3,
        'Khoa Hô hấp - Phòng 9302'
    ),
    (
        196,
        5,
        'Khoa Cơ xương khớp - Phòng 9303'
    ),
    (
        196,
        6,
        'Khoa Nội tổng quát - Phòng 9304'
    ),
    (
        197,
        1,
        'Khoa Tim mạch - Phòng 9401'
    ),
    (
        197,
        2,
        'Khoa Nội tiết - Phòng 9402'
    ),
    (
        197,
        3,
        'Khoa Hô hấp - Phòng 9403'
    ),
    (
        197,
        7,
        'Khoa Tiêu hóa - Phòng 9404'
    ),
    (
        198,
        2,
        'Khoa Nội tiết - Phòng 9501'
    ),
    (
        198,
        3,
        'Khoa Hô hấp - Phòng 9502'
    ),
    (
        198,
        4,
        'Khoa Chấn thương chỉnh hình - Phòng 9503'
    ),
    (
        198,
        6,
        'Khoa Nội tổng quát - Phòng 9504'
    ),
    (
        199,
        1,
        'Khoa Tim mạch - Phòng 9601'
    ),
    (
        199,
        3,
        'Khoa Hô hấp - Phòng 9602'
    ),
    (
        199,
        8,
        'Khoa Thần kinh - Phòng 9603'
    ),
    (
        199,
        10,
        'Khoa Mắt - Phòng 9604'
    ),
    (
        200,
        1,
        'Khoa Tim mạch - Phòng 9701'
    ),
    (
        200,
        2,
        'Khoa Nội tiết - Phòng 9702'
    ),
    (
        200,
        3,
        'Khoa Hô hấp - Phòng 9703'
    ),
    (
        200,
        5,
        'Khoa Cơ xương khớp - Phòng 9704'
    );