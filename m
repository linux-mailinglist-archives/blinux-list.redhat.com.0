Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C034B180D
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 23:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644531714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=hJsV7lVl1WLOSYtDG8he2rEWmjclu7/DOJgHVRKa9sg=;
	b=gKAR1likv8pRfv0x5KdIM6L7eTnsXilJ5zfUngnrKTx9PGw60eK3SXnCsEP0j10VoeqZEK
	3VPFY0v2Xpi+kpku7/U9ayxWAtM7h6UEOnDoUfuQXj9kso2qUXtp9AsobDl+eH3MxaftFG
	Bfp+nIx76Jv9VammQ/qF0SXR67aMsiA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-228-hgKz78_xO3ynZ4kyEGliHw-1; Thu, 10 Feb 2022 17:21:50 -0500
X-MC-Unique: hgKz78_xO3ynZ4kyEGliHw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C27F4835B4C;
	Thu, 10 Feb 2022 22:21:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB05F4E2D8;
	Thu, 10 Feb 2022 22:21:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4CEEF1809CB8;
	Thu, 10 Feb 2022 22:21:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AMLQA3013986 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 17:21:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 42ED3141DEE8; Thu, 10 Feb 2022 22:21:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EEB6141DEDE
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 22:21:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25BB48038E3
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 22:21:26 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-540-EfYneuV7NQ2Wyx-mnV2gqg-1; Thu, 10 Feb 2022 17:21:24 -0500
X-MC-Unique: EfYneuV7NQ2Wyx-mnV2gqg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 59108620233; Thu, 10 Feb 2022 22:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 53AA162017D
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 17:21:22 -0500 (EST)
Date: Thu, 10 Feb 2022 17:21:22 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <1dbf9974-8873-b5ca-1ea0-9e77047677ff@protonmail.com>
Message-ID: <Pine.LNX.4.64.2202101716160.517958@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<1dbf9974-8873-b5ca-1ea0-9e77047677ff@protonmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-678327728-1644531682=:517958"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-678327728-1644531682=:517958
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

this is a  Linux list, not a w3c one.
Further the principle of wACg  is that all tools should be included.
you are talking about humans, and those humans work differently.
there are html5 tools associated with lynx as well.
What I found  concerning is this hey Linux users we all have this tool!
Which is not true at all.
Lastly you will find very few if any situations where Linux is even=20
considered a suitable waCG testing environment.
Webaim.org
who  surveys screen reader users has stated Linux has no place in their=20
evaluation.



On Thu, 10 Feb 2022, Linux for blind general discussion wrote:

> That's not true.
>
> The samples are provided through a *standardized* HTML audio player, as
> defined by the World Wide Web consortium (the *authority* for HTML, run
> by its creator).
>
>
> If some command-line application is unable to process it correctly,
> that's not a problem of W3C, HTML or any its user.
>
>
> Best regards
>
>
> Rastislav
>
>
> D=C5=88a 10. 2. 2022 o 19:10 Linux for blind general discussion nap=C3=AD=
sal(a):
>> ..which makes stating that these are accessible incorrect.
>> Linux exists in command line as well as gui.  as someone else in a
>> different thread noted recently, they personally would not touch gui
>> again for  the rest of their lives if given a choice.
>> Meaning these options are not universally available or accessible in Lin=
ux
>> as a whole.
>> might as well say, please only be disabled as I personally define it,
>> writing accessible by your own dictionary and seemingly to project it on
>> to other people.
>> Why not say from the outset, that the items are only available for some
>> Linux users?
>>
>>
>>
>> On Wed, 9 Feb 2022, Linux for blind general discussion wrote:
>>
>>> The samples are HTML5 audio elements on the page. They're fairly easy t=
o
>>> download, but only on browsers like Firefox and Chrome. I don't know if=
 they
>>> have fallback links for text-based browsers. My website has fallbacks, =
but
>>> Firefox, Chrome and other HTML5 browsers hide them. I didn't try the sa=
mples
>>> in a different browser to see whether fallback download links are prese=
nt.
>>> The youtube link does offer a fairly decent example of the quality of s=
peech
>>> and sound though
>>>
>>> ~ Kyle
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-678327728-1644531682=:517958
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-678327728-1644531682=:517958--

