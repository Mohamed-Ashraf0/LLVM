# How to Build a Custom LLVM Pass

1. **Download LLVM Source**  
   Download LLVM 16.0.6 from:  
   [https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.6/llvm-project-16.0.6.src.tar.xz](https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.6/llvm-project-16.0.6.src.tar.xz)

2. **Extract the Archive**  
   Extract `llvm-project-16.0.6.src.tar.xz` to a folder.

3. **Create the Build Directory**  
   Create a folder named `llvm-build`.

4. **Configure the Build**  
   From inside `llvm-build`, run in **PowerShell** or **x64 Native Tools Command Prompt for VS 2022**:  
   ```powershell
   cmake -G "Visual Studio 17 2022" -A x64 -T host=x64 ^
     -DLLVM_ENABLE_PROJECTS="clang" ^
     -DCMAKE_BUILD_TYPE=Debug ^
     -DLLVM_TARGETS_TO_BUILD="X86" ^
     -DCMAKE_INSTALL_PREFIX="C:\Users\Moham\OneDrive\Desktop\llvm\llvm-install" ^
     ..\llvm-project-16.0.6\llvm

5. **Build and Install LLVM**  
   In the `llvm-build` directory, run:  

   ```powershell
   cmake --build . --config Release --target install
   After finishing (this can take 1–2 hours), you will get a copy of:
   -All final binaries (clang.exe, opt.exe, llc.exe, etc.)
   -LLVM headers
   -LLVM libraries

6. **Create Your Pass Folder**  
   Create a folder named `my-pass` that will contain your custom LLVM pass.  
   Include the provided `CMakeLists.txt` file and create a `build` directory inside it.  

7. **Configure the Pass Build**  
   From inside the `build` directory of your pass, run:  

   ```powershell
   cmake -G "Visual Studio 17 2022" -A x64 -Thost=x64 -DLLVM_DIR="C:/your/actual/llvm/install/lib/cmake/llvm" ..

8. **Build Your Pass**  
   In the `build` directory of your pass, run:  

   ```powershell
   cmake --build . --config Release

9. **Prepare a Test File**  
   Create a simple `.c` or `.cpp` source file (e.g., `test.c`) that you will use to test your custom pass.  

10. **Generate LLVM IR**  
    Use `clang` from your LLVM installation to compile the test file into LLVM IR:  

    ```powershell
    clang -O1 -S -emit-llvm test.c -o test.ll
    ```
11. **Run Your Custom Pass**  
    Use `opt` from your LLVM installation to run your pass on the generated LLVM IR file:  

    ```powershell
    opt -load-pass-plugin ./build/MyPass.dll -passes="my-pass" test.ll -disable-output
    ```
12. **Verify the Pass Output**  
    If your pass modifies the IR, you can output the transformed IR to a file:  

    ```powershell
    opt -load-pass-plugin ./build/MyPass.dll -passes="my-pass" test.ll -S -o output.ll
    ```
