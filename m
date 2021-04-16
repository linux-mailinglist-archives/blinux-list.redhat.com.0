Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 46B1C36273D
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 19:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618595624;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=al6VX7vXvqRdwpjvo13I9KEnrf6jfjYKEiifBzvqrwc=;
	b=FBgd792fF8zd6bPCC9dwEK/upfcAULqQD3hRTtjIGdlKxKbpqHtzK91dOSh9SVLvYOAU8C
	3JhfD2S47L86Ah8cPOsFMR+ffhL4W9r2coHYTsSRQh8ckjXBcGXeCLe0GLY5cCGhy6TJac
	4TsW2U6NFhKO1+LFbTCQxN3S6Fg4HG0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-a7Ja6EHvNtOceDH9HffIjQ-1; Fri, 16 Apr 2021 13:53:41 -0400
X-MC-Unique: a7Ja6EHvNtOceDH9HffIjQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C433119253C3;
	Fri, 16 Apr 2021 17:53:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A81452617D;
	Fri, 16 Apr 2021 17:53:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACD891809C82;
	Fri, 16 Apr 2021 17:53:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GHq1kO021095 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 13:52:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A655421BBFA8; Fri, 16 Apr 2021 17:52:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A055D21BBF9E
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 17:51:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18BE5185A7B8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 17:51:59 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-591-cqkzYj3TNsyOfbhDgWA7OQ-1; Fri, 16 Apr 2021 13:51:56 -0400
X-MC-Unique: cqkzYj3TNsyOfbhDgWA7OQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3C64C621C36; Fri, 16 Apr 2021 17:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 38A56621C27
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 13:51:55 -0400 (EDT)
Date: Fri, 16 Apr 2021 13:51:55 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Would you be interested in having natural sounding TTS voices
	by Readspeaker on Linux? demo link included
In-Reply-To: <a292b20a-bcd7-0b81-b44b-2721e1453e6d@debian.org>
Message-ID: <Pine.LNX.4.64.2104161344520.2344535@server2.shellworld.net>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<a292b20a-bcd7-0b81-b44b-2721e1453e6d@debian.org>
MIME-Version: 1.0
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
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-594899647-1618595515=:2344535"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-594899647-1618595515=:2344535
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Speaking to the remind below.
what interests me here is the possibility that, if made available, one=20
could  select these voices at the start  or near the start of installing=20
Linux.
for me this is critical, because as it stands, the default Linux voices=20
are  potentially physically dangerous.
So, knowing that a choice I can safely use is an option might be the=20
difference between not using Linux in a stand alone form at all,  and=20
using the platform.
So, yes I am interested.
I believe though you  might wish to expand your research sample, other=20
populations use screen readers,  and if the voices work in say terminal=20
form, they may be viable options for mac terminal users, perhaps even the=
=20
new Linux incorporated in some windows systems.



On Fri, 16 Apr 2021, Linux for blind general discussion wrote:

> Hi,
> First, small remind: so far 2 high quality are available for Linux=20
> (non-free): Voxygen (via Hypra) and Nuance (via Voxin). These new voices =
seem=20
> interesting to me. Linux needs high quality voices (to be honest I am not=
=20
> fully convinced by Voxygen in other languages than French). The medium pr=
ice=20
> is about 20 euros per voice in the existing products.
>
> So would be happy to have this new product.
>
> regards
>
>
>
> Jean-Philippe MENGUAL
> Debian Developer non uploading
> Community team member
> Accessibility team member
> debian-l10n-french team member
> President of Debian France non-profit organization
> Le 16/04/2021 =C3=A0 06:46, Linux for blind general discussion a =C3=A9cr=
it=C2=A0:
>>
>>  Hi everyone,
>>  This is SL.
>>  Some of you may remember that lastmonth, Chime and I were trying to fin=
d a
>>  way to legally port Ivonavoices to Linux.
>>  We have been in communications withReadspeaker, a company which creates
>>  its own quality TTS voices andis also an official distributor of Ivona.
>>  Unfortunately, due torestrictions and incompatibility, we are unable to
>>  bring Ivona toLinux at this time.
>>  However, Readspeaker is willing to considerthe possibility of working w=
ith
>>  us to bring their own high fidelityReadspeaker brand voices to Linux as=
 a
>>  TTS option to use with Linuxscreenreaders if there is enough interest i=
n
>>  the community and if theventure would be commercially viable.
>>  Right now, we are onlysending this to the Blinux list, so please do not
>>  forward it, as thisis not an official survey.
>>  If there is confirmed interest withinthe Blinux list as a baseline samp=
le
>>  group, then we would send anofficial survey which would be reviewed by
>>  Readspeaker beforehand,and widely dispersed amongst multiple blind
>>  Linux/tech groups to gageinterest, pricing, language preferences,
>>  screenreader preferencesetc.
>>  Right now, we simply want to know if anyone else on thislist would want=
 to
