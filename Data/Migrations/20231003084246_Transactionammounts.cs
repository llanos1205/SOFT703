using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SOFT703.Data.Migrations
{
    /// <inheritdoc />
    public partial class Transactionammounts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<double>(
                name: "AmountConverted",
                table: "Transaction",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AmountConverted",
                table: "Transaction");
        }
    }
}
