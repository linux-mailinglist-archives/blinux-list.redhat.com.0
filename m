Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EAB45F088
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 16:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637940136;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ga5aoI2UFdqX8vwAuJwfyWDyEYR/DONxfRp4qTtWHMo=;
	b=YLRNShmvINoyD2S1ZKzg3zrlZMknmTdweyJeqjkkIkzL+/ClZlqYDsftr9qDqZY6BA4ZrQ
	OMyCRjb6BgvjIcE73WFMOLyFwSQbMsaj0XWnv9M2m8mjQ5fKhLzCYLnv56cP06T78CmJAV
	wBKT3I4y7VLMItLHH0loxOKrrtiYOGM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-137-7g3SoLG9NQWSuv4vt1EG0w-1; Fri, 26 Nov 2021 10:22:12 -0500
X-MC-Unique: 7g3SoLG9NQWSuv4vt1EG0w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9D6D19251A0;
	Fri, 26 Nov 2021 15:22:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83E366060F;
	Fri, 26 Nov 2021 15:22:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 422594BB7B;
	Fri, 26 Nov 2021 15:21:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQFLVoa024068 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 10:21:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B442D404727A; Fri, 26 Nov 2021 15:21:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B00F94047272
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 15:21:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9868D185A7B4
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 15:21:31 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-506-B9o2bAEiNO2pq1Zn-ODM3A-1; Fri, 26 Nov 2021 10:21:29 -0500
X-MC-Unique: B9o2bAEiNO2pq1Zn-ODM3A-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id AE459620F89; Fri, 26 Nov 2021 15:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id AD85A620210
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 10:21:28 -0500 (EST)
Date: Fri, 26 Nov 2021 10:21:28 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <alpine.DEB.2.21.1.2111261013440.16055@willempc.meraka.csir.co.za>
Message-ID: <Pine.LNX.4.64.2111261019540.100465@server2.shellworld.net>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
	<Pine.LNX.4.64.2111251423530.4138651@server2.shellworld.net>
	<alpine.DEB.2.21.1.2111261013440.16055@willempc.meraka.csir.co.za>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

the actual question is about calibre itself.
One cannot run a command line tool if the entire package itself cannot be 
run  from the console if that  is a better question.



On Fri, 26 Nov 2021, Linux for blind general discussion wrote:

> Who ever this is,
> Yes, ebook-convert is the command line tool which is part of calibre that can 
> be used for the conversions.
> Regards, Willem
>
>
> On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>
>>  Question?
>>  There is an edition of clibre that works from the command line only?
>> 
>> 
>>
>>  On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>> 
>> >  Hi,
>> >  I have not read the full thread, but here goes.
>> >  Install calibre, then use ebook-convert epubfile.epub plaintextfile.txt
>> >  for the most basic form.
>> >  There also is epr, a console-based epub reader.
>> >  pandoc also will do the basic epub to txt conversion for you.
>> >  FWIW, Willem
>> > 
>> > 
>> >  On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>> > 
>> > >   Hi All.
>> > > 
>> > >   Personally, I like Unoconv.
>> > > 
>> > >   25.11.21 17:47, Linux for blind general discussion ????????:
>> > > >   I don't know of any tools specifically for ePub... but I recently
>> > > >   found out ePubs are just zip archives with most of the content 
>> > > >   stored
>> > > >   as html files and some metadata files used by ePub readers.
>> > > > >   Also, I haven't used it, but I've heard others describe pandoc as 
>> > > > >   the
>> > > >   anything to anything else of document conversion.
>> > > > >   _______________________________________________
>> > > >   Blinux-list mailing list
>> > > >   Blinux-list@redhat.com
>> > > >   https://listman.redhat.com/mailman/listinfo/blinux-list
>> > > > 
>> > >   _______________________________________________
>> > >   Blinux-list mailing list
>> > >   Blinux-list@redhat.com
>> > >   https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

