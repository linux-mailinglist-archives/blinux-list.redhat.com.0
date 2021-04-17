Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DA396363197
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 19:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618681410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q9Hn9NlETsDzMMPPIekX3CkIbrnJe/DCOsZ713kji/4=;
	b=MTZ9mz4bhD0bcFJADDEMA19QfT0u0b+wZdjlP6KassCguqENxB6s3kLTynV8H1OZgjJ1vv
	sfgpAMVKIERp1yIQ1PJQiFMFPUnUSSOdrNW4UZ+XZwXiobP8OCcVywsfeMQFlTyqShkly7
	oPuvcHwuBRIt3ubY3cBD353zjy0lRc0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-rjusqQvUNgGwWcI699emyw-1; Sat, 17 Apr 2021 13:43:29 -0400
X-MC-Unique: rjusqQvUNgGwWcI699emyw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B9C86D241;
	Sat, 17 Apr 2021 17:43:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFA1019635;
	Sat, 17 Apr 2021 17:43:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4C9844A5B;
	Sat, 17 Apr 2021 17:43:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HHhHDX006687 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 13:43:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 21FF143692; Sat, 17 Apr 2021 17:43:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C90043691
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:43:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F4E08001A6
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:43:14 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-385-3IHReynFPm6PPBcyI1UJnQ-1; Sat, 17 Apr 2021 13:43:12 -0400
X-MC-Unique: 3IHReynFPm6PPBcyI1UJnQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 128D2621C2C; Sat, 17 Apr 2021 17:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 0EED162022F
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 13:43:11 -0400 (EDT)
Date: Sat, 17 Apr 2021 13:43:11 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <Pine.LNX.4.64.2104171340500.2504722@server2.shellworld.net>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
	<161862814448.7.6659849185338098597.5940568@simplelogin.co>
	<161863093723.7.7991468665084930791.5941189@slmail.me>
	<PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I would  suggest your asking the question on the main Debian list.
My understanding from there is that Mozilla has pulled developers from the 
Thunderbird project.
Additionally, articles documenting the same were circulated via  my local 
lug.


On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> I don't see the message being referred to below, but what's the danger of Thunderbird being discontinued? Is it in more jeopardy then other open source applications?
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
> Sent: Friday, April 16, 2021 10:42 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: SL's response to all inquiries re: Readspeaker voices
>
> Hi Kare,
> Thanks so much for explaining that.
> I've never used Thunderbird before, and if there is a chance that it might be discontinued, then I might as well start by trying the least involved method first, saving documents as .txt in LibreOffice before pasting.
> I'll try a test with that tomorrow with just a test document and see how it formats.
> Thanks for the suggestions.
> If I need to ask any more questions about email clients and text editors, I will do so in a seperate dedicated thread, as I know this formatting fiasco has kinda derailed the subject matter of the thread here.
> So if anyone has any further questions, comments, or ideas pertaining to Readspeaker voices, go ahead and either post them in this thread, or in the other thread I started titled: "Sending Reformatted: SL's responses to all inquiries" in which my post is correctly legible for those who couldn't make sense of the jumbled email that began this thread.
> I'm signing off for tonight, I'll check back in tomorrow.
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

