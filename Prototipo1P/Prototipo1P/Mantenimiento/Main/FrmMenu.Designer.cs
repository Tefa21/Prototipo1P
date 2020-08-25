namespace Prototipo1P
{
    partial class FrmMenu
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.Pnl_Menu = new System.Windows.Forms.Panel();
            this.Btn_Compras = new System.Windows.Forms.Button();
            this.Pnl_Contenedor = new System.Windows.Forms.Panel();
            this.Btn_Catalogo = new System.Windows.Forms.Button();
            this.Btn_Procesos = new System.Windows.Forms.Button();
            this.Btn_Informes = new System.Windows.Forms.Button();
            this.Btn_Herramientas = new System.Windows.Forms.Button();
            this.Btn_Ayudas = new System.Windows.Forms.Button();
            this.Pnl_Menu.SuspendLayout();
            this.SuspendLayout();
            // 
            // Pnl_Menu
            // 
            this.Pnl_Menu.BackColor = System.Drawing.Color.OliveDrab;
            this.Pnl_Menu.Controls.Add(this.Btn_Ayudas);
            this.Pnl_Menu.Controls.Add(this.Btn_Compras);
            this.Pnl_Menu.Controls.Add(this.Btn_Catalogo);
            this.Pnl_Menu.Controls.Add(this.Btn_Herramientas);
            this.Pnl_Menu.Controls.Add(this.Btn_Procesos);
            this.Pnl_Menu.Controls.Add(this.Btn_Informes);
            this.Pnl_Menu.Dock = System.Windows.Forms.DockStyle.Top;
            this.Pnl_Menu.Location = new System.Drawing.Point(0, 0);
            this.Pnl_Menu.Name = "Pnl_Menu";
            this.Pnl_Menu.Size = new System.Drawing.Size(996, 40);
            this.Pnl_Menu.TabIndex = 0;
            // 
            // Btn_Compras
            // 
            this.Btn_Compras.FlatAppearance.BorderSize = 0;
            this.Btn_Compras.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Compras.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Compras.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Compras.Location = new System.Drawing.Point(0, 0);
            this.Btn_Compras.Name = "Btn_Compras";
            this.Btn_Compras.Size = new System.Drawing.Size(116, 45);
            this.Btn_Compras.TabIndex = 2;
            this.Btn_Compras.Text = "Compras";
            this.Btn_Compras.UseVisualStyleBackColor = true;
            this.Btn_Compras.Click += new System.EventHandler(this.Btn_Compras_Click);
            // 
            // Pnl_Contenedor
            // 
            this.Pnl_Contenedor.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.Pnl_Contenedor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Pnl_Contenedor.Location = new System.Drawing.Point(0, 40);
            this.Pnl_Contenedor.Name = "Pnl_Contenedor";
            this.Pnl_Contenedor.Size = new System.Drawing.Size(996, 425);
            this.Pnl_Contenedor.TabIndex = 1;
            // 
            // Btn_Catalogo
            // 
            this.Btn_Catalogo.FlatAppearance.BorderSize = 0;
            this.Btn_Catalogo.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Catalogo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Catalogo.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Catalogo.Location = new System.Drawing.Point(122, 0);
            this.Btn_Catalogo.Name = "Btn_Catalogo";
            this.Btn_Catalogo.Size = new System.Drawing.Size(116, 45);
            this.Btn_Catalogo.TabIndex = 3;
            this.Btn_Catalogo.Text = "Catálogo";
            this.Btn_Catalogo.UseVisualStyleBackColor = true;
            // 
            // Btn_Procesos
            // 
            this.Btn_Procesos.FlatAppearance.BorderSize = 0;
            this.Btn_Procesos.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Procesos.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Procesos.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Procesos.Location = new System.Drawing.Point(244, 0);
            this.Btn_Procesos.Name = "Btn_Procesos";
            this.Btn_Procesos.Size = new System.Drawing.Size(116, 45);
            this.Btn_Procesos.TabIndex = 4;
            this.Btn_Procesos.Text = "Procesos";
            this.Btn_Procesos.UseVisualStyleBackColor = true;
            // 
            // Btn_Informes
            // 
            this.Btn_Informes.FlatAppearance.BorderSize = 0;
            this.Btn_Informes.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Informes.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Informes.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Informes.Location = new System.Drawing.Point(366, 0);
            this.Btn_Informes.Name = "Btn_Informes";
            this.Btn_Informes.Size = new System.Drawing.Size(116, 45);
            this.Btn_Informes.TabIndex = 5;
            this.Btn_Informes.Text = "Informes";
            this.Btn_Informes.UseVisualStyleBackColor = true;
            // 
            // Btn_Herramientas
            // 
            this.Btn_Herramientas.FlatAppearance.BorderSize = 0;
            this.Btn_Herramientas.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Herramientas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Herramientas.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Herramientas.Location = new System.Drawing.Point(488, 0);
            this.Btn_Herramientas.Name = "Btn_Herramientas";
            this.Btn_Herramientas.Size = new System.Drawing.Size(124, 45);
            this.Btn_Herramientas.TabIndex = 6;
            this.Btn_Herramientas.Text = "Herramientas";
            this.Btn_Herramientas.UseVisualStyleBackColor = true;
            // 
            // Btn_Ayudas
            // 
            this.Btn_Ayudas.FlatAppearance.BorderSize = 0;
            this.Btn_Ayudas.FlatAppearance.MouseDownBackColor = System.Drawing.Color.YellowGreen;
            this.Btn_Ayudas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_Ayudas.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Ayudas.Location = new System.Drawing.Point(880, 0);
            this.Btn_Ayudas.Name = "Btn_Ayudas";
            this.Btn_Ayudas.Size = new System.Drawing.Size(116, 40);
            this.Btn_Ayudas.TabIndex = 7;
            this.Btn_Ayudas.Text = "Ayudas";
            this.Btn_Ayudas.UseVisualStyleBackColor = true;
            // 
            // FrmMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(996, 465);
            this.Controls.Add(this.Pnl_Contenedor);
            this.Controls.Add(this.Pnl_Menu);
            this.MaximizeBox = false;
            this.Name = "FrmMenu";
            this.Load += new System.EventHandler(this.FrmMenu_Load);
            this.Pnl_Menu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel Pnl_Menu;
        private System.Windows.Forms.Button Btn_Compras;
        private System.Windows.Forms.Panel Pnl_Contenedor;
        private System.Windows.Forms.Button Btn_Ayudas;
        private System.Windows.Forms.Button Btn_Catalogo;
        private System.Windows.Forms.Button Btn_Herramientas;
        private System.Windows.Forms.Button Btn_Procesos;
        private System.Windows.Forms.Button Btn_Informes;
    }
}

