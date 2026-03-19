import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/widgets/widgets.dart';
import 'package:flutter_application_1/features/mahasiswa_aktif/presentation/providers/mahasiswa_aktif_provider.dart';
import 'package:flutter_application_1/features/mahasiswa_aktif/presentation/widgets/mahasiswa_aktif_widget.dart';

class MahasiswaAktifPage extends ConsumerWidget {
  const MahasiswaAktifPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mahasiswaAktifState = ref.watch(mahasiswaAktifNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mahasiswa Aktif'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              ref.invalidate(mahasiswaAktifNotifierProvider);
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: mahasiswaAktifState.when(
        loading: () => const LoadingWidget(),
        error: (error, stack) => CustomErrorWidget(
          message: 'Gagal memuat data: ${error.toString()}',
          onRetry: () {
            ref.read(mahasiswaAktifNotifierProvider.notifier).refresh();
          },
        ),
        data: (mahasiswaAktifList) {
          if (mahasiswaAktifList.isEmpty) {
            return const Center(child: Text('Tidak ada data mahasiswa aktif'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(mahasiswaAktifNotifierProvider);
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: mahasiswaAktifList.length,
              itemBuilder: (context, index) {
                final mahasiswaAktif = mahasiswaAktifList[index];
                return MahasiswaAktifCard(
                  mahasiswaAktif: mahasiswaAktif,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Detail: ${mahasiswaAktif.title}'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}