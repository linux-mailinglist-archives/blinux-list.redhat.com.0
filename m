Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7BA361915
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 07:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618549561;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MeOvFfnXA18u7sNVqxtydiepkpKC8tdYn7B/DO48tn0=;
	b=S6S28RRY1MGTHDRv7CNbzzUE7upP/T5VtbefvRDsW7Zbb69mQkaeIXOI5dyLVwFes/Fxmj
	n4Z9sCWOYLjHNfW2jE6flGFEQn3QNR7tHecbZoJ1JOGIrVhu9XZG3yXBHEdB2eHzUZD8lS
	kqVDUTMOx5dj18BG7VTYFcRUlz2k7tg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-VSNymHMyNmCiQ-mJp3UWCg-1; Fri, 16 Apr 2021 01:05:59 -0400
X-MC-Unique: VSNymHMyNmCiQ-mJp3UWCg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 010169F92A;
	Fri, 16 Apr 2021 05:05:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75A335D71F;
	Fri, 16 Apr 2021 05:05:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0B2644A5E;
	Fri, 16 Apr 2021 05:05:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13G52Ggt009190 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 01:02:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 499F820FD3B3; Fri, 16 Apr 2021 05:02:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 446C520FD3B2
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 05:02:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F6E0101A52C
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 05:02:13 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-243-Q69y7sYvMRixe-KpBIU-rg-1; Fri, 16 Apr 2021 01:02:11 -0400
X-MC-Unique: Q69y7sYvMRixe-KpBIU-rg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FM3wd2by5z8wLk
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 05:02:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id n4DJYMcrHtDm for <blinux-list@redhat.com>;
	Fri, 16 Apr 2021 05:02:08 +0000 (UTC)
Received: from [0.0.0.0] (184-169-119-73-dynamic.midco.net [184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FM3wb55V4z8w6S
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 05:02:07 +0000 (UTC)
Message-ID: <20210416.050139.449.4@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: Would you be interested in having natural sounding TTS voices by
	Readspeaker on Linux? demo link included
Date: Fri, 16 Apr 2021 00:01:39 -0500
MIME-Version: 1.0
In-Reply-To: <161854841366.7.5044640704122711519.5900574@slmail.me>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
User-Agent: POP Peeper Pro (5.1.1.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13G52Ggt009190
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Wow, fix your spacebar and try again.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 16 Apr 2021 04:46:53 -0000
Subject: Would you be interested in having natural sounding TTS voices by R=
eadspeaker on Linux? demo link included

> =09=09=09=09
Hi everyone,
This is SL.
Some of you may remember that lastmonth, Chime and I were trying to find a =
way to legally port Ivonavoices to Linux.
We have been in communications withReadspeaker, a company which creates its=
 own quality TTS voices andis also an official distributor of Ivona.
Unfortunately, due torestrictions and incompatibility, we are unable to bri=
ng Ivona toLinux at this time.
However, Readspeaker is willing to considerthe possibility of working with =
us to bring their own high fidelityReadspeaker brand voices to Linux as a T=
TS option to use with Linuxscreenreaders if there is enough interest in the=
 community and if theventure would be commercially viable.
Right now, we are onlysending this to the Blinux list, so please do not for=
ward it, as thisis not an official survey.
If there is confirmed interest withinthe Blinux list as a baseline sample g=
roup, then we would send anofficial survey which would be reviewed by Reads=
peaker beforehand,and widely dispersed amongst multiple blind Linux/tech gr=
oups to gageinterest, pricing, language preferences, screenreader preferenc=
esetc.
Right now, we simply want to know if anyone else on thislist would want to =
have Readspeaker voices to use as a TTS option forLinux screenreaders befor=
e engaging in any further outreachefforts.
We first need to know that we are not the only ones whothink it would be wo=
rth it to have Readspeaker's high fidelity voiceson Linux.
If there is enough interest in this potential project,it would likely be a =
model similar to Voxin, where the consumer paysa yet-to-be-determined fee t=
o have their choice of Readspeaker voicefor their Linux screenreader.
We can refine those particulardetails later.
For now, we just want to know if anyone on thisBlinux list would be interes=
ted in having Readspeaker voices on Linuxfor a more natural sounding TTS ex=
perience.
If so, then we wouldknow whether to confirm interest with Readspeaker and w=
ork on anofficial survey which would help us determine price range and whic=
hlanguages to focus on etc.=20
So, in this email we are including adirect link where you can listen to dem=
os of Readspeaker voices andwe ask that you let us know if you would be int=
erested in havingReadspeaker TTS on Linux.
Please abide by Readspeaker's termsand conditions which prohibit the record=
ing of said demos.
Inthis email there is a direct link to Readspeaker's official demo pageon t=
heir website which features a variety of voices to sample. Justselect which=
 voice you want to hear in the combo box, then press"listen".
This link is preferable as you can accessmultiple voices which can be inclu=
ded in a Linux compatibleSDK.
=A0However, you will need to use Firefox in Graphical toaccess it. If you h=
ave the ability to use graphical Firefox, pleasedo as this will give you th=
e largest variety of choices.
Weunderstand that some users may be accustomed to only using Consolebrowser=
s, and some multi media websites that work just fine withGraphical Firefox =
will not render on Lynx.
If you areexclusively a Console user and cannot use Graphical Firefox to ac=
cess the link below in this email,Readspeaker sent us two mp3 files, one wi=
th a sample of a US Englishvoice, and the other with a sample of a UK Engli=
sh voice for Consoleusers to listen to if they cannot switch to Graphical a=
nd use Firefoxto access Readspeaker's official demo page on their website.=
=20

It is ourunderstanding that mp3 files cannot be posted to this mailinglist.=
 (If this is incorrect, I can send a second email with the mp3 files if mp3=
 files are allowed on the Blinux list). Otherwise, if anyone on this list i=
s exclusively a Console user and cannotaccess the link to Readspeaker's dem=
o page included in this message,please feel free to email me, SL, at my ema=
il address which I willpost at the bottom of this message and I can send th=
e two mp3 filesto you.


However, the mp3files are only one sample of a US English voice, and one sa=
mple of aUK English voice. They are created for Console users who cannotacc=
ess Readspeaker's official demo page which has the full variety ofvoices.

 Even if you are a graphical user, you may still want to listen tothe two m=
p3 files because even though they are only a sample of two select voices as=
 compared to the variety on the demo web page, they read a very long sample=
 of text and itcan help you get a feel for the flow. So anyone who wants to=
 listento the mp3 files, just email me.

If you have theability to use Graphical Firefox on your setup, please use G=
raphicalto click on the direct link to Readspeaker's demo page included bel=
owin this email, which offers the full variety of voices, multiple options =
for US English, multiple options for UKEnglish, as well as other languages.=
 If you would like to hear longertext read in two select voices, email me f=
or the mp3 files.
Graphicalusers please click this link to Readspeaker's official demo web pa=
ge,select any voice from the combobox list and press"listen":

https://www.readspeaker.com/text-to-speech-demo/

Consoleusers, if you cannot access Readspeaker's official demo page andwoul=
d like to listen to two mp3 samples, also to graphical users whowould just =
like to listen to the mp3 files which read a rather longpiece of text where=
 you can really get acquainted with the flow, feelfree to contact SL at:


software.liberators@slmail.me



Thanks for your timeand we look forward to your feedback,
SL and Chime
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

