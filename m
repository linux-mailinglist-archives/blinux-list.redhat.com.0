Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA6557E65
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 17:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655996511;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8jS4Jfi16qRJrFF1I+QllmQ+il2ZPrg9ZmxS7nsTEac=;
	b=V2kL9wCRidEnuvQZIS0Q8Z3TXgapBjBrvF9fcJxQRm9xuBREyKYqEZ+InvrOxwuN0ANw7I
	6Wcf/tVS/KA0HrLfvp0k0qMlmQsh6DkrsRRwq2WR4Mhgnck291nUCRt4nRLBjczuPxE/hu
	esgHlJxjSQuMJ08kEePxuqsrgKtMeQQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-404-8070wTCHOl6DFBR1XZMvvg-1; Thu, 23 Jun 2022 11:01:47 -0400
X-MC-Unique: 8070wTCHOl6DFBR1XZMvvg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63528805B8A;
	Thu, 23 Jun 2022 15:01:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4A916492CA5;
	Thu, 23 Jun 2022 15:01:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 82099194B956;
	Thu, 23 Jun 2022 15:01:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Jun 2022 16:57:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Thoughts on KDE Plasma as of right now
To: blinux-list@redhat.com
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
Message-ID: <mailman.28197.1655996500.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy,

glad to hear that you like the work.
> That being said, I still cannot change system settings or default apps 
> like I can on, say, Mate but, and here's the thing I like about KDE 
> Plasma as of writing this... 
this is active worked on. so hopefully this should be fixed soon :).
> Now, if I can just work on adding a shortcut that doesn't require me 
> to go and fight with a window that won't read, that'd be good
what does this mean? you talk about the settings dialog for shortcuts? 
or anything else?

cheers chrys

Am 23.06.22 um 12:17 schrieb Linux for blind general discussion:
> So given the news about KDE accessibility getting worked on, I figured 
> I'd give KDE a shot. I wasn't that impressed last time.
>
> However. It's improved a lot, I can do basic things, which is a big 
> step up, and I get talking app launchers, and can do email, web 
> browsing and text editing which is a big, big plus.
>
>
> That being said, I still cannot change system settings or default apps 
> like I can on, say, Mate but, and here's the thing I like about KDE 
> Plasma as of writing this...
>
>
> It is fast, it, on my Arch box, so YMMV on other OSes, but I'm running 
> this on my Arch box, the thing I like about it is the keyboard 
> commands make sense.
>
> Now, if I can just work on adding a shortcut that doesn't require me 
> to go and fight with a window that won't read, that'd be good. Plasma 
> is pleasently surprising and worth checking in on.
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

