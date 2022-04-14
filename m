Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC52500DB0
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 14:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649939760;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6YhG2ydwe+Xh1JTd+TQKW4zW2jFbZmMrOaMdepNEVak=;
	b=ThgT7iSMP8NEWCQyKjXPXWde1v3Pbnh4XQSH05l/lpNGMm3Cqjil92q04hlsJqXAEcYw6e
	wYCn6LT0LzYB+HO4XnVeFNbUMH4skeCIPcAxb3wDvhwEHsX31EaQ1UkLQ8H/L8vm5lSxE3
	KJAPL727K/tRxI7wx8hlu99/itKstlc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-CBMNSukmNWyX49qi79-3sw-1; Thu, 14 Apr 2022 08:35:57 -0400
X-MC-Unique: CBMNSukmNWyX49qi79-3sw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79D6C10666A9;
	Thu, 14 Apr 2022 12:35:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BC96D53CF;
	Thu, 14 Apr 2022 12:35:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EE97E194034B;
	Thu, 14 Apr 2022 12:35:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8228.1649902278.111205.blinux-list@redhat.com>
References: <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8323.1649896260.111207.blinux-list@redhat.com>
 <mailman.8220.1649898351.111205.blinux-list@redhat.com>
 <mailman.8227.1649901807.111205.blinux-list@redhat.com>
 <mailman.8228.1649902278.111205.blinux-list@redhat.com>
User-Agent: Notmuch/0.35 (https://notmuchmail.org) Emacs/28.1
 (x86_64-pc-linux-gnu)
Date: Thu, 14 Apr 2022 14:33:04 +0200
MIME-Version: 1.0
Message-ID: <mailman.8692.1649939739.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Hmmm, interesting, about "the blind" and being human.

I have no problem with it anyway, because I just wonder: "The blind" has
and will always refer to humans and not some animals.

Then about blind-specific products: the Orca you are using on the
computer is certainly a blindie thing, isn't it? The fact that you
require specialised applications 'made for the blind' to participate in
mainstream activities says otherwise.


Linux for blind general discussion <blinux-list@redhat.com> writes:

> Well, no, I didn't mean to replace one for-the-blind specialized Linux 
> distribution with another. Everything I said centered around the fact 
> that I use something that anyone can use, I work with anyone, and I am 
> human above all, not the blind. Slint is also a one-man show that is 
> just a specialized Slackware, albeit with some improvements, and even 
> Slackware as old as it is is also a one-man show. I am much more in 
> favor personally of using distributions with much better community 
> support and more than one person maintaining them. Yes, a team can get 
> too large for the good of its own project, but two heads are always 
> better than one, and three can usually be better than 2.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

