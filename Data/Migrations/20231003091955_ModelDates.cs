using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SOFT703.Data.Migrations
{
    /// <inheritdoc />
    public partial class ModelDates : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<double>(
                name: "Total",
                table: "Trolley",
                type: "float",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<DateTime>(
                name: "TransactionDate",
                table: "Trolley",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "TransactionDate",
                table: "Transaction",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Total",
                table: "Trolley");

            migrationBuilder.DropColumn(
                name: "TransactionDate",
                table: "Trolley");

            migrationBuilder.DropColumn(
                name: "TransactionDate",
                table: "Transaction");
        }
    }
}