>>  have Readspeaker voices to use as a TTS option forLinux screenreaders
>>  before engaging in any further outreachefforts.
>>  We first need to know that we are not the only ones whothink it would b=
e
>>  worth it to have Readspeaker's high fidelity voiceson Linux.
>>  If there is enough interest in this potential project,it would likely b=
e a
>>  model similar to Voxin, where the consumer paysa yet-to-be-determined f=
ee
>>  to have their choice of Readspeaker voicefor their Linux screenreader.
>>  We can refine those particulardetails later.
>>  For now, we just want to know if anyone on thisBlinux list would be
>>  interested in having Readspeaker voices on Linuxfor a more natural
>>  sounding TTS experience.
>>  If so, then we wouldknow whether to confirm interest with Readspeaker a=
nd
>>  work on anofficial survey which would help us determine price range and
>>  whichlanguages to focus on etc.
>>  So, in this email we are including adirect link where you can listen to
>>  demos of Readspeaker voices andwe ask that you let us know if you would=
 be
>>  interested in havingReadspeaker TTS on Linux.
>>  Please abide by Readspeaker's termsand conditions which prohibit the
>>  recording of said demos.
>>  Inthis email there is a direct link to Readspeaker's official demo page=
on
>>  their website which features a variety of voices to sample. Justselect
>>  which voice you want to hear in the combo box, then press"listen".
>>  This link is preferable as you can accessmultiple voices which can be
>>  included in a Linux compatibleSDK.
>>   =C2=A0However, you will need to use Firefox in Graphical toaccess it. =
If you
>>   have the ability to use graphical Firefox, pleasedo as this will give =
you
>>   the largest variety of choices.
>>  Weunderstand that some users may be accustomed to only using
>>  Consolebrowsers, and some multi media websites that work just fine
>>  withGraphical Firefox will not render on Lynx.
>>  If you areexclusively a Console user and cannot use Graphical Firefox t=
o
>>  access the link below in this email,Readspeaker sent us two mp3 files, =
one
>>  with a sample of a US Englishvoice, and the other with a sample of a UK
>>  English voice for Consoleusers to listen to if they cannot switch to
>>  Graphical and use Firefoxto access Readspeaker's official demo page on
>>  their website.
>>
>>  It is ourunderstanding that mp3 files cannot be posted to this
>>  mailinglist. (If this is incorrect, I can send a second email with the =
mp3
>>  files if mp3 files are allowed on the Blinux list). Otherwise, if anyon=
e
>>  on this list is exclusively a Console user and cannotaccess the link to
>>  Readspeaker's demo page included in this message,please feel free to em=
ail
>>  me, SL, at my email address which I willpost at the bottom of this mess=
age
>>  and I can send the two mp3 filesto you.
>>
>>
>>  However, the mp3files are only one sample of a US English voice, and on=
e
>>  sample of aUK English voice. They are created for Console users who
>>  cannotaccess Readspeaker's official demo page which has the full variet=
y
>>  ofvoices.
>>
>>    Even if you are a graphical user, you may still want to listen tothe =
two
>>    mp3 files because even though they are only a sample of two select
>>    voices as compared to the variety on the demo web page, they read a v=
ery
>>    long sample of text and itcan help you get a feel for the flow. So
>>    anyone who wants to listento the mp3 files, just email me.
>>
>>  If you have theability to use Graphical Firefox on your setup, please u=
se
>>  Graphicalto click on the direct link to Readspeaker's demo page include=
d
>>  belowin this email, which offers the full variety of voices, multiple
>>  options for US English, multiple options for UKEnglish, as well as othe=
r
>>  languages. If you would like to hear longertext read in two select voic=
es,
>>  email me for the mp3 files.
>>  Graphicalusers please click this link to Readspeaker's official demo we=
b
>>  page,select any voice from the combobox list and press"listen":
>>
>>  https://www.readspeaker.com/text-to-speech-demo/
>>
>>  Consoleusers, if you cannot access Readspeaker's official demo page
>>  andwould like to listen to two mp3 samples, also to graphical users
>>  whowould just like to listen to the mp3 files which read a rather
>>  longpiece of text where you can really get acquainted with the flow,
>>  feelfree to contact SL at:
>>
>>
>>  software.liberators@slmail.me
>>
>>
>>
>>  Thanks for your timeand we look forward to your feedback,
>>  SL and Chime
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>>=20
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-594899647-1618595515=:2344535
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-594899647-1618595515=:2344535--

