Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1BED93D029A
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 22:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626812451;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=APPBFrJyTRr0bsBXFK10EW7jZkzuqwq51ftL/KWLgeY=;
	b=jFnM9prNmfleHEDp+HCOEkuci7a+ETb2TEM8OKT0RZNR4tUwp62Wxa4eN2Y/+jGO0GFfSu
	0a8NqYgVXWHheZ58Sx3IQ1iiA076u++eD28hzYZuDp855pJVP+doDh/86aMqsCys97miel
	8crv2grfIjOYqzlZHkURZwwOpqf+46g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-EL7zWah7O4ucgq31Ewce9g-1; Tue, 20 Jul 2021 16:20:48 -0400
X-MC-Unique: EL7zWah7O4ucgq31Ewce9g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDC3918414A0;
	Tue, 20 Jul 2021 20:20:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F143819C59;
	Tue, 20 Jul 2021 20:20:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D2BF94EA2F;
	Tue, 20 Jul 2021 20:20:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KKKZKm005123 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 16:20:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DFE2E2126C93; Tue, 20 Jul 2021 20:20:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAA662126C8B
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 20:20:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89822800FFB
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 20:20:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-14-efF-FMegPKKyhABXtbfcFQ-1;
	Tue, 20 Jul 2021 16:20:25 -0400
X-MC-Unique: efF-FMegPKKyhABXtbfcFQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E3B63A3A17
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 20:20:23 +0200 (CEST)
Subject: Re: changing the keymap in fluxbox on Slint
To: blinux-list@redhat.com
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
	<2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
	<018401d77d86$43c1c120$cb454360$@gmail.com>
	<9cce1164-c4ad-140a-091d-d28d5459f45d@slint.fr>
	<29f4cf34-e24c-b336-1bca-f6fb5cab6eb1@gmail.com>
Message-ID: <ded3c5a3-d3bc-b913-d4af-64f039483088@slint.fr>
Date: Tue, 20 Jul 2021 22:20:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <29f4cf34-e24c-b336-1bca-f6fb5cab6eb1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Type: multipart/mixed; boundary="------------250A9BEF67E22DD84CBB1A5D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------250A9BEF67E22DD84CBB1A5D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Brandt,

looking at /etc/X11/xkb/rules/evdev.lst line #295
   dvorak-l        us: English (left handed Dvorak)
as this line is after line #286:
! variant

I assume that you should have
=09Option=09=09=09=09"XkbLayout" "us"
=09Option=09=09=09=09"XkbVariant" "dvorak-l"
instead.

Please try the attached modified file and tell us how that goes.

Cheers,
Didier
--
Didier Spaier

Le 20/07/2021 =C3=A0 21:24, Linux for blind general discussion a =C3=A9crit=
=C2=A0:
> Hi Didier,
>=20
>=20
> See the attached file.
>=20
>=20
> Warm regards,
>=20
>=20
> Brandt Steenkamp
>=20
>=20
> Sent using Thunderbird from Slint
>=20
> On 7/20/21 6:47 PM, Linux for blind general discussion wrote:
>> Hi Brandt,
>>
>> please attach the file /etc/X11/xorg.conf.d/10-keymap.conf to your=20
>> next post.
>>
>> Cheers,
>> Didier
>>
>> Le 20/07/2021 =C3=A0 18:42, Linux for blind general discussion a =C3=A9c=
rit=C2=A0:
>>> Hi Didier,
>>>
>>> Sorry, no luck on fixing the keyboard layout. I tried everything I=20
>>> could think of to do, but no luck.
>>>
>>> -----Original Message-----
>>> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com>=
=20
>>> On Behalf Of Linux for blind general discussion
>>> Sent: Tuesday, 20 July 2021 18:15
>>> To: blinux-list@redhat.com
>>> Subject: Re: changing the keymap in fluxbox on Slint
>>>
>>> Hi Brandt,
>>>
>>> It could be an issue with the file /usr/share/salixtools/keymaps=20
>>> leading to write in /etc/X11/xorg.conf.d/10-keymap.conf
>>>
>>> Option=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 "XkbLayout" "dvorak"
>>> instead of:
>>> Option=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 "XkbLayout" "dvorak-l"
>>>
>>> when running keyboardsetup or gtkkeyboardsetup.
>>>
>>> Please edit this 10-keymap.conf as root, replacing dvorak by=20
>>> dvorak-l, restart a window manager. Does it now work?
>>>
>>> Best regards,
>>> Didier
>>> --=20
>>> Didier Spaier
>>> Slint maintainer
>>> didieratslintdotfr
>>>
>>> Le 20/07/2021 =C3=A0 17:26, Linux for blind general discussion a =C3=A9=
crit :
>>>> Hi all,
>>>>
>>>>
>>>> I installed Slint in a VM, by default running the Mate desktop, which
>>>> I could easily fix, but when I start FluxBox, not so much.
>>>>
>>>>
>>>> The issue is as follows: In the Slint install I chose Dvorak -L
>>>> (Left-Handed Dvorak) as my keyboard. However, when I ran "startx" to
>>>> get in to my desktop, I was presented with the Dvorak keyboard layout,
>>>> which, as a one-handed lefty, I obviously do not know.
>>>>
>>>>
>>>> I fixed this very easily in the Mate desktop, but have no idea how to
>>>> do so in the Window Managers, FluxBox, BlackBox, etc.
>>>>
>>>>
>>>> If anyone can, please help me with this issue? I would really
>>>> appreciate it.
>>>>

--------------250A9BEF67E22DD84CBB1A5D
Content-Type: text/plain; charset=UTF-8;
 name="10-keymap.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="10-keymap.conf"

U2VjdGlvbiAiSW5wdXRDbGFzcyIKCUlkZW50aWZpZXIJCQkiS2V5Ym9hcmQtYWxsIgoJTWF0Y2hJ
c0tleWJvYXJkCQkieWVzIgoJTWF0Y2hEZXZpY2VQYXRoIAkiL2Rldi9pbnB1dC9ldmVudCoiCglE
cml2ZXIJCQkJImV2ZGV2IgoJT3B0aW9uCQkJCSJYa2JMYXlvdXQiICJ1cyIKCU9wdGlvbgkJCQki
WGtiVmFyaWFudCIgImR2b3Jhay1sIgoJT3B0aW9uCQkJCSJYa2JPcHRpb25zIiAiIgpFbmRTZWN0
aW9uCgo=
--------------250A9BEF67E22DD84CBB1A5D
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--------------250A9BEF67E22DD84CBB1A5D--

