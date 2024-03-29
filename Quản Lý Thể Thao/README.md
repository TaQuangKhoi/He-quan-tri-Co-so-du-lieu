# Quản Lý Thể Thao

g. 

j. 
    
    - [ ] Tìm VDV tham gia bao nhiêu trận đấu

    - [ ] Tìm số trận đấu nhiều nhất

    - [ ] Subquery để so sánh danh sách với số lớn nhất đó

k. Những đội tham gia tất cả trận đấu ở phòng 49

    - [x] Tìm số lượng trận đấu diễn ra ở phòng 49

    - [ ] Mỗi đội trong phòng 49 chơi bao nhiêu trận

    - [ ] Nếu 2 cái trên bằng nhau thì là đội tham gia tất cả các trận

l. 
    
    - [ ] Tìm danh sách tất cả Mã vận động viên có chơi trận đấu

    - [ ] NOT IN Subquery để loại trừ

(Sau khi làm xong thì chuyển nội dung của readme này vào Quản Lý Thể Thao)

Tạo CSDL và giải các câu hỏi: [CSDL-MSPORTTEAM.pdf](https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/blob/main/CSDL-MSPORTTEAM.pdf)
Tài Liệu Học Tập: [Repo Tai-Lieu-Hoc-Tap/HK5/Hệ quản trị CSDL](https://github.com/DH20LT/Tai-Lieu-Hoc-Tap/tree/main/HK5%20-%20Now/H%E1%BB%87%20qu%E1%BA%A3n%20tr%E1%BB%8B%20c%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u)

Thứ tự tạo bảng: 
- **CLB**: CLB_MA, DOI_MA, LT, PHAI
- **LUA_TUOI**: LT, LT_TGTD [bảng gốc]
(cần tạo bảng CLB và LUA_TUOI trước để khóa ngoại tham chiếu tới khóa chính của 2 bảng)
- **DOI**: CLB_MA, DOI_MA, LT, PHAI
- **PHONG**: 
- **TD**
- **DOI_TD**
- **VDV**
- **VDV_DOI**

Đề truy vấn:
- [x] a. Danh sách các vận động viên của câu lạc bộ có mã số 45 => [#1][i1]
- [x] b. Tên các vận động viên của đội số 3 của câu lạc bộ có mã số 27 => [#2][i2]
- [x] c. Số lượng các trận đấu LT1 diễn ra vào ngày 6/16/90 => [#3][i3]
- [x] d. Mã số các câu lạc bộ và mã số các đội trong đó có những vận động viên thuộc 1 lứa tuổi nhỏ hơn lứa tuổi của đội => [#4][i4]
- [ ] e. Địa chỉ và mã số các câu lạc bộ có 1 hoặc nhiều đội tham dự trận đấu diễn ra trong phòng mã số 17 ngày 12/6/90 => [#5][i5]
- [ ] f. Danh sách các trận đấu bắt đầu và kết thúc trong khoảng thời gian từ 13g và 16g diễn ra trên 1 sân của phòng mã số 49 ngày 8/5/90 => [#6][i6]
- [ ] g. Địa chỉ và tên các vận động viên đã chơi hoặc sẽ chơi đối lại đội mã số 1 của câu lạc bộ mã số 50
- [ ] h. Số tối đa các trận đấu có thể bắt đầu đồng thời trong ngày 12/6/90
- [ ] i. Với mỗi vận động viên thuộc câu lạc bộ 50, tìm số lượng trận đấu mà anh ta đã tham gia
- [ ] j. Mã số vận động viên, tên vận động viên, tên câu lạc bộ của các vận động viên tham gia nhiều trận đấu nhất
- [ ] k. Những đội (CLB_MA, DOI_MA) tham gia tất cả trận đấu diễn ra ở phòng 49
- [ ] l. Mã số và tên vận động viên chưa từng tham gia trận đấu nào

[i1]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/1
[i2]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/2
[i3]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/3
[i4]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/4
[i5]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/5
[i6]: https://github.com/TaQuangKhoi/He-quan-tri-Co-so-du-lieu/issues/6