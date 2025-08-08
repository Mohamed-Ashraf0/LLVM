# How to Build MLIR from Source and Write a Custom Pass

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
   -DLLVM_ENABLE_PROJECTS="clang;mlir" ^
   -DCMAKE_BUILD_TYPE=Debug ^
   -DLLVM_TARGETS_TO_BUILD="X86" ^
   -DLLVM_ENABLE_RTTI=ON ^
   -DLLVM_ENABLE_ASSERTIONS=ON ^
   -DCMAKE_INSTALL_PREFIX="C:\Users\Moham\OneDrive\Desktop\llvm\llvm-install" ^
   ..\llvm-project-16.0.6.src\llvm


5. **Build and Install LLVM**  
   In the `llvm-build` directory, run:  

   ```powershell
   cmake --build . --config Release --target install

After finishing (this can take 1–2 hours), you will get a copy of:
   -mlir-opt.exe (MLIR optimizer tool)
   -mlir-translate.exe (MLIR conversion tool)
   -MLIR headers and libraries in llvm-install

6. **Create Your MLIR Pass Folder**  
   Create a folder named `mlir-pass` that will contain your custom LLVM pass.  
   Include the provided `CMakeLists.txt` file and create a `build` directory inside it.  

7. **Configure the Pass Build**  
   From inside the `build` directory of your pass, run:  

   ```powershell
   cmake -G "Visual Studio 17 2022" -A x64 -Thost=x64 ^
   -DMLIR_DIR="C:/Users/Moham/OneDrive/Desktop/llvm/llvm-install/lib/cmake/mlir" ^
   -DLLVM_DIR="C:/Users/Moham/OneDrive/Desktop/llvm/llvm-install/lib/cmake/llvm" ^..

8. **Build Your Pass**  
   In the `build` directory of your pass, run:  

   ```powershell
   cmake --build . --config Release

9. **Prepare a Test File**  
   Create a simple `.c` or `.cpp` source file (e.g., `test.c`) that you will use to test your custom pass.  

10. **Generate MLIR**  
    Use `clang` from your LLVM installation to compile the test file into MLIR:  
      
    ```powershell
    clang --emit-mlir -S test.cpp -o test.mlir
    ```
11. **Run Your Custom Pass**  
    Use `mlir-opt` from your LLVM installation to run your pass on the generated LLVM IR file:  

    ```powershell
    mlir-opt test.mlir -load-pass-plugin ./build/MyPass.dll -passes="my-pass" -o output.mlir
    ```
12. **Verify the Pass Output**  
    Open output.mlir to inspect the changes made by your pass.
