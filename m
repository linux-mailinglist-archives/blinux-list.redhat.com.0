Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 99F7A414DA8
	for <lists+blinux-list@lfdr.de>; Wed, 22 Sep 2021 18:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632326537;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Np0fRmP0jnCSmlhpFMugsW9BbSYbtxttZNrELBr7Bn4=;
	b=FC2gSgMZl5Ri8p631kBWe7vzjkB+WQ3ZKSKDgFqnKtFP7PMxwNuoKDgS2ABPZrcXVyjZMz
	iChz+BROvDLlEUImw1Gh4QxEsTzl5wlbws7xHTPKPSUGNN8XXC6/9iIN6tR8B7wD2QR8PC
	fHslFsOpjeeg3W54m9ZCygSOwN8bULo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-do8Z0MEuNGOVVryec7d85Q-1; Wed, 22 Sep 2021 12:02:11 -0400
X-MC-Unique: do8Z0MEuNGOVVryec7d85Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6163F835DE2;
	Wed, 22 Sep 2021 16:02:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BA4168D95;
	Wed, 22 Sep 2021 16:01:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3149D1800FE4;
	Wed, 22 Sep 2021 16:01:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18MG1ZL5014655 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 22 Sep 2021 12:01:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 25BEB1010BBD; Wed, 22 Sep 2021 16:01:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20F181011011
	for <blinux-list@redhat.com>; Wed, 22 Sep 2021 16:01:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04761811E78
	for <blinux-list@redhat.com>; Wed, 22 Sep 2021 16:01:35 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-525-UovtBRi3O72c554MCrU2Og-1; Wed, 22 Sep 2021 12:01:33 -0400
X-MC-Unique: UovtBRi3O72c554MCrU2Og-1
Received: by mail-qk1-f169.google.com with SMTP id b65so10958107qkc.13
	for <blinux-list@redhat.com>; Wed, 22 Sep 2021 09:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oR7EKH7dMaeBnOouEiq33Kv2aUXuKm9eL3Xy2O2GZdQ=;
	b=PIuPyHggS6iDkG2xXepJ9B2Dk45Du1itymva4VbkLvfWe+n+nKgFEexgmqDVYAa79O
	2xD0RK2YA+KNx7cATd6/Nhpd21VjkXri1aVJespU6ov9q9BO8ip84VlYvJVm2NdUilRZ
	LDjRwNKsC74YEQOsQL+hDhWSGJVDHOdpziFcq6wRrWZ7HaJ0SUkoMXh9FqsDrRBUxP1n
	hT5AKdhz/jXOUI7NNxHq/7DJuqKKpZhmhbF29kIXa27pu4Y/1RlKrsz9/XbtxuWDOIRN
	SRPknO1oZKtXOwQPLPTwGQzSgbsL0ltRc3xby8YnLkVnmz64OYGBBovRuXgyLYpqSey7
	WQ2w==
X-Gm-Message-State: AOAM5337iFRLC6KJbv4RoORv2kBFoHO6rbpd2kr0Sjw/N7uGJoqDXLe5
	9BmxXj7FXO/yQJcgbbsJs22ICXgqsDfw47cnWC8=
X-Google-Smtp-Source: ABdhPJyKpAJ8AuLnvTb4YB/Uumd5sA31eZKQkEUC+bvCTG1Gxxu8jeFrONjNfuEBO4FoRgQuGTR4I1uYSQGctUORDJ8=
X-Received: by 2002:a37:af81:: with SMTP id y123mr505719qke.517.1632326492240; 
	Wed, 22 Sep 2021 09:01:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:5548:0:0:0:0:0 with HTTP; Wed, 22 Sep 2021 09:01:31
	-0700 (PDT)
In-Reply-To: <A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
Date: Wed, 22 Sep 2021 16:01:31 +0000
Message-ID: <CAO2sX33YfZE7V_8X4TAf7vqidQWg9nG=0WX_nP8LnK94UjYveg@mail.gmail.com>
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
To: raspberry-vi@freelists.org
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so did a bit of research... Not even sure where to start trying
to make sense of Samsung's umpteen dozen offerings, but the Google
Pixel seems straight forward enough.

