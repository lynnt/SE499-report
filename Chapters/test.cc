_Task T {
    std::string name;

    void a(int param) {
        if ( param != 0 ) a( param - 1 );
        int x = 3;
        std::string y = "example";
    }
    void main() {
        a(3);
    }
  public:
    T(const int tid) {
        name = "T" + std::to_string(tid);
        setName(name.c_str());
    }
};

int main() {
    // set the number of processors
    uProcessor procs[3];
    const int numTasks = 10;
    T* tasks[numTasks];

    // initialize all tasks T
    for (int id = 0; id < numTasks; id += 1) {
        tasks[id] = new T(id);
    }
    // clean up all tasks
    for (int id = 0; id < numTasks; id += 1) {
        delete tasks[id];
    }
}
