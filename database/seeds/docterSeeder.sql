-- Thêm dữ liệu cho bác sĩ mới (liên kết với các khoa mới)
INSERT INTO
    Users (
        FirstName,
        LastName,
        Email,
        Password,
        PhoneNumber,
        Role
    )
VALUES (
        'Nguyễn',
        'Thị M',
        'doctor.m@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345682',
        'doctor'
    ),
    (
        'Trần',
        'Văn N',
        'doctor.n@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345683',
        'doctor'
    ),
    (
        'Lê',
        'Thị O',
        'doctor.o@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345684',
        'doctor'
    ),
    (
        'Phạm',
        'Văn P',
        'doctor.p@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345685',
        'doctor'
    ),
    (
        'Hoàng',
        'Thị Q',
        'doctor.q@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345686',
        'doctor'
    ),
    (
        'Vũ',
        'Văn R',
        'doctor.r@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345687',
        'doctor'
    ),
    (
        'Đặng',
        'Thị S',
        'doctor.s@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345688',
        'doctor'
    ),
    (
        'Bùi',
        'Văn T',
        'doctor.t@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345689',
        'doctor'
    ),
    (
        'Phan',
        'Thị U',
        'doctor.u@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345690',
        'doctor'
    ),
    (
        'Lý',
        'Văn V',
        'doctor.v@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345691',
        'doctor'
    );

-- Thêm thông tin bác sĩ cho các người dùng mới
INSERT INTO
    Doctors (
        UserId,
        CitizenId,
        LicenseNumber,
        ConsultationFee,
        Specialization
    )
VALUES (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.m@hospital.com'
        ),
        '012345670005',
        'LIC-M-1005',
        290000.00,
        'Tiêu hóa'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.n@hospital.com'
        ),
        '012345670006',
        'LIC-N-1006',
        310000.00,
        'Thần kinh'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.o@hospital.com'
        ),
        '012345670007',
        'LIC-O-1007',
        275000.00,
        'Da liễu'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.p@hospital.com'
        ),
        '01234567008',
        'LIC-P-1008',
        330000.00,
        'Mắt'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.q@hospital.com'
        ),
        '012345670009',
        'LIC-Q-1009',
        285000.00,
        'Tai Mũi Họng'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.r@hospital.com'
        ),
        '012345670010',
        'LIC-R-1010',
        305000.00,
        'Răng Hàm Mặt'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.s@hospital.com'
        ),
        '012345670011',
        'LIC-S-1011',
        320000.00,
        'Thận - Tiết niệu'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.t@hospital.com'
        ),
        '012345670012',
        'LIC-T-1012',
        295000.00,
        'Tâm thần'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.u@hospital.com'
        ),
        '012345670013',
        'LIC-U-1013',
        270000.00,
        'Phục hồi chức năng'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.v@hospital.com'
        ),
        '012345670014',
        'LIC-V-1014',
        340000.00,
        'Y học thể thao'
    );

-- Thêm dữ liệu lịch làm việc cho các bác sĩ mới
INSERT INTO
    DoctorAvailabilities (
        DoctorId,
        AvailableDate,
        StartTime,
        EndTime,
        HospitalDepartmentId
    )
VALUES (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.m@hospital.com'
        ),
        '2025-10-25',
        '08:00:00',
        '10:00:0',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 7
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.m@hospital.com'
        ),
        '2025-10-27',
        '14:00',
        '16:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 103
                AND DepartmentId = 7
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.n@hospital.com'
        ),
        '2025-10-26',
        '09:00',
        '11:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 8
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.n@hospital.com'
        ),
        '2025-10-28',
        '13:30:00',
        '15:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 8
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.o@hospital.com'
        ),
        '2025-10-25',
        '10:00:00',
        '12:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 102
                AND DepartmentId = 9
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.o@hospital.com'
        ),
        '2025-10-29',
        '15:00:00',
        '17:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 9
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.p@hospital.com'
        ),
        '2025-10-26',
        '08:30:00',
        '10:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 10
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.p@hospital.com'
        ),
        '2025-10-30',
        '14:30:00',
        '16:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 103
                AND DepartmentId = 10
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.q@hospital.com'
        ),
        '2025-10-27',
        '09:30:00',
        '11:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 102
                AND DepartmentId = 11
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.q@hospital.com'
        ),
        '2025-10-31',
        '13:00:0',
        '15:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 11
        )
    );