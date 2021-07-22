Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D1D383D2F58
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 23:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626990461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=OQ7kS2YlHz6iC1fPlOk9UCskxnazQnt73GWJUeSqWos=;
	b=OvGuhKrttXn5UfOf2iIouiNSvDUMW+f38rd0NKScb1PpUkyrsvxdtbK9dHo0TldIYtvWPA
	NXKNpccnKkg3f6uw9DCbB+FWWFWBNz9bvEhqTbJ1EW3CvOcsoJ3V3HAbzGTAqZP+Ygk280
	nswYnlmNCRvEikLSfCtUzEOb4YmXTX4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-OZCQ68pHMSm-XxnX3uiEWw-1; Thu, 22 Jul 2021 17:47:39 -0400
X-MC-Unique: OZCQ68pHMSm-XxnX3uiEWw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 180DEEC1A6;
	Thu, 22 Jul 2021 21:47:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDFFB60C13;
	Thu, 22 Jul 2021 21:47:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2758E4BB7C;
	Thu, 22 Jul 2021 21:47:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MLlL2Q023634 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 17:47:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5D1BD20A8C09; Thu, 22 Jul 2021 21:47:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58ED020A8C08
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:47:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41BF6866DF4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:47:18 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-564-2Y3WoFyyMqyWjoYjMrmT5Q-1; Thu, 22 Jul 2021 17:47:15 -0400
X-MC-Unique: 2Y3WoFyyMqyWjoYjMrmT5Q-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 76273621C41; Thu, 22 Jul 2021 21:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 70C9E62022A
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:47:14 -0400 (EDT)
Date: Thu, 22 Jul 2021 17:47:14 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question on speakup
In-Reply-To: <87270eeb-d2f2-dd94-37e5-2114e937c554@slint.fr>
Message-ID: <Pine.LNX.4.64.2107221742510.1329936@server2.shellworld.net>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
	<Pine.LNX.4.64.2107221343071.1324567@server2.shellworld.net>
	<87270eeb-d2f2-dd94-37e5-2114e937c554@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-1180972066-1626990434=:1329936"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-1180972066-1626990434=:1329936
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

My thought, was that more than simple  abbreviations would be enough.
Not so much greater details, but if possible indicating   what to what=20
those abbreviations refer.
There are more than  one dectalk hardware option for example, still hoping=
=20
someone answers the question about  software dectalk, as I believe it=20
existed with windoweyes, dectalk 32 perhaps?, so learning it may be a=20
Linux option  in this case might help many.



On Thu, 22 Jul 2021, Linux for blind general discussion wrote:

> Hi Brandt,
> in this case whomever is also named Didier, and also grand-father (only b=
y=20
> Lucas
> so far).
>
> Providing the actual name of the synthesizer is not easy as I am not awar=
e of
> any up to date and complete  list of synthesizers that can use a given=20
> driver.
> This document:
> http://www.linux-speakup.org/speakup.html
> just provides a generic description for each driver, not all models=20
> supported,
> and it is very outdated as is in your Slint the file:
> /usr/src/linux-5.12.11/Documentation/admin-guide/spkguide.txt
>
> Also the brand and model name are not exposed in the sysfs ABI:
> https://www.kernel.org/doc/Documentation/ABI/stable/sysfs-driver-speakup
>
> So all I could do is display for each driver its description.
> For instance this command typed as root:
> modinfo speakup_dectlk|sed -n  "/^description/s/.*: *//p"
> gives this output:
> Speakup support for DECtalk Express synthesizers
>
> Would this be useful?
>
> Cheers,
> Didier
> --
> Didier Spaier
>
> Le 22/07/2021 =C3=A0 19:44, Linux for blind general discussion a =C3=A9cr=
it=C2=A0:
>> Just a suggestion, for whomever wrote this documentation?
>>  Providing the actual name of the hardware synthesizer supported might b=
e
>>  wise.=C2=A0 some of those listed could mean more than one thing.
>>
>>
>>
>>  On Thu, 22 Jul 2021, Linux for blind general discussion wrote:
>>=20
>> >  Hi Brandt,
>> >  for Slint:
>> >=20
>> >  https://slint.fr/doc/HandBook.html#_configure_a_console_screen_reader
>> >=20
>> >  I don't know a specific software synthesizer for Dectalk, but just ty=
pe=20
>> >  as root:
>> >  speak-with
>> >=20
>> >  To know more:
>> >  https://slint.fr/doc/HandBook.html#_choose_a_console_screen_reader
>> >=20
>> >  Cheers,
>> >  Didier
>> >  --=20
>> >  Didier Spaier
>> >=20
>> >  Le 22/07/2021 =C3=A0 12:09, Linux for blind general discussion a =C3=
=A9crit=C2=A0:
>> > >  =C2=A0Hi all,
>> > >=20
>> > >=20
>> > >  =C2=A0I use to know how to store and then restore my speakup settin=
gs,=20
>> > >  however,
>> > >  =C2=A0to my utter shame, I forgot how to do this.
>> > >=20
>> > >=20
>> > >  =C2=A0I also read somewhere that there is a software Dectalk synthe=
sizer
>> > >  =C2=A0available. If anyone knows how to install and configure this =
to work=20
>> > >  with
>> > >  =C2=A0speakup, it would really be appreciated.
>> > >=20
>> >=20
>> >=20
>> >  _______________________________________________
>> >  Blinux-list mailing list
>> >  Blinux-list@redhat.com
>> >  https://listman.redhat.com/mailman/listinfo/blinux-list
>> >
>>
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
---1404930036-1180972066-1626990434=:1329936
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-1180972066-1626990434=:1329936--

