USE DoctorAppointment;

-- Insert Users (Admins)
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
        'Admin',
        'System',
        'admin@hospital.com',
        SHA2('Admin@123456', 256),
        '0123456789',
        'admin'
    );

-- Insert Users (Doctors)
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
        'Văn A',
        'doctor.a@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345678',
        'doctor'
    ),
    (
        'Trần',
        'Thị B',
        'doctor.b@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345679',
        'doctor'
    ),
    (
        'Lê',
        'Văn C',
        'doctor.c@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345680',
        'doctor'
    ),
    (
        'Phạm',
        'Thị D',
        'doctor.d@hospital.com',
        SHA2('DoctorPass123', 256),
        '0912345681',
        'doctor'
    );

-- Insert Users (Patients)
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
        'Văn E',
        'patient.e@gmail.com',
        SHA2('PatientPass123', 256),
        '0901234567',
        'patient'
    ),
    (
        'Trần',
        'Thị F',
        'patient.f@gmail.com',
        SHA2('PatientPass123', 256),
        '0901234568',
        'patient'
    ),
    (
        'Lê',
        'Văn G',
        'patient.g@gmail.com',
        SHA2('PatientPass123', 256),
        '0901234569',
        'patient'
    ),
    (
        'Phạm',
        'Thị H',
        'patient.h@gmail.com',
        SHA2('PatientPass123', 256),
        '0901234570',
        'patient'
    ),
    (
        'Hoàng',
        'Văn I',
        'patient.i@gmail.com',
        SHA2('PatientPass123', 256),
        '0901234571',
        'patient'
    );

-- Quick check
SELECT COUNT(*) AS total_users FROM Users;

-- Insert Addresses (must be before Patients to satisfy FK Patients.AddressId)
INSERT INTO
    Addresses (
        AddressLine,
        City,
        ProvinceState,
        Country
    )
VALUES (
        '123 Đường A, Phường 1',
        'Hà Nội',
        'Hà Nội',
        'Vietnam'
    ),
    (
        '456 Đường B, Phường 2',
        'Hà Nội',
        'Hà Nội',
        'Vietnam'
    ),
    (
        '789 Đường C, Phường 3',
        'Hồ Chí Minh',
        'Hồ Chí Minh',
        'Vietnam'
    ),
    (
        '321 Đường D, Phường 4',
        'Đà Nẵng',
        'Đà Nẵng',
        'Vietnam'
    ),
    (
        '654 Đường E, Phường 5',
        'Hải Phòng',
        'Hải Phòng',
        'Vietnam'
    );

-- Insert Patients (reference Users.UserId and existing AddressId)
INSERT INTO
    Patients (
        UserId,
        CitizenId,
        Age,
        Gender,
        EmergencyName,
        AddressId,
        EmergencyPhone
    )
VALUES (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        '101234567890',
        28,
        'male',
        'Nguyễn Văn X',
        1,
        '0912111111'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.f@gmail.com'
        ),
        '101234567891',
        35,
        'female',
        'Trần Thị Y',
        1,
        '0912111112'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        '101234567892',
        42,
        'male',
        'Lê Văn Z',
        2,
        '0912111113'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.h@gmail.com'
        ),
        '101234567893',
        31,
        'female',
        'Phạm Thị K',
        3,
        '0912111114'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.i@gmail.com'
        ),
        '101234567894',
        26,
        'male',
        'Hoàng Văn L',
        4,
        '0912111115'
    );

-- Quick checks
SELECT COUNT(*) AS total_addresses FROM Addresses;

SELECT COUNT(*) AS total_patients FROM Patients;

-- Insert PatientInsurances (use realistic codes)
INSERT INTO
    PatientInsurances (
        InsuranceId,
        PatientId,
        ProviderName,
        ExpiryDate,
        Type
    )
