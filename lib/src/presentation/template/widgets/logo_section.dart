part of '../pages/template_page.dart';

class _LogoSection extends StatelessWidget {
  const _LogoSection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: SvgPicture.asset("assets/icons/Logo.svg"),
      ),
    );
  }
}