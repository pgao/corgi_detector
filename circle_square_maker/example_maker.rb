$LOAD_PATH.unshift("~/repo")

require "gui/gtk_utils/colors.rb"
require "cairo"

Color::Pink = Color.new(1.0, 0.5, 0.5)
Color::Blue = Color.new(0.0, 0.0, 1.0)
Color::Teal = Color.new(0.5, 0.5, 1.0)

class Vect
	attr_accessor :x, :y
	def initialize(x, y); @x = x; @y = y; end 
	def [](k) [@x, @y][k] end 
	def to_ary() return [@x, @y] end 
	def -(o) Vect.new(@x - o[0], @y - o[1]) end 
	def rot90() Vect.new(-@y, @x) end 
	def norm() t = mag(); Vect.new(@x / t, @y / t) end 
	def mag() Math.sqrt(@x * @x + @y * @y) end 
	def -@() Vect.new(-@x, -@y) end 
	def scale(v) Vect.new(v * @x, v * @y) end 
	def +(o) Vect.new(@x + o[0], @y + o[1]) end 
	def dot(o) return @x * o[0] + @y * o[1] end 
end

def pt(cr, x, y, r = 40, col = Color::Black)
	col.set(cr)
	cr.arc(x, y, r, 0, 6.30)
	cr.fill()
end

def sqr(cr, x, y, r = 40, col = Color::Black)
	col.set(cr)
	cr.rectangle(x - 30, y - 30, 60, 60)
	cr.fill()
end

def make_pts()
	pts = []

	100.times do |t|
		x2 = rand() * ($w - 100) + 50
		y2 = rand() * ($h - 100) + 50
		
		g = true
		pts.each do |x1, y1|
			g = false if ((x1 - x2)**2 + (y1 - y2)**2) < 100 ** 2
		end
		pts << [x2, y2, rand(2)] if g
	end
	return pts
end

$w = 640
$h = 480

puts <<END
<?xml version='1.0' encoding='ISO-8859-1'?>
<?xml-stylesheet type='text/xsl' href='image_metadata_stylesheet.xsl'?>
<dataset>
<name>imglab dataset</name>
<comment>Created by imglab tool.</comment>
<images>
END

1000.times do |i|
	fname = "imgs/cir_rect#{i}.jpg"
	puts "  <image file='#{fname}'>"
	is = Cairo::ImageSurface.new($w, $h)
	cr = Cairo::Context.new(is)
	Color.new(0.25,0.25,0.25).set(cr)
	cr.paint()

	make_pts().each do |x, y, c_or_r|
		if c_or_r == 1
			puts <<END
    <box top='#{(x - 50).to_i}' left='#{(y - 50).to_i}' width='100' height='100'>
		  <label>cir</label>
		</box>
END
			pt(cr, x, y, 40, Color::Green)
		else
			sqr(cr, x, y, 40, Color::Green)
		end
	end

	puts "  </image>"
	is.write_to_png(fname)
end

puts <<END
</images>
</dataset>
END
