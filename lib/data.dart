import 'package:learn_cooking/models/category.dart';
import 'package:learn_cooking/models/meal.dart';
import 'package:learn_cooking/models/step.dart';
import 'package:learn_cooking/models/tip.dart';

const List<Category> categories = [
  Category(
    id: 'c1',
    title: 'Món canh',
    image: 'assets/images/categories/mon-canh.png',
  ),
  Category(
    id: 'c2',
    title: 'Món bánh',
    image: 'assets/images/categories/mon-banh.png',
  ),
  Category(
    id: 'c3',
    title: 'Món chè',
    image: 'assets/images/categories/mon-che.png',
  ),
];

const List<Meal> meals = [
  Meal(
    id: 'm1',
    title: 'Bồ câu hầm đậu đen hạt sen',
    subtitle:
        'Nếu bạn chưa biết nấu món gì với bồ câu thì hãy cùng Điện máy XANH vào bếp học ngay cách nấu món bồ câu hầm đậu đen hạt sen này nhé. Món canh này không chỉ thơm ngon đậm đà mà còn có nhiều dưỡng chất tốt cho sức khỏe, cách làm thì vô cùng dễ.',
    categories: [
      'c1',
    ],
    prepare: 30,
    processing: 90,
    complexity: Complexity.simple,
    coverImage:
        'assets/images/meals/cach-lam-bo-cau-ham-dau-den-ngon-tuyet-boi-bo-duong-chat-cho-avt-1200x676.jpg',
    ingredients: [
      'Bồ câu 1 con',
      'Đậu gà 10 gr',
      'Đậu đen 10 gr',
      'Hạt sen 10 gr',
      'Kỷ tử 5 gr',
      'Củ hành tây 1/2 củ',
      'Hành lá 1 ít',
      'Bột nêm rau củ 1 muỗng cà phê',
      'Muối/ hạt tiêu 1 ít',
    ],
    tips: [
      Tip(
        title: 'Cách chọn mua bồ câu tươi ngon, không tanh',
        descriptions: [
          'Nếu mua chim bồ câu làm sẵn, bạn nên lựa những con nhìn còn tươi, da có màu hồng không bị tái.',
          'Nếu bạn mua chim còn sống thì nên chọn những con từ 10 - 15 ngày tuổi vì thịt chim trong lúc này sẽ ngon và có nhiều đạm, mang nhiều chất dinh dưỡng.',
          'Lúc mua, bạn nên dở cánh chim lên, dùng tay ấn nhẹ vào, nếu thấy thịt càng dày là chim bồ câu càng ngon. Ngoài ra, bạn dùng tay ấn vào phần ức xem thịt ức có mềm không, nếu thịt phần này mềm thì đó là chim ngon.',
          'Không chọn mua những con có màu tái, có mùi hôi, thịt mềm nhũn, không săn chắc. Ngoài ra bạn cũng không nên chọn những con quá nhỏ hay quá to vì thịt sẽ không ngon bằng những con vừa phải.',
        ],
      ),
      Tip(
        title: 'Cách chọn mua đậu đen tròn mẩy, thơm ngon',
        descriptions: [
          'Bạn nên chọn mua đậu đen lòng xanh bởi có vị thơm ngon và nhiều chất dinh dưỡng hơn đậu đen lòng trắng. Hãy chọn những hạt đậu có kích thướng đồng đều, lớp vỏ bóng.',
          'Bạn dùng tay bóp mạnh vào hạt, nếu hạt đậu không biến dạng thì là hạt ngon. Còn nếu bóp nghe tiếng kêu thì chắc chắn hạt bị rỗng ruột, không nên chọn loại hạt này.',
          'Tránh mua những hạt bị lép, có mùi mốc, màu sắc nhợt nhạt vì đó là dấu hiệu đậu đã bị để lâu ngày và sắp ẩm mốc.',
          'Đối với các loại đậu, trước khi nấu bạn cần ngâm tối thiểu 7 - 8 tiếng để loại bỏ chất tanin trong đậu đi nhé.',
        ],
      ),
      Tip(
        title: 'Cách chọn mua hạt sen ngon ngọt',
        descriptions: [
          'Bạn nên chọn mua hạt sen vừa hái và còn trên đài sen. Khi đó bạn có thể chọn được những hạt sen tươi ngon và chất lượng nhất.',
          'Hạt sen già sẽ có màu trắng ngà hoặc vàng đậm, lớp ngoài căng tròn, đặc biệt những hạt sen này ăn sẽ rất thơm ngon, không bị sượng và khi chế biến sẽ có mùi thơm đặc trưng.',
          'Để mua được hạt sen tươi ngon, nên chọn mua loại hạt chưa tách vỏ, vẫn còn tâm sen.',
          'Tránh mua hạt sen đã được tách sẵn nhưng có dấu hiệu bị ẩm móc.',
        ],
        images: [
          'assets/images/tips/bo-cau-ham-dau-den-hat-sen-note-1200x676.jpg',
        ],
      ),
    ],
    steps: [
      Step(
        no: 1,
        title: 'Sơ chế nguyên liệu',
        descriptions: [
          'Để khử đi mùi hôi của chim bồ câu, sau khi mua về, bạn làm sạch hết lông còn sót lại rồi rửa qua nước muối và rửa lại với nước sạch.',
          'Sau đó, bạn bật bếp ga lên và hơ chim bồ câu đến khi lớp da ngoài của chim săn lại, sau đó rửa sạch lần nữa và để ráo nước.',
          'Đậu đen mua về bạn rửa sơ qua 1 lần nước cho sạch bụi bẩn, rồi ngâm trong khoảng 2 tiếng cho hạt đậu nở.',
          'Hạt sen, đậu gà thì bạn rửa sạch.',
          'Hành tây thì lột bỏ vỏ rồi cắt miếng vừa ăn. Hành lá nhặt bỏ rễ, rửa sạch rồi cắt nhỏ.',
        ],
        images: [
          'assets/images/steps/so-che-nguyen-lieu-85.jpg',
          'assets/images/steps/so-che-nguyen-lieu-101.jpg',
        ],
      ),
      Step(
        no: 2,
        title: 'Hầm bồ câu',
        descriptions: [
          'Bạn bắc nồi đất lên bếp rồi đun sôi nước ở lửa lớn, sau đó cho 10gr hạt sen và các loại đậu gồm 10gr đậu gà, 10gr đậu đen vào và hầm trong 15 phút để hạt đậu chín mềm.',
          'Sau 15 phút, bạn cho bồ câu vào nấu chung và vặn nhỏ lửa lại.',
        ],
        images: [
          'assets/images/steps/ham-bo-cau-1.jpg',
          'assets/images/steps/ham-bo-cau.jpg',
        ],
      ),
      Step(
        no: 3,
        title: 'Nêm nếm và hoàn thiện bồ câu hầm đậu đen',
        descriptions: [
          'Đợi khi nước sôi trở lại, bạn nêm vào nồi 1 muỗng cà phê bột nêm rau củ cho nước được đậm đà hơn.',
          'Sau đó, bạn cho thêm 5gr kỉ tử, 1/2 củ hành tây đã cắt vào và hầm thêm khoảng 1 tiếng.',
          'Cuối cùng, bạn cho 1 muỗng cà phê hạt tiêu đen cùng hành lá cắt nhỏ vào nồi, nêm nếm gia vị lại cho vừa ăn rồi tắt bếp.',
        ],
        images: [
          'assets/images/steps/nem-nem-va-hoan-thien-bo-cau-ham-dau-den.jpg',
          'assets/images/steps/nem-nem-va-hoan-thien-bo-cau-ham-dau-den-3.jpg',
          'assets/images/steps/nem-nem-va-hoan-thien-bo-cau-ham-dau-den-1.jpg',
          'assets/images/steps/nem-nem-va-hoan-thien-bo-cau-ham-dau-den-2.jpg',
        ],
      ),
      Step(
        no: 4,
        title: 'Thành phẩm',
        descriptions: [
          'Bồ câu hầm đậu đen hạt sen có màu sắc hấp dẫn. Thịt chim thơm, mềm béo, kết hợp đậu đen, đậu gà cùng hạt sen bùi bùi, nước hầm ngọt thanh, đậm đà vô cùng thơm ngon, bổ dưỡng.',
          'Bạn múc canh ra tô, dùng khi còn nóng là ngon nhất nhé!',
        ],
        images: [
          'assets/images/steps/thanh-pham-74.jpg',
          'assets/images/steps/thanh-pham-94.jpg',
        ],
      ),
    ],
  ),
  Meal(
    id: 'm2',
    title: 'Pancake sữa chua dâu tây bằng chảo chống dính',
    subtitle:
        'Chỉ với những nguyên liệu đơn giản như trứng gà, sữa tươi, sữa chua, bột yến mạch,... và một chiếc chảo chống dính, bạn đã có thể làm món bánh pancake thơm ngon cho bữa ăn sáng. Cùng vào bếp với Điện máy XANH học ngay cách làm pancake sữa chua dâu tây ngay nhé!',
    categories: [
      'c2',
    ],
    prepare: 15,
    processing: 10,
    complexity: Complexity.simple,
    coverImage:
        'assets/images/meals/cach-lam-pancake-sua-chua-dau-tay-bang-chao-chong-dinh-thom-avt-1200x676.jpg',
    ingredients: [
      'Trứng gà 1 quả',
      'Sữa tươi 20 ml',
      'Bột yến mạch 50 gr',
      'Mật ong 15 gr',
      'Sữa chua 100 gr',
      'Mứt dâu 1 ít',
    ],
    ingredientImages: [
      'assets/images/ingredients/pancake-sua-chua-dau-tay-note-1200x676.jpg'
    ],
    steps: [
      Step(
        no: 1,
        title: 'Trộn bột',
        descriptions: [
          'Đầu tiên, bạn đập 1 quả trứng và cho vào tô sau đó cho 20ml sữa tươi cùng 15gr mật ong, 50gr bột yến mạch vào.',
          'Tiếp đó, bạn dùng muỗng trộn đều cho tới khi hỗn hợp bột sánh, mịn, không vón cục là đạt.',
        ],
        images: [
          'assets/images/steps/tron-bot-5.jpg',
          'assets/images/steps/tron-bot-4.jpg',
          'assets/images/steps/tron-bot-3.jpg',
        ],
      ),
      Step(
        no: 2,
        title: 'Rán bánh',
        descriptions: [
          'Bạn bắc chảo lên bếp, vặn lửa vừa rồi đợi chảo nóng. Sau đó, bạn đổ 1 muỗng canh bột vào chảo và dàn đều để rán.',
          'Đến khi mặt trên của bánh nổi bong bóng, bạn lật bánh lại rồi rán thêm khoảng 10 - 15 giây là hoàn thành. Bạn tiếp tục rán đến khi hết bột.',
        ],
        images: [
          'assets/images/steps/ran-banh-1.jpg',
          'assets/images/steps/ran-banh.jpg',
        ],
      ),
      Step(
        no: 3,
        title: 'Hoàn thành bánh pancake sữa chua dâu tây',
        descriptions: [
          'Sau khi rán xong, bạn xếp từng lát bánh lên đĩa rồi cho mứt dâu tây vào giữa, sau đó tiếp tục xếp các lát bánh lên trên. Cuối cùng, bạn cho sữa chua phủ lên toàn bộ bánh là hoàn thành.',
        ],
        images: [
          'assets/images/steps/hoan-thanh-banh-pancake-sua-chua-dau-tay.jpg',
          'assets/images/steps/hoan-thanh-banh-pancake-sua-chua-dau-tay-1.jpg',
        ],
      ),
      Step(
        no: 4,
        title: 'Thành phẩm',
        descriptions: [
          'Pancake sữa chua dâu tây có dạng hình tròn, được phủ lớp sữa chua màu trắng bên ngoài, cốt bánh xốp và mịn, không bị khô. Khi ăn, bạn có thể cảm nhận được mùi thơm hòa quyện của sữa và mật ong cùng với vị béo ngọt vừa phải, vị chua nhẹ từ sữa chua.',
          'Nếu ăn không hết bánh, bạn có thể đậy kín và bảo quản trong ngăn mát tủ lạnh nhé!',
        ],
        images: [
          'assets/images/steps/thanh-pham-130.jpg',
        ],
      ),
    ],
  ),
  Meal(
    id: 'm3',
    title: 'Chè hạt sen đậu xanh',
    subtitle:
        'Chè hạt sen đậu xanh thanh mát, ngọt bùi là món ăn mát lạnh giúp giải nhiệt mùa hè được nhiều người lựa chọn. Hãy cùng vào bếp với Điện máy XANH thực hiện món chè thơm ngon này như một cách để nạp lại năng lượng cho những ngày rảnh rỗi nhé!',
    categories: [
      'c3',
    ],
    prepare: 30,
    processing: 40,
    complexity: Complexity.simple,
    coverImage:
        'assets/images/meals/cach-nau-che-dau-xanh-hat-sen-thom-ngon-thanh-mat-cho-ca-nha-avt-1200x676.png',
    ingredients: [
      'Hạt sen tươi 300 gr',
      'Đậu xanh 200 gr',
      'Đường 300 gr',
      'Vani 2 ống',
      'Muối 1/4 muỗng cà phê',
    ],
    tips: [
      Tip(
        title: 'Cách chọn mua hạt sen tươi ngon',
        descriptions: [
          'Để mua được hạt sen vẫn giữ được độ tươi ngon, bạn nên mua hạt sen ngay tại đầm sen hoặc hạt sen chưa tách vỏ.',
          'Nên chọn mua những hạt sen đã già, tránh mua hạt sen đang còn non bởi vì khi nấu hạt sen non sẽ dễ bị sượng và không có vị bùi bùi như hạt sen già.',
          'Hạn chế chọn mua hạt sen đã được sơ chế và phơi khô vì loại hạt sen này khi nấu chè sẽ bớt đi hương vị thơm ngon của hạt sen.',
        ],
      ),
      Tip(
        title: 'Cách chọn mua đậu xanh cà vỏ ngon',
        descriptions: [
          'Nên chọn và mua hạt đậu căng, không bị lép, không bị sâu mọt, các hạt tương đối đều nhau.',
          'Lựa chọn hạt đậu có mùi thơm nhẹ đặc trưng của đậu xanh, đều màu và không bị loang lỗ.',
          'Không nên mua những hạt đậu không đều màu hay có mùi ẩm mốc, bóp thử thấy hạt không cứng mà bị mềm, bở.',
        ],
      ),
    ],
    ingredientImages: [
      'assets/inages/ingredients/che-hat-sen-dau-xanh-note-1200x676.jpg'
    ],
    steps: [
      Step(
        no: 1,
        title: 'Sơ chế các nguyên liệu',
        descriptions: [
          'Hạt sen tươi mua về bạn rửa sạch và để ráo, nếu hạt sen còn tim sen thì bạn tách bỏ tim sen đi để tránh hạt sen khi ăn bị đắng.',
          'Đậu xanh thì bạn rửa qua vài lần với nước cho sạch bụi rồi ngâm vào nước ấm khoảng 1 - 2 tiếng để giúp đậu xanh mềm, dễ nấu hơn.',
        ],
        images: [
          'assets/images/steps/1.1fix.png',
          'assets/images/steps/1.2fix.png',
          'assets/images/steps/1.3fix.png',
        ],
      ),
      Step(
        no: 2,
        title: 'Nấu chè hạt sen đậu xanh',
        descriptions: [
          'Bắc nồi lên bếp cho vào 400ml nước rồi đun sôi, sau đó cho hạt sen vào luộc trong 15 phút, tiếp tục cho đậu xanh vào nấu cùng thêm khoảng 30 phút.',
          'Sau khi hạt sen mềm bùi và đậu mềm bạn cho vào 2 ống vani, 1 xíu muối và 300gr đường, sau đó đảo đều cho đường tan và nêm nếm lại vị ngọt cho vừa ăn rồi tắt bếp.',
        ],
        images: [
          'assets/images/steps/nau-che-hat-sen-dau-xanh.png',
          'assets/images/steps/nau-che-hat-sen-dau-xanh-1.png',
          'assets/images/steps/xao-nhan-xoi.png',
          'assets/images/steps/xao-nhan-xoi-3.png',
        ],
      ),
      Step(
        no: 3,
        title: 'Thành phẩm',
        descriptions: [
          'Món chè hạt sen đậu xanh thanh mát có vị ngọt nhẹ cùng với sự mềm bùi của đậu và hạt sen, ăn cực thích.',
          'Nếu ăn nóng thì bạn chỉ cần múc ra chén và ăn ngay. Còn nếu muốn ăn lạnh thì hãy thêm đá hoặc để trong ngăn mát tủ lạnh 1 - 2 giờ là bạn có thể thưởng thức món chè thanh mát, bổ dưỡng này rồi.',
          'Đây chắc chắn sẽ là món chè giải nhiệt cho gia đình mình những ngày nắng nóng.',
        ],
        images: [
          'assets/images/steps/thanh-pham.png',
        ],
      ),
    ],
  ),
];
