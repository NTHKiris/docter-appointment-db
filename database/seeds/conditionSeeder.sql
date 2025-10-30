INSERT INTO
    Conditions (
        ConditionName,
        Description,
        Type
    )
VALUES (
        'Viêm gan B',
        'Nhiễm virus viêm gan B',
        'disease'
    ),
    (
        'Viêm gan C',
        'Nhiễm virus viêm gan C',
        'disease'
    ),
    (
        'Suy thận mạn',
        'Suy giảm chức năng thận kéo dài',
        'disease'
    ),
    (
        'Viêm phổi',
        'Nhiễm trùng ở phổi',
        'disease'
    ),
    (
        'Viêm xoang',
        'Viêm nhiễm các xoang mặt',
        'disease'
    ),
    (
        'Viêm amidan',
        'Viêm nhiễm amidan',
        'disease'
    ),
    (
        'Trĩ',
        'Phình giãn tĩnh mạch ở vùng hậu môn',
        'disease'
    ),
    (
        'Viêm loét dạ dày',
        'Viêm và loét niêm mạc dạ dày',
        'disease'
    ),
    (
        'Viêm khớp dạng thấp',
        'Bệnh viêm khớp mãn tính',
        'disease'
    ),
    (
        'Thiếu máu',
        'Số lượng hồng cầu hoặc hemoglobin thấp',
        'disease'
    ),
    (
        'Rối loạn lipid máu',
        'Mức cholesterol và triglyceride bất thường',
        'disease'
    ),
    (
        'Thiếu vitamin D',
        'Thiếu hụt vitamin D trong cơ thể',
        'disease'
    ),
    (
        'Viêm gan tự miễn',
        'Hệ miễn dịch tấn công gan',
        'disease'
    ),
    (
        'Viêm đại tràng',
        'Viêm nhiễm đại tràng',
        'disease'
    ),
    (
        'Viêm tụy',
        'Viêm tuyến tụy',
        'disease'
    ),
    (
        'Viêm bàng quang',
        'Viêm nhiễm bàng quang',
        'disease'
    ),
    (
        'Viêm niệu đạo',
        'Viêm nhiễm niệu đạo',
        'disease'
    ),
    (
        'Viêm âm đạo',
        'Viêm nhiễm âm đạo',
        'disease'
    ),
    (
        'Viêm cổ tử cung',
        'Viêm nhiễm cổ tử cung',
        'disease'
    ),
    (
        'Viêm phế quản',
        'Viêm nhiễm phế quản',
        'disease'
    ),
    (
        'Viêm màng não',
        'Viêm nhiễm màng não',
        'disease'
    ),
    (
        'Viêm gan do rượu',
        'Tổn thương gan do sử dụng rượu',
        'disease'
    ),
    (
        'Viêm gan do thuốc',
        'Tổn thương gan do tác dụng phụ thuốc',
        'disease'
    ),
    (
        'Viêm gan do béo phì',
        'Tổn thương gan do tích tụ mỡ',
        'disease'
    ),
    (
        'Viêm gan do rối loạn chuyển hóa',
        'Tổn thương gan do rối loạn chuyển hóa',
        'disease'
    ),
    (
        'Viêm gan do thiếu máu',
        'Tổn thương gan do thiếu máu',
        'disease'
    ),
    (
        'Viêm gan do nhiễm trùng',
        'Tổn thương gan do nhiễm trùng',
        'disease'
    ),
    (
        'Viêm gan do virus khác',
        'Tổn thương gan do virus khác',
        'disease'
    ),
    (
        'Viêm gan do ký sinh trùng',
        'Tổn thương gan do ký sinh trùng',
        'disease'
    ),
    (
        'Viêm gan do hóa chất',
        'Tổn thương gan do hóa chất',
        'disease'
    );

INSERT INTO
    TreatedBy (ConditionID, DepartmentID)
