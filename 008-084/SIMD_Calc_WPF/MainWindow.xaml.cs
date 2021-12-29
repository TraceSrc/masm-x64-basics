using System.Runtime.InteropServices;
using System.Windows;

namespace SIMD_Calc_WPF
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static float[] array1 = new float[8];
        public static float[] array2 = new float[8];
        public static float[] array3 = new float[8];

        private const string LibraryPath = @"..\..\..\x64\Debug\AsmLib.dll";

        [DllImport(LibraryPath)]
        private static unsafe extern void InitProc(float* arg1, float* arg2, float* arg3);
        [DllImport(LibraryPath)]
        private static unsafe extern void AddProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void SubProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void MulProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void DivProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void AndProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void AndNProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void OrProc();
        [DllImport(LibraryPath)]
        private static unsafe extern void XorProc();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnSampleData_Click(object sender, RoutedEventArgs e)
        {
            txtOperand1a.Text = "0,25";
            txtOperand2a.Text = "128";
            txtOperand3a.Text = "1234";
            txtOperand4a.Text = "-3";
            txtOperand5a.Text = "12";
            txtOperand6a.Text = "1,111";
            txtOperand7a.Text = "3,0";
            txtOperand8a.Text = float.MaxValue.ToString();

            txtOperand1b.Text = "2";
            txtOperand2b.Text = "55";
            txtOperand3b.Text = "3,5";
            txtOperand4b.Text = "12,12345";
            txtOperand5b.Text = "8";
            txtOperand6b.Text = "99";
            txtOperand7b.Text = "-4";
            txtOperand8b.Text = "1";
        }

        private bool ParseFloatOperands()
        {
            try
            {
                array1[0] = float.Parse(txtOperand1a.Text);
                array1[1] = float.Parse(txtOperand2a.Text);
                array1[2] = float.Parse(txtOperand3a.Text);
                array1[3] = float.Parse(txtOperand4a.Text);
                array1[4] = float.Parse(txtOperand5a.Text);
                array1[5] = float.Parse(txtOperand6a.Text);
                array1[6] = float.Parse(txtOperand7a.Text);
                array1[7] = float.Parse(txtOperand8a.Text);

                array2[0] = float.Parse(txtOperand1b.Text);
                array2[1] = float.Parse(txtOperand2b.Text);
                array2[2] = float.Parse(txtOperand3b.Text);
                array2[3] = float.Parse(txtOperand4b.Text);
                array2[4] = float.Parse(txtOperand5b.Text);
                array2[5] = float.Parse(txtOperand6b.Text);
                array2[6] = float.Parse(txtOperand7b.Text);
                array2[7] = float.Parse(txtOperand8b.Text);
            }
            catch (System.Exception)
            {
                MessageBox.Show("Entered value is not a valid float number.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
            return true;
        }

        private void ShowFloatResults()
        {
            if (checkScientificNotation.IsChecked == true)
            {
                txtResult1.Text = array3[0].ToString();
                txtResult2.Text = array3[1].ToString();
                txtResult3.Text = array3[2].ToString();
                txtResult4.Text = array3[3].ToString();
                txtResult5.Text = array3[4].ToString();
                txtResult6.Text = array3[5].ToString();
                txtResult7.Text = array3[6].ToString();
                txtResult8.Text = array3[7].ToString();
            }
            else
            {
                txtResult1.Text = array3[0].ToString("0." + new string('#', 300));
                txtResult2.Text = array3[1].ToString("0." + new string('#', 300));
                txtResult3.Text = array3[2].ToString("0." + new string('#', 300));
                txtResult4.Text = array3[3].ToString("0." + new string('#', 300));
                txtResult5.Text = array3[4].ToString("0." + new string('#', 300));
                txtResult6.Text = array3[5].ToString("0." + new string('#', 300));
                txtResult7.Text = array3[6].ToString("0." + new string('#', 300));
                txtResult8.Text = array3[7].ToString("0." + new string('#', 300));
            }
        }

        private void btnADD_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    AddProc();
                }
            }
            ShowFloatResults();
        }

        private void btnSUB_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    SubProc();
                }
            }
            ShowFloatResults();
        }

        private void btnMUL_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    MulProc();
                }
            }
            ShowFloatResults();
        }

        private void btnDIV_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    DivProc();
                }
            }
            ShowFloatResults();
        }

        private void btnAND_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    AndProc();
                }
            }
            ShowFloatResults();
        }

        private void btnANDN_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    AndNProc();
                }
            }
            ShowFloatResults();
        }

        private void btnOR_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    OrProc();
                }
            }
            ShowFloatResults();
        }

        private void btnXOR_Click(object sender, RoutedEventArgs e)
        {
            if (ParseFloatOperands() == false)
                return;
            unsafe
            {
                fixed (float* ptr1 = array1, ptr2 = array2, ptr3 = array3)
                {
                    InitProc(ptr1, ptr2, ptr3);
                    XorProc();
                }
            }
            ShowFloatResults();
        }
    }
}
