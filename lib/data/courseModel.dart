class CourseModel {
  String name;
  String description;
  String university;
  String noOfCource;
  String tag1;
  String tag2;

  CourseModel(
      {required this.name,
        required this.description,
        required this.noOfCource,
        required this.university,
        required this.tag1,
        required this.tag2});
}

class CourseList {
  static List<CourseModel> list = [
    CourseModel(
        name: "Mẹo hay",
        description:
        "Cách tránh lừa đảo chuyển hướng cuộc gọi, để không bị đánh cắp mã OTP các dịch vụ ngân hàng, ví điện tử",
        university: "Thế giới di động",
        noOfCource: "30 phút trước",
        tag1: "Mẹo hay",
        tag2: "Công nghệ"),
    CourseModel(
        name: "Tin mới",
        description:
        "Vivo chính thức xác nhận thiết kế mẫu điện thoại màn hình gập Vivo X Fold, cấu hình chính cũng đã được sáng tỏ",
        university: "Thế giới di động",
        noOfCource: "1 tiếng trước",
        tag1: "Tin mới",
        tag2: "Công nghệ"),
    CourseModel(
        name: "Tin mới",
        description:
        "Galaxy A51 chính thức được cập nhật OneUI 4.1, không cần lên bản 4.0 luôn, quá nhiều tính năng mới dành cho máy, xem ngay!",
        university: "Thế giới di động",
        noOfCource: "3 tiếng trước",
        tag1: "Tin mới",
        tag2: "Công nghệ"),
    CourseModel(
        name: "Khuyến mãi",
        description:
        "Xả hàng cuối tháng đổi giá cực sốc cho Xiaomi Redmi 10 (6GB/128GB) có pin trâu 5.000 mAh, rẻ quá rồi mua ngay bạn ơi",
        university: "Thế giới di động",
        noOfCource: "7 tiếng trước",
        tag1: "Khuyến mãi",
        tag2: "Công nghệ"),
    CourseModel(
        name: "Công nghệ",
        description:
        "TikTok phát triển tính năng lịch sử video đã xem, chắc chắn sẽ là 'vị cứu tinh' của nhiều người đang tìm lại video đây!",
        university: "Thế giới di động",
        noOfCource: "1 ngày trước",
        tag1: "Công nghệ",
        tag2: "Công nghệ"),
    CourseModel(
        name: "Tin mới",
        description:
        "Sự kiện re-livestream kỷ niệm 10 năm giữa Sơn Tùng MTP và OPPO sẽ diễn ra vào ngày 'Cá tháng tư', các OPPO fans chớ bỏ qua!",
        university: "Thế giới di động",
        noOfCource: "2 ngày trước",
        tag1: "Tin mới",
        tag2: "Công nghệ"),
  ];
}