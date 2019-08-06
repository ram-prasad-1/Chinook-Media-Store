
from django.db import models


class Album(models.Model):
    album_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=160)
    artist = models.ForeignKey('Artist', models.DO_NOTHING)

    class Meta:
        db_table = 'album'


class Artist(models.Model):
    artist_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=120, blank=True)

    class Meta:
        db_table = 'artist'


class Customer(models.Model):
    customer_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=40)
    last_name = models.CharField(max_length=20)
    company = models.CharField(max_length=80, blank=True)
    address = models.CharField(max_length=70, blank=True)
    city = models.CharField(max_length=40, blank=True)
    state = models.CharField(max_length=40, blank=True)
    country = models.CharField(max_length=40, blank=True)
    postal_code = models.CharField(max_length=10, blank=True)
    phone = models.CharField(max_length=24, blank=True)
    fax = models.CharField(max_length=24, blank=True)
    email = models.CharField(max_length=60)
    support_rep = models.ForeignKey('Employee', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        db_table = 'customer'


class Employee(models.Model):
    employee_id = models.AutoField(primary_key=True)
    last_name = models.CharField(max_length=20)
    first_name = models.CharField(max_length=20)
    title = models.CharField(max_length=30, blank=True)
    reports_to = models.ForeignKey('self', models.DO_NOTHING, blank=True, null=True)
    birth_date = models.DateTimeField(blank=True, null=True)
    hire_date = models.DateTimeField(blank=True, null=True)
    address = models.CharField(max_length=70, blank=True)
    city = models.CharField(max_length=40, blank=True)
    state = models.CharField(max_length=40, blank=True)
    country = models.CharField(max_length=40, blank=True)
    postal_code = models.CharField(max_length=10, blank=True)
    phone = models.CharField(max_length=24, blank=True)
    fax = models.CharField(max_length=24, blank=True)
    email = models.CharField(max_length=60, blank=True)

    class Meta:
        db_table = 'employee'


class Genre(models.Model):
    genre_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=120, blank=True)

    class Meta:
        db_table = 'genre'


class Invoice(models.Model):
    invoice_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey(Customer, models.DO_NOTHING)
    invoice_date = models.DateTimeField()
    billing_address = models.CharField(max_length=70, blank=True)
    billing_city = models.CharField(max_length=40, blank=True)
    billing_state = models.CharField(max_length=40, blank=True)
    billing_country = models.CharField(max_length=40, blank=True)
    billing_postal_code = models.CharField(max_length=10, blank=True)
    total = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'invoice'


class InvoiceLine(models.Model):
    invoice_line_id = models.AutoField(primary_key=True)
    invoice = models.ForeignKey(Invoice, models.DO_NOTHING)
    track = models.ForeignKey('Track', models.DO_NOTHING)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2)
    quantity = models.IntegerField()

    class Meta:
        db_table = 'invoice_line'


class MediaType(models.Model):
    media_type_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=120, blank=True)

    class Meta:
        db_table = 'media_type'


class Playlist(models.Model):
    playlist_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=120, blank=True)

    class Meta:
        db_table = 'playlist'


class PlaylistTrack(models.Model):
    playlist_track_id = models.AutoField(primary_key=True)
    playlist = models.ForeignKey(Playlist, models.DO_NOTHING)
    track = models.ForeignKey('Track', models.DO_NOTHING)

    class Meta:
        db_table = 'playlist_track'
        unique_together = (('playlist', 'track'),)


class Track(models.Model):
    track_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    album = models.ForeignKey(Album, models.DO_NOTHING, blank=True, null=True)
    media_type = models.ForeignKey(MediaType, models.DO_NOTHING)
    genre = models.ForeignKey(Genre, models.DO_NOTHING, blank=True, null=True)
    composer = models.CharField(max_length=220, blank=True)
    milliseconds = models.IntegerField()
    bytes = models.IntegerField(blank=True, null=True)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'track'
