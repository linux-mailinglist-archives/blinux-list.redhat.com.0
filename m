Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 150874B1506
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 19:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644516725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N2mfRKgaLcZkQIMIlQ151HIGXqp8A7Pfp+HwjiBiUZw=;
	b=SOq2PCDQi9lC0ao9EIxXxy9IHmztP5kObRJXwq77Et6Sk2s7snPpU19Tb1oC/6/+Sru2gJ
	5343mLvJKuvDA5h32skS6/eqbLDO9ExTU98IdDW2Gb8G/NuLmYabflMrjNwoI5y82kCwWm
	rzsHhYGXFbUkfrt0c4gE6o425kSVZAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-YlHV5XqmOrGY1MOkhnLRKQ-1; Thu, 10 Feb 2022 13:12:01 -0500
X-MC-Unique: YlHV5XqmOrGY1MOkhnLRKQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 273AEA0C17;
	Thu, 10 Feb 2022 18:11:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB29D70D2F;
	Thu, 10 Feb 2022 18:11:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9444D4BB7B;
	Thu, 10 Feb 2022 18:11:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AIA4Bq025940 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 13:10:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8F2BC40F9D71; Thu, 10 Feb 2022 18:10:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B1D840F9D6B
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:10:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E4E61C07CC7
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:10:04 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-570-x5vvwpQJN-CwxnA-yYIimg-1; Thu, 10 Feb 2022 13:10:02 -0500
X-MC-Unique: x5vvwpQJN-CwxnA-yYIimg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 1344A620C65; Thu, 10 Feb 2022 18:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 10675620233
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:10:01 -0500 (EST)
Date: Thu, 10 Feb 2022 13:10:01 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
Message-ID: <Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

..which makes stating that these are accessible incorrect.
Linux exists in command line as well as gui.  as someone else in a 
different thread noted recently, they personally would not touch gui 
again for  the rest of their lives if given a choice.
Meaning these options are not universally available or accessible in Linux 
as a whole.
might as well say, please only be disabled as I personally define it, 
writing accessible by your own dictionary and seemingly to project it on 
to other people.
Why not say from the outset, that the items are only available for some 
Linux users?



On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> The samples are HTML5 audio elements on the page. They're fairly easy to 
> download, but only on browsers like Firefox and Chrome. I don't know if they 
> have fallback links for text-based browsers. My website has fallbacks, but 
> Firefox, Chrome and other HTML5 browsers hide them. I didn't try the samples 
> in a different browser to see whether fallback download links are present. 
> The youtube link does offer a fairly decent example of the quality of speech 
> and sound though
>
> ~ Kyle
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

