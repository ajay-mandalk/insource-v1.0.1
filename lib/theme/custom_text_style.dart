import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOpenSans => theme.textTheme.bodyLarge!.openSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
      );
  static get bodySmallNunitoBluegray10002 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.blueGray10002,
        fontSize: 11.fSize,
      );
  static get bodySmallNunitoSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallNunitoSansOnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.nunitoSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.56),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainerLight =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.67),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimaryContainer_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallPoppinsGray300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray300,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsGray50002 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50002,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallRedA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA700,
      );
  // Headline style
  static get headlineSmallOpenSans => theme.textTheme.headlineSmall!.openSans;
  // Label text style
  static get labelLargeBluegray10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreenA70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA70002,
      );
  static get labelLargeMontserrat =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratOnPrimaryContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeMontserratOnPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.59),
      );
  static get labelLargeMontserrat_1 => theme.textTheme.labelLarge!.montserrat;
  static get labelLargeNunito => theme.textTheme.labelLarge!.nunito.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeNunitoSans =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeNunitoSansPrimary =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
      );
  static get labelLargeOnPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.59),
      );
  static get labelLargeOnPrimaryContainer_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOutfit => theme.textTheme.labelLarge!.outfit.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOutfitGray500 =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOutfitYellow600 =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOutfitYellow600Bold =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOutfitYellow600Medium =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGray50001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsIndigo50 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.indigo50,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsMedium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRedA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get labelMediumNunitoSansBluegray10001 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumNunitoSansGray800 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumNunitoSansGreenA70002 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.greenA70002,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumNunitoSansRedA700 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOpenSansOnPrimaryContainer =>
      theme.textTheme.labelMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOpenSansOnPrimaryContainerSemiBold =>
      theme.textTheme.labelMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallNunitoOnPrimaryContainer =>
      theme.textTheme.labelSmall!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 8.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallNunitoOnPrimaryContainerSemiBold =>
      theme.textTheme.labelSmall!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelSmallOpenSansOnPrimaryContainer =>
      theme.textTheme.labelSmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 8.fSize,
        fontWeight: FontWeight.w600,
      );
  // Nunito text style
  static get nunitoSansOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).nunitoSans;
  static get nunitoSansPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).nunitoSans;
  // Open text style
  static get openSansOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).openSans;
  static get openSansOnPrimaryContainerSemiBold => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).openSans;
  // Title text style
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLargeBluegray10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray300,
        fontSize: 17.fSize,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumNunito19 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumNunitoMedium =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGreenA70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA70002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunito => theme.textTheme.titleSmall!.nunito.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallNunitoSansYellow700 =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: appTheme.yellow700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray500 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
