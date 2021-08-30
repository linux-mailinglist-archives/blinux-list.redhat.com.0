Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D55643FAF2B
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 02:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630283528;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yIMycIPoT5yNmweOnDmBd5MioIk4SaMrlLr7e96+j6w=;
	b=hhMJphFHt7JEQ0j3W6AY1mCCLr7cWojYO0SgDCdtEqPo7duS0uSB/dFDaZFSytLfLl1LwW
	dztblmy5VSv3zNLEP2Z7ChBAv3IEYOOuI4AwLOi5bwsdMadRYtImEsOiOt5RIojepGEl8o
	A0O6Asklg50ErthIDWh+jw8pvEmLtnQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-vC5CKNG2O1qTnCby4Q403w-1; Sun, 29 Aug 2021 20:32:06 -0400
X-MC-Unique: vC5CKNG2O1qTnCby4Q403w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 553B787D541;
	Mon, 30 Aug 2021 00:32:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36FF927CAA;
	Mon, 30 Aug 2021 00:32:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B29734A7C8;
	Mon, 30 Aug 2021 00:31:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17U0Vrqm029150 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 20:31:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E2EDC1111C9E; Mon, 30 Aug 2021 00:31:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC4911111C96
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:31:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31D87106655D
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:31:45 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-178-OsiY8JRmNmWi1wu72TfNeA-1; Sun, 29 Aug 2021 20:31:42 -0400
X-MC-Unique: OsiY8JRmNmWi1wu72TfNeA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GyWTm6zw2z8tQY
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:31:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id H5CrO9l8kXaa for <blinux-list@redhat.com>;
	Mon, 30 Aug 2021 00:31:39 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GyWTl4mvLz8tQW
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:31:39 +0000 (UTC)
Message-ID: <20210830.003146.800.2@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Found this on youtube
Date: Sun, 29 Aug 2021 19:31:46 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108292019140.16928@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
	<a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
	<alpine.NEB.2.23.451.2108292019140.16928@panix1.panix.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17U0Vrqm029150
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

You mean
pacman -S espeakup
systemctl disable fenrir
systemctl enable espeakup

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 29 Aug 2021 20:24:58 -0400
Subject: Re: Found this on youtube

> You probably disrupted the install every time during updating the keyring
step.  Jenux automatically sets that in motion and it's important to go to
lunch while that's happening since it takes a while.  I had suggested all
of this get done before speech ever comes up but that isn't happening yet.
The capslock-u key reads previous line the capslock-i key reads current
line and capslock-o reads the next line.  Fenrir is a challenge for those
used to espeak.  My guess is if you don't like fenrir wait until you get a
Jenux archlinux install completed then pacman -S espeak and once done
systemctl disable fenrir and then systemctl enable espeak then reboot and
see if that's better.  Once done, you might also do as root last two
commands need doing as root too pacman -R fenrir.


On Sun, 29 Aug 2021, Linux for blind general discussion wrote:

> Hi,
>
>
> Yesterday I did a blind arch install with no problem.=A0 One of the opsio=
n is to
> update the key ring.=A0 You may want to try this first before anything el=
se.
>
>
> Matthew
>
>
>
> On 8/29/21 10:01 AM, Linux for blind general discussion wrote:
> > Hi,
> >
> > every time I've tried installing Jenux the install failed. Why? I have =
no
> > idea. I know there are many people verry happely using Jenux, unfortuna=
tly,
> > I am not one of them.
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent using Mutt from the Slint laptop
> > On Sun, Aug 29, 2021 at 09:12:29AM -0400, Linux for blind general discu=
ssion
> > wrote:
> >> Jenux does get an accessible system up with either android or several
> >> flavors of archlinux.  Not all flavors of archlinux are accessible tha=
t
> >> can be installed with Jenux but most are.  Jenux has continuing suppor=
t as
> >> shown by the different dates embedded in the names of the iso's and sh=
a512
> >> files available on its site.
> >>
> >>
> >> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
> >>
> >>> Hi all,
> >>>
> >>>
> >>> The last I checked, the BlindArch ISO is rather old. I did an install=
, but
> >>> there were so many things wrong with the install I kept it for less t=
han
> >>> an
> >>> hour. It would've taken me days to fix it all.
> >>>
> >>>
> >>> I am actually considdering writing an install Script in the line of a
> >>> NixOs
> >>> configuration for my own personal use, thus, no choices, all baked in=
 to
> >>> the
> >>> script. It would probably take me some time, but what can you do?
> >>>
> >>>
> >>> I would rather do that than screw around with "install scripts". Most=
 of
> >>> the
> >>> darn things is buggy as all get out, or doesn't include the accessibi=
lity
> >>> stuff by default.
> >>>
> >>> Warm regards,
> >>>
> >>> Brandt Steenkamp
> >>>
> >>> Sent using Thunderbird from the Slint Laptop
> >>>
> >>> On 2021/08/28 23:05, Linux for blind general discussion wrote:
> >>>> Hi all,
> >>>>
> >>>> Just found this on Youtube and wondered if anyone hhas tried it.  Th=
is is
> >>>> a
> >>>> blind arch install demo on how it works.
> >>>>
> >>>> https://www.youtube.com/watch?v=3D72g-2fbP04w
> >>>> Matthew
> >>>>
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

