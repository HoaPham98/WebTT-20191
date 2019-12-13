
exports.seed = function(knex) {
  // Deletes ALL existing entries
  return knex('news').del()
    .then(function () {
      // Inserts seed entries
      return knex('news').insert([
        {id: 1, title: 'HÀI HƯỚC VỚI \'MẸ CHỒNG RẮC RỐI\' TRÊN SÂN KHẤU KỊCH1', content: `Vở kịch xoay quanh bà mẹ chồng khó tính, cái gì cũng bắt bẻ con dâu. Còn cô con dâu thì ăn nói không khéo léo. Và hai mẹ con còn giành nhau số tiền mừng cưới, ai cũng muốn giữ. Tiếp theo là một sự hiểu lầm đã khiến gia đình tan nát.
        Không ngờ, giữa lúc căng thẳng ấy thì… tên cướp xuất hiện. Trong hoạn nạn mới biết tình cảm dành cho nhau. Mẹ chồng nàng dâu lo bảo vệ cho nhau, không nghĩ tới bản thân mình nữa. Và họ chấp nhận mất số tiền mừng cưới to lớn, miễn sao cứu được người thân. Kết cục rất cảm động. Khán phòng vỡ òa những tràng vỗ tay trong khi mắt khán giả còn ngân ngấn nước.
        Gia Bảo (phải-vai dì Huê), Phương Lan (vai Lan) trong vở Mẹ chồng rắc rối (ảnh: H.K
        Gia Bảo (vai dì Huê), Phương Lan (vai Lan) trong vở Mẹ chồng rắc rốiẢNH: H.K
        Tác giả Nguyễn Thu Phương và đạo diễn Ngọc Hùng chọn ngôn ngữ kể chuyện hài hước nên khắp khán phòng cứ rần rần vui vẻ. Hài nhưng không dung tục, không nhảm nhí, mà biết tiết chế, biết sử dụng kỹ thuật biểu diễn, kỹ thuật nhả chữ, phải gọi là giỏi nghề. Bi kịch mà làm gì, chẳng cần biến quan hệ mẹ chồng nàng dâu thành cái gì đó quá trầm trọng. Chỉ cần thể hiện như vở kịch là đủ rồi, đủ để người ta thấy mình “vô lý” khi sống mà cứ bắt chẹt nhau, tính toán với nhau, từ đó ngẫm nghĩ mà sửa đổi.
        Hài hước còn có cái lợi là khiến người ta thấy mẹ chồng cũng dễ thương, nàng dâu cũng dễ thương, hóa ra hiểu nhau không đến nỗi khó lắm. Khán giả trẻ có dịp hiểu tâm lý người già, ngược lại, khán giả lớn tuổi có dịp hiểu tâm lý người trẻ, đặc biệt vợ chồng son. Hiểu để thông cảm và tử tế với nhau. Vậy là hòa thuận thôi. Chứ ngoài đời lấy đâu ra cái thằng ăn cướp như trong kịch để mà hóa giải giận hờn cho mẹ chồng nàng dâu. Thằng ăn cướp ước lệ này chỉ xuất hiện trong kịch, nhưng nó có tác dụng với người ngồi xem dưới kia, xem xong lòng bỗng thấy yêu thương nhau nhiều hơn.
        Khả Như từ khi xuất hiện ở nhóm Buffalo đã cho thấy dấu hiệu một cô đào tài năng. Quả thật, chỉ mấy năm thôi, Khả Như bật sáng trong tất cả thể loại nhạc kịch, bi kịch, hài kịch, thậm chí tham gia gameshow cô cũng thật ăn khách. Ngoại hình đẹp, ca múa giỏi, diễn xuất đủ loại vai, kể cả vai già, và nói đủ thứ giọng Nam, Trung, Bắc. Lần này cô đóng vai bà mẹ chồng nói giọng Bắc, thật xéo xắt, nhưng cũng đáng yêu làm sao.
        Hài hước với 'Mẹ chồng rắc rối' trên sân khấu kịch - ảnh 2
        Khả Như (vai bà Trần), Diệu Nhi (vai Hằng) trong vở Mẹ chồng rắc rốiẢNH: H.K
        Diệu Nhi là gương mặt mới nổi nhưng khán giả rất yêu mến. Cũng không thể không nhắc diễn viên Gia Bảo càng ngày càng lên tay. Anh đóng vai dì Huê nói tiếng Huế thật hay, khán giả ngạc nhiên bất ngờ. Thực sự Gia Bảo cứ diễn một cách bình tĩnh như thế này mà khán giả thấy nội lực của anh. Quả không hổ danh là cháu nội của danh hài Bảo Quốc.
        Đạo diễn Ngọc Hùng mạnh dạn sử dụng lớp trẻ như Phương Lan, Nghinh Lộc, Thuận Nguyễn, Anh Tú, Hồng Đào…nhưng họ không làm khán giả thất vọng. Thực sự nhiều bạn tốt nghiệp Trường Sân khấu Điện Ảnh TP.HCM được Ngọc Hùng đưa lên sàn diễn Thế giới trẻ và họ lớn mạnh thấy rõ. Trong vở kịch này, từ vai phụ nhỏ xíu cũng biết tạo ấn tượng, khiến người xem “nhớ” được. Đó là chuyện không dễ. Làm nghề, đâu phải có ngay vai lớn, nhưng nếu diễn viên biết làm bật vai nhỏ của mình lên thì đó không còn là “vai nhỏ” nữa.`},
        {id: 2, title: `NHỮNG GƯƠNG MẶT HÀI ĐANG GÂY "SỐT" TRÊN SÀN "SÂN KHẤU XOAY" SÀI GÒN`, content: `Khác với các loại hình sân khấu biểu diễn khác, sân khấu kịch luôn nhận được sự quan tâm ít hơn cả so với các sân khấu ca nhạc hoặc những chương trình biểu diễn tạp kỹ. Tuy nhiên, tại trung tâm giải trí sôi động nhất cả nước là Tp.HCM thì các sân khấu kịch lại hoạt động rất mạnh mẽ, 3 ngày cuối tuần đều sáng đèn và thu hút rất nhiều khán giả quan tâm chẳng kém bất cứ sân khấu nào.
 
        Đó không phải là những vở kịch trên truyền hình hay những phân đoạn ngắn trong một chương trình tạp kĩ mà nhiều người vẫn nghĩ, các sân khấu kịch đúng nghĩa tại TP.HCM đều được đầu tư kịch bản hoàn chỉnh và dàn diễn viên thực lực nổi tiếng. Ngoài những tên tuổi gạo cội của làng kịch Sài Gòn như Thành Lộc, Hữu Châu là "vedette" của sân khấu Idecaf  hay Thái Hòa, Thanh Vân là ngôi sao của Kịch Hồng Vân thì Thế Giới Trẻ đang nổi lên là địa điểm có nhiều vở kịch tạo thành "hiện tượng" nhất cho giới trẻ hiện nay. Các suất diễn của "sân khấu xoay" đặc biệt này tại Sài Gòn luôn lấp kín đầy chỗ, thậm chí có những vở diễn người ta phải mua từ trước đó hàng tháng trời mới có thể có được vé. Thu Trang, Hoàng Phi, Hải Triều, Pucca, Khả Như, Quang Tuấn,... là những tên tuổi còn rất trẻ và được kì vọng sẽ có thể tiếp bước các đàn anh nổi tiếng trước đó của sân khấu kịch Sài Gòn. 
         
        Tại Thế Giới Trẻ, hầu như tất cả các vở kịch nổi tiếng nhất đều có sự tham gia của Thu Trang - Hoàng Phi - 2 diễn viên hài có thể khiến khán giả cười lăn lộn từ đầu đến cuối. Đây là 2 cái tên bảo chứng cho doanh thu tốt nhất hiện nay. 
         
        Thu Trang chỉ mới nổi lên trong vài năm trở lại đây, ít ai biết nữ danh hài vedette của sân khấu Thế Giới Trẻ đã có gần 10 năm long đong tìm chỗ đứng cho mình ở lĩnh vực giải trí đặc biệt này. Những suất diễn hiện nay của Thu Trang trong Họa Hồn hay Chuyện Tình Bangkok đều phải đặt trước rất nhiều tuần trước đó mà đôi khi khán giả còn không thể tìm được vé để vào xem. Nét diễn hài duyên dáng, tự nhiên của Thu Trang có thể khiến các khán giả cười suốt buổi mà vẫn thấy mới lạ vì Thu Trang luôn cập nhật những vấn đề thời sự trong lời thoại của mình.
         
         
        Những lần được đề cử trong Mai Vàng hay HTV Awards gần đây của Thu Trang bên cạnh những danh hài nổi tiếng như Hoài Linh, Trấn Thành đã chứng minh cô gái này không phải là "tay vừa" và còn sẽ được nhiều người biết đến hơn nữa khi nữ diễn viên hài này đã bắt đầu bước ra ánh sáng khi những đạo diễn truyền hình, điện ảnh đã bắt đầu tranh nhau mời cô vào các vai diễn nặng kí. Thu Trang từng được đánh giá cao qua vai diễn trong Cô dâu đại chiến 2 và sắp tới sẽ là một nhân tố đáng mong đợi trong Để Hội tính của Charlie Nguyễn. 
         
        Video tạm dừng
         
        Thu Trang, Hoàng Phi chọc cười khán giả trong vở kịch kinh dị Họa Hồn
         
        Nói về Hoàng Phi có thể nhiều người sẽ nghĩ đến như một MC cực kì hoạt náo bên cạnh Khởi My trên truyền hình. Tuy nhiên, với vai trò là một diễn viên kịch hài, Hoàng Phi cũng rất được yêu thích và khả năng diễn cũng chuyên nghiệp không thua bất cứ danh hài nào. Anh và Thu Trang là hai tên tuổi bảo chứng việc bán vé cho sân khấu kịch Thế Giới Trẻ những năm gần đây. Từ vai diễn anh cảnh sát sợ ma trong Họa hồn hay vô cùng đồng bóng, lòe loẹt trong Chuyện tình Bangkok, Hai chàng bảo mẫu đã khiến cái tên Hoàng Phi càng ấn tượng hơn trong mắt nhiều người. Từ một diễn viên tay ngang, Hoàng Phi đã khiến nhiều người bất ngờ khi trở thành một trong những tên tuổi nổi tiếng nhất sân khấu hài kịch hiện nay. 
         
        Hoàng Phi gây ấn tượng mạnh trong Chuyện tình Bangkok
        
        Hoàng Phi khiến khán giả không dứt được những tràng cười khi hóa thân khi vào rất nhiều vai diễn khác nhau
        
        Điều thu hút ở sân khấu kịch nổi tiếng nhất nhì Sài Gòn này là đa số các diễn viên đều có khả năng diễn khá cứng tay và chuyên nghiệp vì tốt nghiệp từ chính trường Cao đẳng Sân khấu điện ảnh, nơi diễn ra các suất diễn. Vì thế, không hẳn chỉ có mỗi Hoàng Phi và Thu Trang xuất hiện mới có những tràng pháo tay mà đoạn diễn của những diễn viên phụ khác cũng hay và thu hút không kém.
        
         
        
        Bộ ba Hải Triều, Pucca, Diệu Như luôn là "nhóm siêu quậy" nhất trong đa số các vở kịch có thể gây cười xuyên suốt và kết hợp rất tốt với các vai chính của toàn bộ vở kịch. Chính nhờ những ấn tượng này mà Hải Triều ngày càng được chú ý và mời tham gia nhiều chương trình truyền hình bên ngoài.
         
         
        Với vẻ ngoài điển trai, Quang Tuấn luôn được giao các vai nam chính trong các vở kịch. Tuy không chọc cười khán giả nhiều nhưng anh lại là một màu sắc không thể thiếu và tạo ra nhiều đất diễn kết hợp cho các đồng nghiệp chuyên trị gây cười khác
         
        
        Khả Như cũng là một trong những gương mặt trẻ được đánh giá cao trong thời gian gần đây. Vai cô nàng tiểu thư bướng bỉnh trong Chuyện tình Bangkok của cô cũng khiến khán giả phải cười lăn lộn với những câu thoại duyên dáng mà "rất tỉnh" của mình. Khả Như hiện cũng gây chú ý khi tham gia Cùng nhau tòa sáng
        
        
        
        La Thành không thường được phân vào các vai quan trọng nhưng cách diễn dí dỏm, ngô nghê của anh chàng này lại khiến rất nhiều người thích thú. Ngày càng La Thành càng thể hiện sự chuyên nghiệp khi có thể hóa thân thành nhiều vai nặng kí và đa dạng hơn.`},
      ]);
    });
};
