Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A9A5705AA
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 16:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657550068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V+R28rS6ZayjuzbrH4uOH6MZS+85jMG7qmZ5hPQjsyk=;
	b=Y7STlpoMQeVNDcwkqDrsSLsEa364GX9YXEmzOzD36QCQX+r3OStLABGQWu6jS2L3wbugZu
	lPQIIzkWRZtvmL7FjRARB4CAjLJ9tnMnVhEqNVEINnIxckao5mgKMqkPX0F8bs5ALjNx3Y
	ciLUDPHPCOZQoiz9hhW2RtAdZ9s4g9M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-DR6ZseEiOw6Fr47QvgOg6w-1; Mon, 11 Jul 2022 10:34:24 -0400
X-MC-Unique: DR6ZseEiOw6Fr47QvgOg6w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67667380114E;
	Mon, 11 Jul 2022 14:34:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9633BC15D40;
	Mon, 11 Jul 2022 14:34:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 22260194705A;
	Mon, 11 Jul 2022 14:34:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Jul 2022 10:34:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: I3wm, any progress?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.32023.1657544590.111207.blinux-list@redhat.com>
Message-ID: <mailman.32824.1657550060.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

And why do you all not like mate?


MATE is very good, and it is probably more accessible than just about 
any full desktop environment currently available. But for some older 
machines with less than 2GB of RAM, even MATE, as lightweight as it is, 
can get slow. MATE is not just a window manager; its window manager is 
called Marco, which I believe can also be used standalone if desired. 
MATE is a full desktop environment complete with file management, 
panels, menus, pretty much everything you would expect from a full 
desktop. On the other hand, a window manager just manages application 
windows, allowing them to be arranged, switched, resized, etc. Yes, the 
window manager is a very important component of a desktop environment, 
as a desktop environment just won't work without a window manager. But 
it's just a part of a full desktop environment, not the whole thing. The 
main reason one would use a window manager without a full desktop 
environment would be to get more life out of an old machine or to 
customize the other components as needed, or to forego them altogether.


> I understand that testing new things is interesting, but whats wrong 
> with Mate and why should I switch to another WM eventualy and what 
> will those other desktop environments make better?


You don't need to switch at all. If MATE is your thing, definitely stay 
with it. It's what I run here, and I like it very much, although I do 
test things once in a while just to see how far things are coming along. 
A standalone window manager is not my thing at all, and it doesn't have 
to be, and it's the same for you. It's good though that some of these 
are getting some love from the accessibility side of things.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

