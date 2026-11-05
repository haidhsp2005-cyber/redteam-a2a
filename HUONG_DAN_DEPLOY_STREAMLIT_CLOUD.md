# 🚀 HƯỚNG DẪN ĐƯA ỨNG DỤNG LÊN STREAMLIT COMMUNITY CLOUD (SHARE.STREAMLIT.IO)

Ứng dụng của thầy đã được chuẩn bị đầy đủ 100% để chạy trên đám mây chính thức của Streamlit:
- File cấu hình môi trường: `requirements.txt`
- File chống lộ key bảo mật: `.gitignore`
- Mã nguồn tương thích hoàn toàn với Streamlit Secrets & Linux Cloud: `app.py`

---

## BƯỚC 1: ĐƯA DỰ ÁN LÊN GITHUB CỦA THẦY

Thầy có thể làm theo 1 trong 2 cách sau:

### Cách A: Kéo thả trực tiếp trên trang web GitHub (Dễ nhất - Không cần gõ lệnh)
1. Truy cập [github.com](https://github.com) và đăng nhập.
2. Bấm vào dấu `+` ở góc trên cùng bên phải $\rightarrow$ Chọn **New repository**.
3. Đặt tên kho lưu trữ (Ví dụ: `redteam-a2a-arena`), chọn **Public** hoặc **Private** đều được $\rightarrow$ Bấm **Create repository**.
4. Ở màn hình mới hiện ra, bấm vào dòng chữ: **"uploading an existing file"**.
5. Kéo toàn bộ các file trong thư mục `thu thap test_A2A` thả vào trình duyệt:
   * `app.py`
   * `requirements.txt`
   * `TEMPLATE.csv`
   * Thư mục `.streamlit`
   * Thư mục `data`
   *(Lưu ý: Không cần tải lên `cloudflared.exe` và file `.env` vì đã có `.gitignore` bảo vệ).*
6. Bấm nút **Commit changes** màu xanh để hoàn tất.

---

### Cách B: Sử dụng Git Command Line (Nếu máy đã có Git)
Mở cửa sổ dòng lệnh tại thư mục dự án và chạy:
```bash
git init
git add .
git commit -m "Khoi tao Red-Team A2A Playground"
git branch -M main
git remote add origin https://github.com/<tai-khoan-github-cua-thay>/<ten-repo>.git
git push -u origin main
```

---

## BƯỚC 2: KẾT NỐI VỚI STREAMLIT COMMUNITY CLOUD

1. Truy cập vào trang: **[https://share.streamlit.io](https://share.streamlit.io)**
2. Đăng nhập bằng tài khoản **GitHub** của thầy.
3. Bấm vào nút màu đỏ: **"New app"** (hoặc **"Create app"**).
4. Điền các thông tin:
   * **Repository:** Chọn repo thầy vừa tạo ở Bước 1.
   * **Branch:** `main`
   * **Main file path:** `app.py`
   * **App URL (Tùy chọn):** Thầy có thể đặt đường dẫn theo ý muốn, ví dụ: `redteam-a2a-thayhai.streamlit.app`
5. Bấm vào dòng chữ **"Advanced settings..."** (hoặc sau khi tạo vào Settings -> Secrets):
   * Trong khung **Secrets**, dán dòng cấu hình Gemini API Key của thầy vào (lấy từ file .env):
   ```toml
   GEMINI_KEYS = "DAN_CHUOI_API_KEY_CUA_THAY_VAO_DAY"
   ```
   * Bấm **Save**.
6. Bấm nút **"Deploy!"** và đợi khoảng 1 - 2 phút để hệ thống đám mây tự động cài đặt thư viện.

---

## BƯỚC 3: SỬ DỤNG CHO LỚP HỌC

1. Streamlit sẽ cung cấp cho thầy một đường link trực tuyến hoạt động 24/7, ví dụ:
   `https://redteam-a2a-thayhai.streamlit.app`
2. Thầy gửi link này vào Zalo lớp hoặc trình chiếu lên máy chiếu.
3. Học sinh có thể dùng điện thoại (iPhone, Android, 4G, 5G) hoặc máy tính từ bất kỳ đâu để truy cập thi đấu.
4. Sau khi tiết học kết thúc, thầy đăng nhập vào tab **"📊 Bảng Quản Trị & Xuất TEMPLATE.csv"** (mật khẩu: `admin123`) và bấm nút **"📥 Tải xuống file TEMPLATE.csv hoàn chỉnh"** về máy tính của mình để nạp vào mô hình SLM!
