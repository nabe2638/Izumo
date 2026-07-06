"""
builder.py

Izumo Builder のビルド管理クラス

役割
・Build開始
・Build停止
・GUIとの責務分離

Phase 6-3
まだ build.sh は実行しません。
Phase 6-4 で process_runner.py を追加します。
"""


class Builder:
    """ビルド管理クラス"""

    def __init__(self):
        self.is_building = False

    def start_build(self):
        """Build開始"""

        if self.is_building:
            print("Build is already running.")
            return

        self.is_building = True

        print("Build started.")

    def stop_build(self):
        """Build停止"""

        if not self.is_building:
            print("No build is running.")
            return

        self.is_building = False

        print("Build stopped.")