VALUES (
        'BV001',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        'Bảo hiểm Bảo Việt',
        '2026-12-31',
        'Health Insurance'
    ),
    (
        'AIA002',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.f@gmail.com'
        ),
        'Bảo hiểm AIA',
        '2026-06-30',
        'Health Insurance'
    ),
    (
        'PRU003',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        'Bảo hiểm Prudential',
        '2025-12-31',
        'Health Insurance'
    ),
    (
        'GEN004',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.h@gmail.com'
        ),
        'Bảo hiểm Generali',
        '2027-03-15',
        'Health Insurance'
    ),
    (
        'HAG005',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.i@gmail.com'
        ),
        'Bảo hiểm Hàng Không',
        '2026-09-30',
        'Health Insurance'
    );

-- Insert Conditions
INSERT INTO
    Conditions (
        ConditionName,
        Description,
        Type
    )
VALUES (
        'Cao huyết áp',
        'Tình trạng huyết áp cao',
        'disease'
    ),
    (
        'Tiểu đường',
        'Bệnh tiểu đường type 2',
        'disease'
    ),
    (
        'Hen suyễn',
        'Bệnh hô hấp mãn tính',
        'disease'
    ),
    (
        'Viêm khớp',
        'Viêm các khớp xương',
        'injury'
    ),
    (
        'Cảm cúm',
        'Bệnh cảm cúm thường gặp',
        'symptom'
    ),
    (
        'Đau lưng',
        'Đau vùng lưng kéo dài',
        'symptom'
    );

-- Insert PatientConditions (patients self-reported)
INSERT INTO
    PatientConditions (PatientId, ConditionID)
VALUES (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        1
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        5
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.f@gmail.com'
        ),
        2
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        3
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        6
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.h@gmail.com'
        ),
        1
    );

-- Quick checks
SELECT COUNT(*) AS total_insurances FROM PatientInsurances;

SELECT COUNT(*) AS total_conditions FROM Conditions;

SELECT COUNT(*) AS total_patient_conditions FROM PatientConditions;

-- Insert Hospitals (manual IDs)
INSERT INTO
    Hospitals (
        HospitalID,
        Name,
        Type,
        Address,
        Hotline,
        Email,
        OpenTime,
        CloseTime
    )
VALUES (
        100,
        'Bệnh viện Bạch Mai',
        'general',
        '78 Giải Phóng, Đống Đa, Hà Nội',
        '02438693731',
        'contact@bachmai.vn',
        '06:00:00',
        '20:00:00'
    ),
    (
        101,
        'Bệnh viện Chợ Rẫy',
        'general',
        '201B Nguyễn Chí Thanh, Quận 5, TP. HCM',
        '02838554137',
        'contact@choray.gov.vn',
        '06:00:00',
        '20:00:00'
    ),
    (
        102,
        'Bệnh viện Đà Nẵng',
        'general',
        '124 Hải Phòng, Q. Hải Châu, Đà Nẵng',
        '02363825511',
        'contact@dananghospital.vn',
        '06:30:00',
        '18:00:00'
    ),
    (
        103,
        'Bệnh viện Vinmec Times City',
        'specialized',
        '458 Minh Khai, Hai Bà Trưng, Hà Nội',
        '02439743556',
        'contact@vinmec.com',
        '07:00:00',
        '19:00:00'
    );

-- Insert MedicalDepartments (manual IDs)
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
        1,
        'Tim mạch',
        'Chẩn đoán và điều trị bệnh tim mạch',
        'BSCKII. Trần Minh Tâm',
        '0241111111',
        'cardio@hospital.com'
    ),
    (
        2,
        'Nội tiết',
        'Chăm sóc bệnh nội tiết như tiểu đường',
        'TS.BS. Nguyễn Thị Lan',
        '0241111112',
        'endocrine@hospital.com'
    ),
    (
        3,
        'Hô hấp',
        'Điều trị các bệnh đường hô hấp',
        'BSCKII. Lê Văn Phong',
        '0241111113',
        'pulmo@hospital.com'
    ),
    (
        4,
        'Chấn thương chỉnh hình',
        'Điều trị bệnh cơ xương khớp và chấn thương',
        'PGS.TS. Phạm Quốc Hùng',
        '0241111114',
        'ortho@hospital.com'
    ),
    (
        5,
        'Cơ xương khớp',
        'Chăm sóc bệnh viêm khớp và đau lưng',
        'BSCKII. Đỗ Thị Mai',
        '0241111115',
        'rheuma@hospital.com'
    ),
    (
        6,
        'Nội tổng quát',
        'Khám và điều trị đa khoa',
        'BS. Phan Quốc Việt',
        '0241111116',
        'general@hospital.com'
    );

