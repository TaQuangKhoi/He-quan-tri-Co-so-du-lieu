# Hệ quản trị Cơ sở dữ liệu
## Ngày 3 tháng 3 năm 2022 (mình nghỉ do thành F1)
Tạo CSDL và giải các câu hỏi: [CSDL-MSPORTTEAM.pdf](https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/blob/main/CSDL-MSPORTTEAM.pdf)

Thứ tự tạo bảng: 
- CLB
- LUA_TUOI
- DOI (cần tạo bảng CLB và LUA_TUOI trước để khóa ngoại tham chiếu tới khóa chính của 2 bảng)
- PHONG
- TD
- DOI_TD
- VDV
- VDV_DOI

Đề truy vấn:
- [x] a. Danh sách các vận động viên của câu lạc bộ có mã số 45 => [#1](i1)
- [ ] b. Tên các vận động viên của đoi số 3 của câu lạc bộ có mã số 27
- [ ] c. Số lượng các trận đấu LT1 diễn ra vào ngày 6/16/90
- [ ] d. Mã số các câu lạc bộ và mã số các đội trong đó có những vận động viên thuộc 1 lứa tuổi
   nhỏ hơn lứa tuổi của đội
- [ ] e. Địa chỉ và mã số các câu lạc bộ có 1 hoặc nhiều đội tham dự trận đấu diễn ra trong phòng
 mã số 17 ngày 12/6/90
- [ ] f. Danh sách các trận đấu bắt đầu và kết thúc trong khoảng thời gian từ 13g và 16g diễn ra
  trên 1 sân của phòng mã số 49 ngày 8/5/90
- [ ] g. Địa chỉ và tên các vận động viên đã chơi hoặc sẽ chơi đối lại đội mã số 1 của câu lạc bộ
 mã số 50
- [ ] h. Số tối đa các trận đấu có thể bắt đầu đồng thời trong ngày 12/6/90
- [ ] i. Với mỗi vận động viên thuộc câu lạc bộ 50, tìm số lượng trận đấu mà anh ta đã tham gia
- [ ] j. Mã số vận động viên, tên vận động viên, tên câu lạc bộ của các vận động viên tham gia
   nhiều trận đấu nhất
- [ ] k. Những đội (CLB_MA, DOI_MA) tham gia tất cả trận đấu diễn ra ở phòng 49
- [ ] l. Mã số và tên vận động viên chưa từng tham gia trận đấu nào

[i1]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/1
