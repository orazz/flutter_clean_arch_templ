import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arch_templ/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_templ/features/home/domain/entities/character.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({super.key, required this.item, required this.onCharacterClick});

  final CharacterEntity item;
  final Function() onCharacterClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCharacterClick,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: SizedBox(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _ItemPhoto(item: item),
              _ItemDescription(item: item),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemDescription extends StatelessWidget {
  const _ItemDescription({required this.item});

  final CharacterEntity item;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(DEFAULT_BORDER_RADIUS),
            bottomRight: Radius.circular(DEFAULT_BORDER_RADIUS),
          ),
          color: colorScheme.surfaceVariant,
        ),
        child: Padding(
          padding: const EdgeInsets.all(DEFAULT_PADDING),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 4),
              Text(
                item.name ?? "",
                style: textTheme.bodyMedium!.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Status: ${item.isAlive ? 'ALIVE' : 'DEAD'}',
                style: textTheme.labelSmall!.copyWith(
                  color: item.isAlive ? Colors.lightGreen : Colors.redAccent,
                ),
              ),
              Text(
                'Last location: ${item.location?.name ?? ''}',
                style: textTheme.labelSmall!.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemPhoto extends StatelessWidget {
  const _ItemPhoto({required this.item});

  final CharacterEntity item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(DEFAULT_BORDER_RADIUS), bottomLeft: Radius.circular(DEFAULT_BORDER_RADIUS)),
      child: SizedBox(
        height: DEFAULT_ITEM_HEIGHT,
        child: CachedNetworkImage(
          height: DEFAULT_ITEM_HEIGHT,
          width: DEFAULT_ITEM_HEIGHT,
          imageUrl: item.image!,
          fit: BoxFit.cover,
          errorWidget: (ctx, url, err) => const Icon(Icons.error),
          placeholder: (ctx, url) => const Icon(Icons.image),
        ),
      ),
    );
  }
}