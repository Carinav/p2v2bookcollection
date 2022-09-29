<?php

require_once '../functions.php';

use PHPUnit\Framework\TestCase;

class functions extends TestCase
{

    // Testing generateTile Function

    public function test_GenerateTile_GivenArray_GeneratesTile()
    {
        $input = [[
            'title' => 'test',
            'author' => 'test',
            'imageurl' => 'www.test.com',
            'format' => 'test',
            'length' => '123',
            'lengthunit' => 'test',
            'fiction' => '1',
            'year' => '1234',
            'country' => 'test',
            'gender' => 'test',
            'ownvoices' => '1',
            'goodreadsurl' => 'www.test.com',
        ]];
        $expected =
            '<div class="booktile">'

            . '<div class="booktitle">'
            . '<h3>' . 'test' . '</h3>'
            . '</div>'

            . '<div class="bookauthor">'
            . '<p>by ' . 'test' . '</p>'
            . '</div>'

            . '<img class="bookcover" src="'
            . 'www.test.com' . '" alt="Cover of ' . 'test' . '">'

            . '<div class="allfacts">'
            . '<div class="facts">'
            . '<p>' . 'test' . '</p>'
            . '<p>' . 123 . ' ' . 'test' . '</p>'
            . '</div>'
            . '<div class="facts">'
            . '<p>' . 'Fiction' . '</p>'
            . '</div>'

            . '<div class="facts">'
            . '<p>' . 'Originally Published in ' . 1234 . '</p>'
            . '<p>'. 'test' . '</p>'
            . '</div>'
            . '<div class="facts">'
            . '<p>Creator Gender: ' . 'test' . '</p>'
            . '</div>'
            . '<div class="facts">'
            . '<p>OwnVoices: '. 'Yes' . '</p>'
            . '</div>'
            . '</div>'

            . '<div class="bookmoreinfo">'
            .'<p>'
            . '<a href="' . 'www.test.com' .
            '"target="_blank">Find out more on goodreads <i class="fa-brands fa-goodreads fa-2xl"></i></a>'
            . '</p>'
            . '</div>'

            . '</div>';

        $result = generateTile($input);

        $this->assertEquals($expected, $result);
    }

    public function test_GenerateTile_NoArraysCounted_ThrowError()
    {
        $input = [];
        $this->expectException(Exception::class);
        $this->expectErrorMessage('No data from database');

        $result = generateTile($input);
    }

    public function test_GenerateTile_NoValues_ThrowError()
    {
        $input = [
            'title',
            'author',
            'imageurl',
            'format',
            'length',
            'lengthunit',
            'fiction',
            'year',
            'country',
            'gender',
            'ownvoices',
            'goodreadsurl'
        ];
        $this->expectException(Exception::class);
        $this->expectErrorMessage('No value has been set');

        $result = generateTile($input);
    }

    // Testing formatFiction Function

    public function test_FormatFiction_Given1ReturnsFiction()
    {
        $input = 1;
        $expected = 'Fiction';

        $result = formatFiction($input);

        $this->assertEquals($expected, $result);
    }

    public function test_FormatFiction_Given0ReturnsNonFiction()
    {
        $input = 0;
        $expected = 'Non-Fiction';

        $result = formatFiction($input);

        $this->assertEquals($expected, $result);
    }

    public function test_FormatFiction_StringInput_ThrowError()
    {
        $input = [''];
        $this->expectException(TypeError::class);

        $result = formatFiction($input);
    }

    // Testing formatOwnVoices Function

    public function test_FormatOwnVoices_Given1ReturnsYes()
    {
        $input = 1;
        $expected = 'Yes';

        $result = formatOwnVoices($input);

        $this->assertEquals($expected, $result);
    }

    public function test_FormatOwnVoices_Given0ReturnsNo()
    {
        $input = 0;
        $expected = 'No';

        $result = formatOwnVoices($input);

        $this->assertEquals($expected, $result);
    }

    public function test_FormatOwnVoices_StringInputOwnVoices_ThrowError()
    {
        $input = [''];
        $this->expectException(TypeError::class);

        $result = formatOwnVoices($input);
    }

}
