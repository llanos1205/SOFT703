using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SOFT703.Data.Migrations
{
    /// <inheritdoc />
    public partial class FixTrolleyXProduct : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsCurrent",
                table: "ProductXTrolley");

            migrationBuilder.AddColumn<int>(
                name: "Quantity",
                table: "ProductXTrolley",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Quantity",
                table: "ProductXTrolley");

            migrationBuilder.AddColumn<bool>(
                name: "IsCurrent",
                table: "ProductXTrolley",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