VALUES (7, 7), -- Viêm gan B -> Tiêu hóa
    (7, 19), -- Viêm gan B -> Xét nghiệm
    (8, 7), -- Viêm gan C -> Tiêu hóa
    (8, 19), -- Viêm gan C -> Xét nghiệm
    (9, 13), -- Suy thận mạn -> Thận - Tiết niệu
    (9, 19), -- Suy thận mạn -> Xét nghiệm
    (10, 3), -- Viêm phổi -> Hô hấp
    (10, 18), -- Viêm phổi -> Chẩn đoán hình ảnh
    (11, 3), -- Viêm xoang -> Hô hấp
    (11, 18), -- Viêm xoang -> Chẩn đoán hình ảnh
    (12, 3), -- Viêm amidan -> Hô hấp
    (12, 11), -- Viêm amidan -> Tai Mũi Họng
    (13, 4), -- Trĩ -> Chấn thương chỉnh hình (khoa ngoại tổng quát)
    (13, 22), -- Trĩ -> Phẫu thuật tổng quát
    (14, 7), -- Viêm loét dạ dày -> Tiêu hóa
    (14, 18), -- Viêm loét dạ dày -> Chẩn đoán hình ảnh
    (15, 5), -- Viêm khớp dạng thấp -> Cơ xương khớp
    (15, 8), -- Viêm khớp dạng thấp -> Thần kinh
    (16, 6), -- Thiếu máu -> Nội tổng quát
    (16, 19), -- Thiếu máu -> Xét nghiệm
    (17, 6), -- Rối loạn lipid máu -> Nội tổng quát
    (17, 19), -- Rối loạn lipid máu -> Xét nghiệm
    (18, 6), -- Thiếu vitamin D -> Nội tổng quát
    (18, 19), -- Thiếu vitamin D -> Xét nghiệm
    (19, 7), -- Viêm gan tự miễn -> Tiêu hóa
    (19, 19), -- Viêm gan tự miễn -> Xét nghiệm
    (20, 7), -- Viêm đại tràng -> Tiêu hóa
    (20, 19), -- Viêm đại tràng -> Xét nghiệm
    (21, 7), -- Viêm tụy -> Tiêu hóa
    (21, 19), -- Viêm tụy -> Xét nghiệm
    (22, 13), -- Viêm bàng quang -> Thận - Tiết niệu
    (22, 19), -- Viêm bàng quang -> Xét nghiệm
    (23, 13), -- Viêm niệu đạo -> Thận - Tiết niệu
    (23, 19), -- Viêm niệu đạo -> Xét nghiệm
    (24, 6), -- Viêm âm đạo -> Nội tổng quát
    (24, 19), -- Viêm âm đạo -> Xét nghiệm
    (25, 6), -- Viêm cổ tử cung -> Nội tổng quát
    (25, 19), -- Viêm cổ tử cung -> Xét nghiệm
    (26, 3), -- Viêm phế quản -> Hô hấp
    (26, 18), -- Viêm phế quản -> Chẩn đoán hình ảnh
    (27, 8), -- Viêm màng não -> Thần kinh
    (27, 18), -- Viêm màng não -> Chẩn đoán hình ảnh
    (28, 7), -- Viêm gan do rượu -> Tiêu hóa
    (28, 19), -- Viêm gan do rượu -> Xét nghiệm
    (29, 7), -- Viêm gan do thuốc -> Tiêu hóa
    (29, 19), -- Viêm gan do thuốc -> Xét nghiệm
    (30, 7), -- Viêm gan do béo phì -> Tiêu hóa
    (30, 19), -- Viêm gan do béo phì -> Xét nghiệm
    (31, 7), -- Viêm gan do rối loạn chuyển hóa -> Tiêu hóa
    (31, 19), -- Viêm gan do rối loạn chuyển hóa -> Xét nghiệm
    (32, 7), -- Viêm gan do thiếu máu -> Tiêu hóa
    (32, 19), -- Viêm gan do thiếu máu -> Xét nghiệm
    (33, 7), -- Viêm gan do nhiễm trùng -> Tiêu hóa
    (33, 19), -- Viêm gan do nhiễm trùng -> Xét nghiệm
    (34, 7), -- Viêm gan do virus khác -> Tiêu hóa
    (34, 19), -- Viêm gan do virus khác -> Xét nghiệm
    (35, 7), -- Viêm gan do ký sinh trùng -> Tiêu hóa
    (35, 19), -- Viêm gan do ký sinh trùng -> Xét nghiệm
    (36, 7), -- Viêm gan do hóa chất -> Tiêu hóa
    (36, 19);
-- Viêm gan do hóa chất -> Xét nghiệm