Best I can tell from Wikipedia and Google, the pros and cons of the
Pixel 5 are as follows:
Pros:
Longer than usual upgrade support
No manufacturer added bloatware
No alterations to Android that negatively impact accessibility.
What sounds like a decent rating against dust and water damage.
Cons:
It's a slate(though in all fairness, this is practically a universal
constant with smartphones)
-No 3.5mm audiojack
-No memory card slot.
-No removable battery
-only one USB-C port
And I'm left with the following questions:
1. Does the USB-C port support USB OTG?
2. are there USB-C to 3.5mm audio adaptors or memory card readers that
include an extra port for daisy chaining other adaptors? Or USb-C hubs
that can be strapped to the back of the phone?
3. Does the Pixel 5's internal storage show up as generic USB mass
storage when connected to a Linux Desktop?
4. What are the physical dimensions of the device?

Again, US Cellular's website is a hunk of junk, but I did manage to
find via Google that they carry the Pixel 3 for 9.99 USD per month and
the Pixel 5 for 23.99 per month. The former is more agreeable with my
budget, though it sounds like there's a promotion going on to get
either for 0 per month and I plan to give them a call to find out
details(experience says there's a catch, such as switching to a more
expensive plan that offers no benefit)... I understand the Pixel 5a is
supposed to be a more budget friendly variant of the Pixel 5, but best
I can tell, USCellular doesn't yet carry it, and beyond people
thinking the Pixel 4 was bad, I can't really tell what the difference
between different Pixel models is.

And to whoever it was who asked about my current phone, I'm using an
LG Wine 4. Nothing fancy, but it has decent text-to-speech allowing me
to make use of the contacts and call log, and while the numpad is a
bit low relief with closely packed buttons, it's sufficient for
dialing and touch-tone automated systems. It as a microSD slot and the
usual apps flip phones have had for close to 20 years, but I really
only use it for making and recieving calls. Form factor, it's a bit
longer and wider, but thinner compared to every other flip phone I've
ever had.

