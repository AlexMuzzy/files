# HADOOP APPLICATION

# GENERATES NECESSARY JAVA BYTECODE &
# COMPILES HADOOP APPLICATION.

export HADOOP_HOME=$1
export HADOOP_APP_SRC=$2
export HADOOP_APP_NAME=$3
export HADOOP_APP_DIR=hadoop_app

echo "Hadoop home: "$HADOOP_HOME
echo "Hadoop App Source: "$HADOOP_APP_SRC
echo "Hadoop App Name: "$HADOOP_APP_NAME

mkdir $HADOOP_APP_DIR 

javac -cp $($HADOOP_HOME/bin/hadoop classpath) -d ./$HADOOP_APP_DIR/ $HADOOP_APP_SRC/*.java

jar -cf ./$HADOOP_APP_DIR/$HADOOP_APP_NAME.jar ./$HADOOP_APP_DIR/*.class
#Delete redundant class files
find -type f -name $HADOOP_APP_DIR/*.class -delete
