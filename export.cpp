#include "squish.h"

// For exporting methods to JavaScript @takahirox

extern "C" {
	int GetStorageRequirements( int width, int height, int flags ) {
		return squish::GetStorageRequirements(width, height, flags);
	}

	void CompressImage( squish::u8 const* rgba, int width, int height, void* blocks, int flags ) {
		return squish::CompressImage(rgba, width, height, blocks, flags);
	}

	void DecompressImage( squish::u8* rgba, int width, int height, void const* blocks, int flags ) {
		return squish::DecompressImage(rgba, width, height, blocks, flags);
	}
}
