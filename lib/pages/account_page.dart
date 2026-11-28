import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/app_assets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem(
    BuildContext context, {
    required String name,
    required int number,
  }) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Text(name, style: const TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget itemTappedTile(
    BuildContext context, {
    required String title,
    required IconData icon,
    String? subtitle,
  }) {
    final size = MediaQuery.of(context).size;
        final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: isLandscape ? size.height * 0.09 : size.height * 0.03,
        color: Theme.of(context).colorScheme.primary,
      ),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(
        Icons.chevron_right,
        size: isLandscape ? size.height * 0.09 : size.height * 0.03,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Widget personPhoto(double width, double height) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AppAssets.profilePhoto),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final nameText = Text(
      'Mona Saad',
      style: Theme.of(
        context,
      ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          if (!isLandscape) ...[
            personPhoto(size.width * 0.5, size.height * 0.25),
            nameText,
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                orderVoucherItem(context, name: 'Orders', number: 50),
                orderVoucherItem(context, name: 'Vouchers', number: 10),
              ],
            ),
            const SizedBox(height: 24),
          ],
          if (isLandscape) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    personPhoto(size.width * 0.25, size.height * 0.5),
                    const SizedBox(height: 8),
                    nameText,
                  ],
                ),
                Column(
                  children: [
                    orderVoucherItem(context, name: 'Orders', number: 50),
                    SizedBox(height: 16,),
                    orderVoucherItem(context, name: 'Vouchers', number: 10),
                  ],
                ),
              ],
            ),
          ],
          const Divider(),
          itemTappedTile(
            context,
            title: 'Past Orders',
            icon: Icons.shopping_cart,
          ),
          const Divider(),
          itemTappedTile(
            context,
            title: 'Avaliable Vouchers',
            icon: Icons.card_giftcard,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