On 9/20/21, adilhusain shaikh <adil.cavi@gmail.com> wrote:
>
> Hi th= ere,
>
> I live in India, and the only stock android c= omes from nokia, Motorola
> and
> Asus here.
>
> Here, nok= ia is bit pricy (not value for money), but they do have longer
> update perio= d ( 3years)
>
> Motorola is value for money with stock= android for 3 years update.
>
> And Asus =C2=A0doesn= =E2=80=99t release any budget smart phone in India.
> Asus launches =C2=A0onl= y its premium smart phone.
>
>  You haven=E2=80=99t mention what=E2=80=99s your budget. = So, I assume
> that
> you might be OK spending 100-200$.
>
> Check out Motorola edge 20. It=E2=80=99s a decent smart phone.
>
>
>
> If you=E2=80=99re = looking for truly cheap smart phone , buy the Redmi
> phones with snap dragon= processor and flash the custom rom.
>
>
>
> Sent from Mail[1] for Windows
>
> =
>
> From: Jeffery Mewtamer[2]
> Sent: Sunday, September 19, 2021 10= :11 PM
> To: Linux for bl= ind general discussion[3]; r=
> aspberry-vi@freelists.org[4]
> Subject: [raspberry-vi] Possibly Of= f-Topic: Android Smartphone
> Recommendations.
>
> =
>
> Okay, so I'm contemplating puttin= g a cheap Android smartphone on a
>
> spare line on my = household's shared plan and trying to learn how to
>
> = use talkback(or whatever it's called these days) and wanted to get
>
> some feedback from fellow Blind Linux users.
>
>
>
> I don't care for pretty= much any of the trends in Smartphone design
>
> I'm aw= are of, so I know I'll have to make compromises to things I
>
> consider bad design, and I don't have the funds to buy a phone=
>
> straight out, so I'm limited to what I can get through= my carrier's
>
> in-house financing. My service is thr= ough US Cellular, and I'm stuck
>
> with them until at = least May 2023 due to existing financing plans on
>
> p= hones already on the plan. Recommendations for phones US Cellular
>
> carries would be nice, but considering their website is utte= r
>
> garbage(and even my sighted housemates agree), I'= d rather ask a sales
>
> associate if they carry x phon= e and be told no than subject people not
>
> their cust= omers to their website.
>
>
>
> Anyways, my biggest priority is that the phone has a 3.5 mm = audio
>
> jack. I already have a pair of wired earphone= s I like and would like
>
> to be able to go back and f= orth between the phone and my Desktop(which
>
> doesn't= have bluetooth as far as I know) and don't have the money for
>
> wireless earphones that have decent battery life, aren't earbu= ds, and
>
> have an aux port for compatibility with old= er devices.
>
>
>
> My next biggest priority is longevity. I don't want to get stuck onthe
> upgrade treadmill with a phone that's barely paid o= ff by the time
>
> it's stuck with a version of Android= that no one supports anymore.
>
> Long term support fr= om the manufacturer would be nice, but I'll settle
>
> = for good chances of running generic Android images or being able to
>
> load a more traditional Linux Distribution. And on a relat= ed note,
>
> something that won't shatter like glass if= knocked out of my hand
>
> would be nice.
>
>
>
> Some lesser prioriti= es:
>
>
>
> The m= ore physical buttons, the better... a proper numpad or full
>
> qwerty keyboard would be great, but not holding my breath. I know = I'm
>
> going to have to do battle with touch gestures = or voice commands, but
>
> anything that can be done vi= a traditional controls would be a great
>
> anti-frustr= ation feature in my book.
>
>
>
> Since a removable battery is highly unlikely, and being ab= le to charge
>
> a spare on a dock is a pipedream, dece= nt battery life would be a plus,
>
> though I get the i= mpression that decent battery life and smartphones
>
> = are seldom used in the same sentence without some kind of negation.
>
> Also, the ability to completely disable the display part o= f the
>
> touchscreen, or at least keep the backlight i= ncredibly dim if not off
>
> would be nice... Honestly,= I'd rather not have a screen at all and
>
> instead us= e the real estate for a keyboard on par with those Texas
>
> Instruments uses in their calculators, but again, not holding mybreath.
>
>  Since smartphones cap out at a rather anemic 128GB of on= -board
>
> storage, and I get the impression 128GB is s= till a premium feature,
>
> removable storage is a must= .. and it would be nice if I could access
>
> the memo= ry card and even the phone's on-board storage by connecting
>
> the phone to my Desktop via USB, it showing up as generic USB mass=
>
> storage, and just being able to do a
>
>
>
> pmount /dev/sdx
>
> where x is wh= atever letter the phone gets assigned instead of having
>
> to constantly mess around with moving a microSD card between phone and=
>
> desktop... And it's a pipedream feature, but a ful= l-sized SD slot so I
>
> can just pop in my existing 51= 2GB card instead of investing in a high
>
> capacity mi= croSD and having to populate it would be nice.
>
>
>
> And, it's a bit of a lower priority, = but I have big hands, so
>
> something with a decent am= ount of heft would be nice... and as I plan
>
> to keep= my flip phone until the day it stops working, I couldn't care
>
> less about how well the smartphone does as an actual phone.
>
>
>
> I've heard = good things about Google's Pixel line of smartphones in
>
> regards to accessibility, and understand the Pixel 3 to be a solid,
>
> economical option, but I also suspect that was coming= from the
>
> perspective of someone who either uses a = Windows Desktop or uses a
>
> smartphone as their prima= ry computing device.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The raspberry-vi mailing list
>
> Archives: http://www.freelists.org/archives/raspberry-vi
>
> Administrative contact: <mike.ray@btinternet.com>
>
> -----------------------------------------------------------
>
> Raspberry Pi and the Raspberry Pi logo are trademark= s of the Raspberry Pi
> Foundation.
>
>  =
>
> This list is not affiliated to the Raspberry Pi Fo= undation and the views
> and attitudes expressed by the subscribers to this l= ist do not reflect
> those of the Foundation.
>
> &n= bsp;
>
> Mike Ray, list creator, January 2013=
>
>
>
>  =
>
> --- Links ---
>    1 3D"https://go.microsoft.com/=
>    2 3D"mailto:mewtamer@gm=
>    3 3D"mailto:blinux-list@redhat.com"
>    4 3D"mailto:raspberry-vi@freelists.org"
> ===========================================================
> The raspberry-vi mailing list
> Archives: http://www.freelists.org/archives/raspberry-vi
> Administrative contact: <mike.ray@btinternet.com>
> -----------------------------------------------------------
> Raspberry Pi and the Raspberry Pi logo are trademarks of the Raspberry Pi
> Foundation.
>
> This list is not affiliated to the Raspberry Pi Foundation and the views and
> attitudes expressed by the subscribers to this list do not reflect those of
> the Foundation.
>
> Mike Ray, list creator, January 2013
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

