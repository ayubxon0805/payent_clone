import 'package:flutter/material.dart';

class AllTransactionsWidget extends StatelessWidget {
  const AllTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildTransferProfile(
              'Sardor',
              'https://static6.tgstat.ru/channels/_0/b0/b0400649f7b1a91055272a49eff8f608.jpg',
              'https://static6.tgstat.ru/channels/_0/b0/b0400649f7b1a91055272a49eff8f608.jpg'),
          _buildTransferProfile(
              'Dilshod',
              'https://uba.uz/upload/iblock/7de/uzpsb.jpg',
              'https://uba.uz/upload/iblock/7de/uzpsb.jpg'),
          _buildTransferProfile(
              'Malika',
              'https://www.ipotekabank.uz/upload/iblock/063/ch2ijun89xldke1d059d6kupfkgi53k4.png',
              'https://www.ipotekabank.uz/upload/iblock/063/ch2ijun89xldke1d059d6kupfkgi53k4.png'),
          _buildTransferProfile(
              'Aziz',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3G2tDj_DqKMP1JlqdtLX0rI4vP68RUk_U3yufmMmnKjWxDpZ42e7XpiOMVfE2LTsZzzw&usqp=CAU',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3G2tDj_DqKMP1JlqdtLX0rI4vP68RUk_U3yufmMmnKjWxDpZ42e7XpiOMVfE2LTsZzzw&usqp=CAU'),
          _buildTransferProfile(
              'Bobomurod',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiW5wvw8ewiFwoT3JQiIMunkSFLhKM3kSwCVR9XSsBNpuROItAXMUnB7lyc-JCxowW8CM&usqp=CAU',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiW5wvw8ewiFwoT3JQiIMunkSFLhKM3kSwCVR9XSsBNpuROItAXMUnB7lyc-JCxowW8CM&usqp=CAU'),
          _buildTransferProfile(
              'Abdulloh',
              'https://bank.uz/upload/resize_cache/iblock/81c/300_209_1/smnv0hygbj60d373zn8fxhma86mkb3ok.webp',
              'https://bank.uz/upload/resize_cache/iblock/81c/300_209_1/smnv0hygbj60d373zn8fxhma86mkb3ok.webp'),
          _buildTransferProfile(
              'Asilbek',
              'https://smebanking.agency/club/wp-content/uploads/sites/7/2024/09/TBC-Uzbekistan.jpg',
              'https://smebanking.agency/club/wp-content/uploads/sites/7/2024/09/TBC-Uzbekistan.jpg'),
          _buildTransferProfile(
              'Ayubxon',
              'https://play-lh.googleusercontent.com/-6eNFyH_LcDXOK_9aB7SiDhqIclKBjHXNbtzyGe86M4y2UdaHkfJnIr37TPzyGpvzkg=w240-h480-rw',
              'https://play-lh.googleusercontent.com/-6eNFyH_LcDXOK_9aB7SiDhqIclKBjHXNbtzyGe86M4y2UdaHkfJnIr37TPzyGpvzkg=w240-h480-rw'),
        ],
      ),
    );
  }

  Widget _buildTransferProfile(String name, String userImage, String bankLogo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(userImage),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(bankLogo),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