-- Link Hospitals and Departments via HospitalDepartments
INSERT INTO
    HospitalDepartments (
        HospitalId,
        DepartmentId,
        Address
    )
VALUES (
        100,
        1,
        'Khoa Tim mạch - Phòng 101'
    ),
    (
        100,
        2,
        'Khoa Nội tiết - Phòng 102'
    ),
    (
        100,
        3,
        'Khoa Hô hấp - Phòng 103'
    ),
    (
        100,
        4,
        'Khoa CTCH - Phòng 104'
    ),
    (
        100,
        5,
        'Khoa Cơ xương khớp - Phòng 105'
    ),
    (
        100,
        6,
        'Khoa Khám tổng quát - Phòng 106'
    ),
    (
        101,
        1,
        'Khoa Tim mạch - Phòng 201'
    ),
    (
        101,
        2,
        'Khoa Nội tiết - Phòng 202'
    ),
    (
        101,
        3,
        'Khoa Hô hấp - Phòng 203'
    ),
    (
        101,
        4,
        'Khoa CTCH - Phòng 204'
    ),
    (
        102,
        3,
        'Khoa Hô hấp - Phòng 301'
    ),
    (
        102,
        4,
        'Khoa CTCH - Phòng 302'
    ),
    (
        102,
        6,
        'Khoa Khám tổng quát - Phòng 303'
    ),
    (
        103,
        1,
        'Khoa Tim mạch - Phòng 401'
    ),
    (
        103,
        2,
        'Khoa Nội tiết - Phòng 402'
    ),
    (
        103,
        3,
        'Khoa Hô hấp - Phòng 403'
    ),
    (
        103,
        5,
        'Khoa Cơ xương khớp - Phòng 404'
    );

-- Map Conditions to Departments via TreatedBy
-- 1: Cao huyết áp, 2: Tiểu đường, 3: Hen suyễn, 4: Viêm khớp, 5: Cảm cúm, 6: Đau lưng
INSERT INTO
    TreatedBy (ConditionID, DepartmentID)
VALUES (1, 1), -- Cao huyết áp -> Tim mạch
    (1, 6), -- Cao huyết áp -> Nội tổng quát
    (2, 2), -- Tiểu đường -> Nội tiết
    (2, 6), -- Tiểu đường -> Nội tổng quát
    (3, 3), -- Hen suyễn -> Hô hấp
    (5, 6), -- Cảm cúm -> Nội tổng quát
    (5, 3), -- Cảm cúm -> Hô hấp
    (4, 5), -- Viêm khớp -> Cơ xương khớp
    (4, 4), -- Viêm khớp -> CTCH
    (6, 4);
-- Đau lưng -> CTCH

SELECT COUNT(*) AS total_hospitals FROM Hospitals;

SELECT COUNT(*) AS total_departments FROM MedicalDepartments;

SELECT COUNT(*) AS total_hospital_departments
FROM HospitalDepartments;

SELECT COUNT(*) AS total_treatedby FROM TreatedBy;

-- Insert Doctors (for existing doctor users)
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
                Email = 'doctor.a@hospital.com'
        ),
        '012345670001',
        'LIC-A-1001',
        300000.00,
        'Tim mạch'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.b@hospital.com'
        ),
        '012345670002',
        'LIC-B-1002',
        280000.00,
        'Nội tiết'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        ),
        '012345670003',
        'LIC-C-1003',
        260000.00,
        'Hô hấp'
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.d@hospital.com'
        ),
        '012345670004',
        'LIC-D-1004',
        320000.00,
        'Chấn thương chỉnh hình'
    );

