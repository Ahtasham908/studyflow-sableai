from PyInstaller.utils.hooks import collect_submodules

a = Analysis(['main.py'], pathex=[], binaries=[], datas=[('assets','assets')],
 hiddenimports=collect_submodules('google.genai')+['keyring.backends.Windows'], hookspath=[], runtime_hooks=[], excludes=['PySide6.QtWebEngineWidgets','PySide6.QtWebEngineCore','PySide6.QtQml'])
pyz = PYZ(a.pure)
exe = EXE(pyz,a.scripts,[],exclude_binaries=True,name='StudyFlow',debug=False,bootloader_ignore_signals=False,strip=False,upx=False,console=False,icon='assets/StudyFlow.ico')
coll = COLLECT(exe,a.binaries,a.datas,strip=False,upx=False,name='StudyFlow')
