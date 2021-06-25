<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePsikologTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psikolog', function (Blueprint $table) {
            $table->id(); 
            $table->string("nama_psikolog",50) ->nullable();
            $table->text("alamat") ->nullable();
            $table->integer("no_telp") ->nullable();
            $table->string("email",50) ->nullable();
            $table->string("kategori",50) ->nullable();
            $table->string("username",50) ->nullable();
            $table->string("password",50) ->nullable();
            $table->text("foto_psikolog") ->nullable();
            $table->integer("biaya_konsultasi") ->nullable();
            $table->integer("no_rekening") ->nullable();
            $table->string("tipe_bank",50) ->nullable();
            $table->string("umur",3) ->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('psikolog');
    }
}
