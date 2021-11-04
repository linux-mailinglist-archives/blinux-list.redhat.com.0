Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CF5445915
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 18:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636048554;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=GIs/jn7ipGMZ24+ku3bGk8+CT6trCtmX/NrP/5YvSY4=;
	b=Q3lf+HwV6ABEBWVsU07TwzksSm7FSlcfQkO7moGCcuLZxJkU/nU/WE7zVCp819+6Wo58g9
	E4B/WCLv/yRXTJXwaLT5GjexOdtjAcDvbZZwm+LAOakvnIQkvaFeyMWMqDpbGs39ylQJws
	LNMoHXtrE/RCmPVrUxhx54scIzNs1yo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-khxpZwogPhe1Cx8fvKOeEA-1; Thu, 04 Nov 2021 13:55:50 -0400
X-MC-Unique: khxpZwogPhe1Cx8fvKOeEA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6868410A8E00;
	Thu,  4 Nov 2021 17:55:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BC6C60C0F;
	Thu,  4 Nov 2021 17:55:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9723D4EA2A;
	Thu,  4 Nov 2021 17:55:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4HtTH8008978 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 13:55:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2F7451121319; Thu,  4 Nov 2021 17:55:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AEDA1121314
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 17:55:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B68B48011A5
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 17:55:20 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-445-p05_J0XHPxOGM0YupRz_tA-1; Thu, 04 Nov 2021 13:55:17 -0400
X-MC-Unique: p05_J0XHPxOGM0YupRz_tA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 885F3621C86; Thu,  4 Nov 2021 17:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 84730620210
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:55:16 -0400 (EDT)
Date: Thu, 4 Nov 2021 13:55:16 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
MIME-Version: 1.0
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
	BOUNDARY="-1404930036-876737169-1636048516=:673755"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-876737169-1636048516=:673755
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

..and only software sources, which are inconsistent?
Their claim was to provide choices I believe, so if they are not doing that=
=20
much, what makes it so wonderful?
Karen



On Thu, 4 Nov 2021, Linux for blind general discussion wrote:

> It's probably using speech-dispatcher.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Thu, Nov 4, 2021 at 8:50 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Hi,
>> Have any of you tried this new screen reader?
>> Is it using Speak?
>>
>> Thanks,
>> Rob
>>
>>
>>> On Nov 1, 2021, at 9:26 PM, Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>>
>>> FWIW, I just ran across this in Hacker News...
>>>
>>>> Accessibility on Linux has historically been under-developed,
>> under-maintained, and, therefore, gained a reputation of being quite
>> painful to use as a daily driver among disabled people. We want to chang=
e
>> that.
>>>>
>>>> Yggdrasil is a new project that aims to create a better Linux screen
>> reader, written in Rust. Through this project, we aim to provide a bette=
r
>> screen reading experience than the one we currently have in Orca. A scre=
en
>> reader with all the modern features a Windows or MacOS user would expect
>> from their computers, some of which are outlined below.
>>>>
>>>>      =E2=80=A2 Object navigation
>>>>      =E2=80=A2 OCR
>>>>      =E2=80=A2 customisable navigation commands
>>>>      =E2=80=A2 a powerful add-on mechanism
>>>>      =E2=80=A2 and more.
>>>
>>> The Yggdrasil Screen Reader Project
>>> https://yggdrasil-sr.github.io/
>>> https://news.ycombinator.com/item?id=3D29056168
>>>
>>> - Rich Morin
>>>
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-876737169-1636048516=:673755
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-876737169-1636048516=:673755--

