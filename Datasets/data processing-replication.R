library(readr)
ar1 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar1.csv", 
                col_names = FALSE)
header<- c( "total_loc", "blank_loc" ,"comment_loc","code_and_comment_loc " 
            , "executable_loc" , "unique_operands" , "unique_operators","total_operands"  
            ,"total_operators", "halstead_vocabulary" ,"halstead_length" ,"halstead_volume"  
            ,"halstead_level" , "halstead_difficulty" ,"halstead_effort" ,"halstead_error "
            ,"halstead_time" , "branch_count" , "decision_count" ,"call_pairs"  
            ,"condition_count" ,"multiple_condition_count" , "cyclomatic_complexity"  
            ,"cyclomatic_density" ,"decision_density" ,"design_complexity" ,"design_density" 
            ,"normalized_cyclomatic_complexity" , "formal_parameters" ,"defects")
names(ar1)<-header
write.csv(ar1,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar1-wh.csv",row.names=FALSE)
#_________________________
ar3 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar3.csv", 
                col_names = FALSE)
names(ar3)<-header
write.csv(ar3,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar3-wh.csv",row.names=FALSE)
#__________________________
ar4 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar4.csv", 
                col_names = FALSE)
names(ar4)<-header
write.csv(ar4,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar4-wh.csv",row.names=FALSE)
#__________________________
ar5 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar5.csv", 
                col_names = FALSE)
names(ar5)<-header
write.csv(ar5,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar5-wh.csv",row.names=FALSE)
#__________________________
ar6 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar6.csv", 
                col_names = FALSE)
names(ar6)<-header
write.csv(ar6,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/ar6-wh.csv",row.names=FALSE)
#__________________________
cm1 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/cm1.csv", 
                col_names = FALSE)
headercm<- c("loc", " v(g)" ,"ev(g)", "iv(g)" ," n" , "v" , "l" , "d" , "i" , "e" , "b", 
              "t" , "lOCode" , "lOComment" , "lOBlank" ,"locCodeAndComment" , "uniq_Op",
              "uniq_Opnd" , "total_Op" ," total_Opnd" , "branchCount" , "defects" )
names(cm1)<-headercm
write.csv(cm1,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/cm1-wh.csv",row.names=FALSE)
#__________________________
jm1 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/jm1.csv", 
                col_names = FALSE)
names(jm1)<-headercm
write.csv(jm1,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/jm1-wh.csv",row.names=FALSE)
#__________________________
kc1 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc1.csv", 
                col_names = FALSE)
names(kc1)<-headercm
write.csv(kc1,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc1-wh.csv",row.names=FALSE)
#__________________________
kc2 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc2.csv", 
                col_names = FALSE)
names(kc2)<-headercm
write.csv(kc2,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc2-wh.csv",row.names=FALSE)
#__________________________
kc3 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc3.csv", 
                col_names = FALSE)
headerkc3<- c("LOC_BLANK" ,"BRANCH_COUNT" , "CALL_PAIRS" , "LOC_CODE_AND_COMMENT" , "LOC_COMMENTS"
              , "CONDITION_COUNT" ,"CYCLOMATIC_COMPLEXITY", "CYCLOMATIC_DENSITY"," DECISION_COUNT"
              , "DECISION_DENSITY" , "DESIGN_COMPLEXITY","DESIGN_DENSITY" ,"EDGE_COUNT" ,"ESSENTIAL_COMPLEXITY"
              , "ESSENTIAL_DENSITY", "LOC_EXECUTABLE" , "PARAMETER_COUNT" , "GLOBAL_DATA_COMPLEXITY"
              , "GLOBAL_DATA_DENSITY" , "HALSTEAD_CONTENT" , "HALSTEAD_DIFFICULTY" , "HALSTEAD_EFFORT"
              , "HALSTEAD_ERROR_EST" , "HALSTEAD_LENGTH" , "HALSTEAD_LEVEL" ,"HALSTEAD_PROG_TIME"
              , "HALSTEAD_VOLUME" , "MAINTENANCE_SEVERITY" , "MODIFIED_CONDITION_COUNT" ,"MULTIPLE_CONDITION_COUNT"
              , "NODE_COUNT" ,"NORMALIZED_CYLOMATIC_COMPLEXITY" ,"NUM_OPERANDS" , "NUM_OPERATORS"
              , "NUM_UNIQUE_OPERANDS" ,"NUM_UNIQUE_OPERATORS", "NUMBER_OF_LINES" , "PERCENT_COMMENTS"
              ,"LOC_TOTAL", "Defective" )
names(kc3)<-headerkc3
write.csv(kc3,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/kc3-wh.csv",row.names=FALSE)
#__________________________
mc2 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/mc2.csv", 
                col_names = FALSE)
names(mc2)<-headerkc3
write.csv(mc2,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/mc2-wh.csv",row.names=FALSE)
#__________________________
pc1 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/pc1.csv", 
                col_names = FALSE)
headerpc<- c("LOC_BLANK" ,"BRANCH_COUNT" , "CALL_PAIRS" , "LOC_CODE_AND_COMMENT" , "LOC_COMMENTS"
              , "CONDITION_COUNT" ,"CYCLOMATIC_COMPLEXITY", "CYCLOMATIC_DENSITY"," DECISION_COUNT"
              , "DECISION_DENSITY" , "DESIGN_COMPLEXITY","DESIGN_DENSITY" ,"EDGE_COUNT" ,"ESSENTIAL_COMPLEXITY"
              , "ESSENTIAL_DENSITY", "LOC_EXECUTABLE" , "PARAMETER_COUNT" , "HALSTEAD_CONTENT" , "HALSTEAD_DIFFICULTY" , "HALSTEAD_EFFORT"
              , "HALSTEAD_ERROR_EST" , "HALSTEAD_LENGTH" , "HALSTEAD_LEVEL" ,"HALSTEAD_PROG_TIME"
              , "HALSTEAD_VOLUME" , "MAINTENANCE_SEVERITY" , "MODIFIED_CONDITION_COUNT" ,"MULTIPLE_CONDITION_COUNT"
              , "NODE_COUNT" ,"NORMALIZED_CYLOMATIC_COMPLEXITY" ,"NUM_OPERANDS" , "NUM_OPERATORS"
              , "NUM_UNIQUE_OPERANDS" ,"NUM_UNIQUE_OPERATORS", "NUMBER_OF_LINES" , "PERCENT_COMMENTS"
              ,"LOC_TOTAL", "Defective" )
names(pc1)<-headerpc
write.csv(pc1,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/pc1-wh.csv",row.names=FALSE)
#__________________________
pc3 <- read_csv("~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/pc3.csv", 
                col_names = FALSE)

names(pc3)<-headerpc
write.csv(pc3,"~/Dropbox/Ryerson/DSL/DSL presentations/replication/Datasets/pc3-wh.csv",row.names=FALSE)
#__________________________