@echo on

pip install delvewheel wheel

if "%PROCESSOR_ARCHITECTURE%"=="ARM64" (
    set VCPKG_TRIPLET=arm64-windows
) else (
    set VCPKG_TRIPLET=x64-windows-release
)

vcpkg install libpq:%VCPKG_TRIPLET%

pipx install .\scripts\build\pg_config_vcpkg_stub\
