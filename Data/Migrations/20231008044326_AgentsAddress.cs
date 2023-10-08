using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SOFT703.Data.Migrations
{
    /// <inheritdoc />
    public partial class AgentsAddress : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Address",
                table: "Agent",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Address",
                table: "Agent");
        }
    }
}
