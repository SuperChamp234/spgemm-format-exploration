//write a program that converts given dense matrix of mxn to CSR format or CSC format based on user input
#include <iostream>

using namespace std;

//display the matrix
//arguments are matrix pointer, number of rows and number of columns
void showMatrix(float *matrix,int m,int n){
    for(int i=0;i<m;i++){
        for(int j=0;j<n;j++){
            cout<<*(matrix+i*n+j)<<" ";
        }
        cout<<endl;
    }
}

int main(){
    //take input of matrix
    int m,n;
    cout<<"Enter the number of rows and columns of the matrix: ";
    cin>>m>>n;
    float* matrix = new float[m*n];
    cout<<"Enter the matrix: "<<endl;
    for(int i=0;i<m;i++){
        for(int j=0;j<n;j++){
            cin>>matrix[i*n+j];
        }
    }
    //display the matrix
    cout<<"The matrix is: "<<endl;
    showMatrix(matrix,m,n);
    cout<<"Enter 1 for converting to CSR format and 2 for converting to CSC format: ";
    int choice;
    cin>>choice;
    if(choice==1){
        //convert to CSR format
        float nonZeroelements[m*n];
        int k=0;
        for(int i=0;i<m;i++){
            for(int j=0;j<n;j++){
                if(matrix[i*n+j]!=0){
                    nonZeroelements[k]=matrix[i*n+j];
                    k++;
                }
            }
        }
        int row_ptr[m+1];
        row_ptr[0]=0;
        int count=0;
        for(int i=0;i<m;i++){
            for(int j=0;j<n;j++){
                if(matrix[i*n+j]!=0){
                    count++;
                }
            }
            row_ptr[i+1]=count;
        }
        int col_ind[m*n];
        int l=0;
        for(int i=0;i<m;i++){
            for(int j=0;j<n;j++){
                if(matrix[i*n+j]!=0){
                    col_ind[l]=j;
                    l++;
                }
            }
        }
        cout<<"The CSR format is: "<<endl;
        cout<<"Non zero elements: ";
        for(int i=0;i<k;i++){
            cout<<nonZeroelements[i]<<" ";
        }
        cout<<endl;
        cout<<"Row pointer: ";
        for(int i=0;i<m+1;i++){
            cout<<row_ptr[i]<<" ";
        }
        cout<<endl;
        cout<<"Column index: ";
        for(int i=0;i<l;i++){
            cout<<col_ind[i]<<" ";
        }
        cout<<endl;
    }
    else if(choice==2){
        //convert to CSC format
        float nonZeroelements[m*n];
        int k=0;
        //read non zero elements column wise, all columns are read one by one
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                if(matrix[j*n+i]!=0){
                    nonZeroelements[k]=matrix[j*n+i];
                    k++;
                }
            }
        }
        int col_ptr[n+1];
        col_ptr[0]=0;
        int count=0;
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                if(matrix[j*n+i]!=0){
                    count++;
                }
            }
            col_ptr[i+1]=count;
        }
        int row_ind[m*n];
        int l=0;
        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                if(matrix[j*n+i]!=0){
                    row_ind[l]=j;
                    l++;
                }
            }
        }
        cout<<"The CSC format is: "<<endl;
        cout<<"Non zero elements: ";
        for(int i=0;i<k;i++){
            cout<<nonZeroelements[i]<<" ";
        }
        cout<<endl;
        cout<<"Column pointer: ";
        for(int i=0;i<n+1;i++){
            cout<<col_ptr[i]<<" ";
        }
        cout<<endl;
        cout<<"Row index: ";
        for(int i=0;i<l;i++){
            cout<<row_ind[i]<<" ";
        }
        cout<<endl;
    }
    else{
        cout<<"Invalid choice"<<endl;
    }
}