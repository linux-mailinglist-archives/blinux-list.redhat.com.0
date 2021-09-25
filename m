Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EA6FA418326
	for <lists+blinux-list@lfdr.de>; Sat, 25 Sep 2021 17:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632582976;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fNw3HRxFlqKIcC26nzSay7284PFee1sWMA0k8X2jU5k=;
	b=MS9GQSSbLG7vCiByE0GzOnUMidEFo+fduZD683HA1C3k0YCm17dl/rWUrn1Hp5jaQ3WhF7
	+p94RfM08pyQ+6qtIQSQvJYXsxumfpWpkkQza+niHwun6/S4KsYff3lnq+ML/tUFNF73mC
	vUC+mGJNPPzgJuiC76UCwd+UFdBm/Jk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-jQ3xZcxuMSyxwPjif0Y3GQ-1; Sat, 25 Sep 2021 11:16:14 -0400
X-MC-Unique: jQ3xZcxuMSyxwPjif0Y3GQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34BE2824FA7;
	Sat, 25 Sep 2021 15:16:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE6401000358;
	Sat, 25 Sep 2021 15:16:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B06714EA29;
	Sat, 25 Sep 2021 15:16:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18PFFsLi019353 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 25 Sep 2021 11:15:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E4122087A4A; Sat, 25 Sep 2021 15:15:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39F042087A40
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 15:15:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D07E185A794
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 15:15:51 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-346-G9ben6YaMDO9ZEPmpgfBOg-1; Sat, 25 Sep 2021 11:15:49 -0400
X-MC-Unique: G9ben6YaMDO9ZEPmpgfBOg-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id D00CAFA657;
	Sat, 25 Sep 2021 11:15:47 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net D00CAFA657
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18PFFlZM551164;
	Sat, 25 Sep 2021 11:15:47 -0400
Date: Sat, 25 Sep 2021 11:15:47 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
Message-ID: <YU89I8OoeDJ1edP5@rednote.net>
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
	<CAO2sX33YfZE7V_8X4TAf7vqidQWg9nG=0WX_nP8LnK94UjYveg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX33YfZE7V_8X4TAf7vqidQWg9nG=0WX_nP8LnK94UjYveg@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
Cc: raspberry-vi@freelists.org
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you can you might want to wait another few weeks until the Pixel 6
models are released. It's quite likely the older models will then
suddenly see a reduction in price.

PS: I have the 4A and it's a great phone. I agree that the lack of SD
slot is annoying, but I have honestly not missed having a physical audio
jack. And, yes, once you enable it via Developer Options, you can use
adb from the terminal, or simply access the phone's filesystem from a
USB port on your computer via the graphical desktop. It just comes up
ready to use--and it's slow-charging your phone while plugged in that way.

Janina


