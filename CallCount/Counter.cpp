//===- CallCount.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "hello"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/InstIterator.h"

#include <iostream>
#include <map>
#include <list>
#include <vector>
#include <set>

using namespace llvm;


namespace{

    /****** analysis pass ********/
    struct CallCount : public ModulePass{
        static char ID;
	int call_count = 0;
	Function *hook1;

        CallCount() : ModulePass(ID) {}

        virtual bool runOnModule(Module &M)
        {
	    Constant *hookFunc1 = M.getOrInsertFunction("callCount", Type::getVoidTy(M.getContext()), NULL);
            hook1 = cast<Function>(hookFunc1);
	    for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F)
            {
				for(Function::iterator BB = F->begin(), E = F->end(); BB != E; ++BB)
				{
					CallCount::runOnBasicBlock(BB, M.getContext());
				}
            }

            return false;
        }

        virtual bool runOnBasicBlock(Function::iterator &BB, LLVMContext &context)
        {
			for(BasicBlock::iterator BI = BB->begin(), BE = BB->end(); BI != BE; ++BI)           
			{
				//int opcode = BI->getOpcode();
				CallInst* call_print = CallInst::Create(hook1, "");
				BB->getInstList().insert(BI, call_print);
				//call_count++;
				//errs() << call_count << '\n';
			}           
            return true;
        }
        
    };

}

char CallCount::ID = 0;
static RegisterPass<CallCount> X("CallCount", "call count", false, false);

