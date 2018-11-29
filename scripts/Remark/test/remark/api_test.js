var Api = require('../../src/remark/api')
  , TestDom = require('../test_dom')
  , highlighter = require('../../src/remark/highlighter')
  , Slideshow = require('../../src/remark/models/slideshow')
  ;

describe('API', function () {
  var api,
      dom;

  beforeEach(function () {
    dom = new TestDom();
    api = new Api(dom);
  });

  it('should be exposed', function () {
    window.should.have.property('remark');
  });

  it('should expose highlighter', function () {
    api.highlighter.should.equal(highlighter);
  });

  it('should allow creating slideshow', function () {
    api.create().should.be.an.instanceOf(Slideshow);
  });

  it('should allow creating slideshow with source directly', function () {
    var slides = api.create({ source: '1\n---\n2' }).getSlides();
    slides.length.should.eql(2);
    slides[0].content.should.eql([ '1' ]);
    slides[1].content.should.eql([ '2' ]);
  });

  it('should allow creating slideshow from source textarea', function () {
    var source = document.createElement('textarea');
    source.id = 'source';
    source.textContent = '3\n---\n4';
    dom.getElementById = function () { return source; };

    var slides = api.create().getSlides();
    slides.length.should.eql(2);
    slides[0].content.should.eql(['3']);
    slides[1].content.should.eql(['4']);
  });
});