SELECT COUNT(*) AS total_doctors FROM Doctors;

-- Insert DoctorAvailabilities
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
                Email = 'doctor.a@hospital.com'
        ),
        '2025-10-21',
        '08:00:00',
        '10:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 1
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.a@hospital.com'
        ),
        '2025-10-22',
        '14:00:00',
        '16:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 103
                AND DepartmentId = 1
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.b@hospital.com'
        ),
        '2025-10-21',
        '09:00:00',
        '11:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 2
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.b@hospital.com'
        ),
        '2025-10-23',
        '13:30:00',
        '15:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 2
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        ),
        '2025-10-22',
        '08:30:00',
        '10:30:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 102
                AND DepartmentId = 3
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        ),
        '2025-10-24',
        '15:00:00',
        '17:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 3
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.d@hospital.com'
        ),
        '2025-10-22',
        '10:00:00',
        '12:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 4
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.d@hospital.com'
        ),
        '2025-10-25',
        '09:00:00',
        '11:00:00',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 103
                AND DepartmentId = 4
        )
    );

SELECT COUNT(*) AS total_availabilities FROM DoctorAvailabilities;

-- Insert Appointments (doctor-first flow; align with availabilities)
INSERT INTO
    Appointments (
        PatientId,
        DoctorId,
        ScheduleDate,
        ScheduleTime,
        EndTime,
        Status,
        Note,
        HospitalDepartmentId
    )
VALUES (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.a@hospital.com'
        ),
        '2025-10-21',
        '08:30:00',
        '09:00:00',
        'confirmed',
        'Khám theo dõi huyết áp',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 1
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.f@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.b@hospital.com'
        ),
        '2025-10-21',
        '09:30:00',
        '10:00:00',
        'completed',
        'Tư vấn điều chỉnh thuốc tiểu đường',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 2
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        ),
        '2025-10-22',
        '09:00:00',
        '09:30:00',
        'pending',
        'Khám hen suyễn',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 102
                AND DepartmentId = 3
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.h@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.d@hospital.com'
        ),
        '2025-10-22',
        '10:30:00',
        '11:00:00',
        'confirmed',
        'Đau đầu gối sau vận động',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 100
                AND DepartmentId = 4
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.a@hospital.com'
        ),
        '2025-10-22',
        '14:30:00',
        '15:00:00',
        'cancelled',
        'Hẹn tái khám (đã hủy)',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 103
                AND DepartmentId = 1
        )
    ),
    (
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.i@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        ),
        '2025-10-24',
        '15:30:00',
        '16:00:00',
        'completed',
        'Khám khó thở khi vận động',
        (
            SELECT HospitalDepartmentId
            FROM HospitalDepartments
            WHERE
                HospitalId = 101
                AND DepartmentId = 3
        )
    );

SELECT COUNT(*) AS total_appointments FROM Appointments;

-- Insert Reviews (for completed appointments)
INSERT INTO
    Reviews (
        Rating,
        Comment,
        PatientId,
        DoctorId
    )
VALUES (
        5,
        'Bác sĩ tận tâm, tư vấn kỹ lưỡng.',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.f@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.b@hospital.com'
        )
    ),
    (
        4,
        'Dịch vụ tốt, thời gian chờ hợp lý.',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.i@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.c@hospital.com'
        )
    ),
    (
        5,
        'Khám kỹ và đưa ra phác đồ rõ ràng.',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.e@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.a@hospital.com'
        )
    ),
    (
        3,
        'Ổn nhưng cần cải thiện quy trình tiếp đón.',
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'patient.g@gmail.com'
        ),
        (
            SELECT UserId
            FROM Users
            WHERE
                Email = 'doctor.a@hospital.com'
        )
    );

SELECT COUNT(*) AS total_reviews FROM Reviews;