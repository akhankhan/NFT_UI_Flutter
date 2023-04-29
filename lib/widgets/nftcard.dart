import 'package:flutter/material.dart';
import 'package:flutter_nft_ui_desgin/colors/colors.dart';

class NFTCard extends StatelessWidget {
  final dynamic nftData;
  final dynamic handleClick;
  final double height;
  const NFTCard({
    Key? key,
    this.nftData,
    this.handleClick,
    this.height = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        handleClick?.call(context),
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 20.0),
        height: MediaQuery.of(context).size.height / height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(nftData['image']),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: white.withOpacity(0.4),
                  ),
                  child: Text(
                    '08',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    ':',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: white.withOpacity(0.4),
                  ),
                  child: Text(
                    '33',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    ':',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: white.withOpacity(0.4),
                  ),
                  child: Text(
                    '50',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nftData['name'],
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'by' + nftData['author'],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: gray,
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/ethereum.png', width: 30),
                          Text(
                            nftData['price'],
                            style: Theme.of(context).textTheme.headline4,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'CURRENT BIG',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