Linux for blind general discussion writes:
> Okay, so did a bit of research... Not even sure where to start trying
> to make sense of Samsung's umpteen dozen offerings, but the Google
> Pixel seems straight forward enough.
> 
> Best I can tell from Wikipedia and Google, the pros and cons of the
> Pixel 5 are as follows:
> Pros:
> Longer than usual upgrade support
> No manufacturer added bloatware
> No alterations to Android that negatively impact accessibility.
> What sounds like a decent rating against dust and water damage.
> Cons:
> It's a slate(though in all fairness, this is practically a universal
> constant with smartphones)
> -No 3.5mm audiojack
> -No memory card slot.
> -No removable battery
> -only one USB-C port
> And I'm left with the following questions:
> 1. Does the USB-C port support USB OTG?
> 2. are there USB-C to 3.5mm audio adaptors or memory card readers that
> include an extra port for daisy chaining other adaptors? Or USb-C hubs
> that can be strapped to the back of the phone?
> 3. Does the Pixel 5's internal storage show up as generic USB mass
> storage when connected to a Linux Desktop?
> 4. What are the physical dimensions of the device?
> 
> Again, US Cellular's website is a hunk of junk, but I did manage to
> find via Google that they carry the Pixel 3 for 9.99 USD per month and
> the Pixel 5 for 23.99 per month. The former is more agreeable with my
> budget, though it sounds like there's a promotion going on to get
> either for 0 per month and I plan to give them a call to find out
> details(experience says there's a catch, such as switching to a more
> expensive plan that offers no benefit)... I understand the Pixel 5a is
> supposed to be a more budget friendly variant of the Pixel 5, but best
> I can tell, USCellular doesn't yet carry it, and beyond people
> thinking the Pixel 4 was bad, I can't really tell what the difference
> between different Pixel models is.
> 
> And to whoever it was who asked about my current phone, I'm using an
> LG Wine 4. Nothing fancy, but it has decent text-to-speech allowing me
> to make use of the contacts and call log, and while the numpad is a
> bit low relief with closely packed buttons, it's sufficient for
> dialing and touch-tone automated systems. It as a microSD slot and the
> usual apps flip phones have had for close to 20 years, but I really
> only use it for making and recieving calls. Form factor, it's a bit
> longer and wider, but thinner compared to every other flip phone I've
> ever had.
> 
> On 9/20/21, adilhusain shaikh <adil.cavi@gmail.com> wrote:
> >
> > Hi th= ere,
> >
> > I live in India, and the only stock android c= omes from nokia, Motorola
> > and
> > Asus here.
> >
> > Here, nok= ia is bit pricy (not value for money), but they do have longer
> > update perio= d ( 3years)
> >
> > Motorola is value for money with stock= android for 3 years update.
> >
> > And Asus =C2=A0doesn= =E2=80=99t release any budget smart phone in India.
> > Asus launches =C2=A0onl= y its premium smart phone.
> >
> >  You haven=E2=80=99t mention what=E2=80=99s your budget. = So, I assume
> > that
> > you might be OK spending 100-200$.
> >
> > Check out Motorola edge 20. It=E2=80=99s a decent smart phone.
> >
> >
> >
> > If you=E2=80=99re = looking for truly cheap smart phone , buy the Redmi
> > phones with snap dragon= processor and flash the custom rom.
> >
> >
> >
> > Sent from Mail[1] for Windows
> >
> > =
> >
> > From: Jeffery Mewtamer[2]
> > Sent: Sunday, September 19, 2021 10= :11 PM
> > To: Linux for bl= ind general discussion[3]; r=
> > aspberry-vi@freelists.org[4]
> > Subject: [raspberry-vi] Possibly Of= f-Topic: Android Smartphone
> > Recommendations.
> >
> > =
> >
> > Okay, so I'm contemplating puttin= g a cheap Android smartphone on a
> >
> > spare line on my = household's shared plan and trying to learn how to
> >
> > = use talkback(or whatever it's called these days) and wanted to get
> >
> > some feedback from fellow Blind Linux users.
> >
> >
> >
> > I don't care for pretty= much any of the trends in Smartphone design
> >
> > I'm aw= are of, so I know I'll have to make compromises to things I
> >
> > consider bad design, and I don't have the funds to buy a phone=
> >
> > straight out, so I'm limited to what I can get through= my carrier's
> >
> > in-house financing. My service is thr= ough US Cellular, and I'm stuck
> >
> > with them until at = least May 2023 due to existing financing plans on
> >
> > p= hones already on the plan. Recommendations for phones US Cellular
> >
> > carries would be nice, but considering their website is utte= r
> >
> > garbage(and even my sighted housemates agree), I'= d rather ask a sales
> >
> > associate if they carry x phon= e and be told no than subject people not
> >
> > their cust= omers to their website.
> >
> >
> >
> > Anyways, my biggest priority is that the phone has a 3.5 mm = audio
> >
> > jack. I already have a pair of wired earphone= s I like and would like
> >
> > to be able to go back and f= orth between the phone and my Desktop(which
> >
> > doesn't= have bluetooth as far as I know) and don't have the money for
> >
> > wireless earphones that have decent battery life, aren't earbu= ds, and
> >
> > have an aux port for compatibility with old= er devices.
> >
> >
> >
> > My next biggest priority is longevity. I don't want to get stuck onthe
> > upgrade treadmill with a phone that's barely paid o= ff by the time
> >
> > it's stuck with a version of Android= that no one supports anymore.
> >
> > Long term support fr= om the manufacturer would be nice, but I'll settle
> >
> > = for good chances of running generic Android images or being able to
> >
> > load a more traditional Linux Distribution. And on a relat= ed note,
> >
> > something that won't shatter like glass if= knocked out of my hand
> >
> > would be nice.
> >
> >
> >
> > Some lesser prioriti= es:
> >
> >
> >
> > The m= ore physical buttons, the better... a proper numpad or full
> >
> > qwerty keyboard would be great, but not holding my breath. I know = I'm
> >
> > going to have to do battle with touch gestures = or voice commands, but
> >
> > anything that can be done vi= a traditional controls would be a great
> >
> > anti-frustr= ation feature in my book.
> >
> >
> >
> > Since a removable battery is highly unlikely, and being ab= le to charge
> >
> > a spare on a dock is a pipedream, dece= nt battery life would be a plus,
> >
> > though I get the i= mpression that decent battery life and smartphones
> >
> > = are seldom used in the same sentence without some kind of negation.
> >
> > Also, the ability to completely disable the display part o= f the
> >
> > touchscreen, or at least keep the backlight i= ncredibly dim if not off
> >
> > would be nice... Honestly,= I'd rather not have a screen at all and
> >
> > instead us= e the real estate for a keyboard on par with those Texas
> >
> > Instruments uses in their calculators, but again, not holding mybreath.
> >
> >  Since smartphones cap out at a rather anemic 128GB of on= -board
> >
> > storage, and I get the impression 128GB is s= till a premium feature,
> >
> > removable storage is a must= .. and it would be nice if I could access
> >
> > the memo= ry card and even the phone's on-board storage by connecting
> >
> > the phone to my Desktop via USB, it showing up as generic USB mass=
> >
> > storage, and just being able to do a
> >
> >
> >
> > pmount /dev/sdx
> >
> > where x is wh= atever letter the phone gets assigned instead of having
> >
> > to constantly mess around with moving a microSD card between phone and=
> >
> > desktop... And it's a pipedream feature, but a ful= l-sized SD slot so I
> >
> > can just pop in my existing 51= 2GB card instead of investing in a high
> >
> > capacity mi= croSD and having to populate it would be nice.
> >
> >
> >
> > And, it's a bit of a lower priority, = but I have big hands, so
> >
> > something with a decent am= ount of heft would be nice... and as I plan
> >
> > to keep= my flip phone until the day it stops working, I couldn't care
> >
> > less about how well the smartphone does as an actual phone.
> >
> >
> >
> > I've heard = good things about Google's Pixel line of smartphones in
> >
> > regards to accessibility, and understand the Pixel 3 to be a solid,
> >
> > economical option, but I also suspect that was coming= from the
> >
> > perspective of someone who either uses a = Windows Desktop or uses a
> >
> > smartphone as their prima= ry computing device.
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > The raspberry-vi mailing list
> >
> > Archives: http://www.freelists.org/archives/raspberry-vi
> >
> > Administrative contact: <mike.ray@btinternet.com>
> >
> > -----------------------------------------------------------
> >
> > Raspberry Pi and the Raspberry Pi logo are trademark= s of the Raspberry Pi
> > Foundation.
> >
> >  =
> >
> > This list is not affiliated to the Raspberry Pi Fo= undation and the views
> > and attitudes expressed by the subscribers to this l= ist do not reflect
> > those of the Foundation.
> >
> > &n= bsp;
> >
> > Mike Ray, list creator, January 2013=
> >
> >
> >
> >  =
> >
> > --- Links ---
> >    1 3D"https://go.microsoft.com/=
> >    2 3D"mailto:mewtamer@gm=
> >    3 3D"mailto:blinux-list@redhat.com"
> >    4 3D"mailto:raspberry-vi@freelists.org"
> > ===========================================================
> > The raspberry-vi mailing list
> > Archives: http://www.freelists.org/archives/raspberry-vi
> > Administrative contact: <mike.ray@btinternet.com>
> > -----------------------------------------------------------
> > Raspberry Pi and the Raspberry Pi logo are trademarks of the Raspberry Pi
> > Foundation.
> >
> > This list is not affiliated to the Raspberry Pi Foundation and the views and
> > attitudes expressed by the subscribers to this list do not reflect those of
> > the Foundation.
> >
> > Mike Ray, list creator, January 2013
> >
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

