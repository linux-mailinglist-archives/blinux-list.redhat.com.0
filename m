Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE8D4FFF0E
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 21:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649877638;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vMhQKGe/e0cZVGlcMpu/zldaXhdkg90Z8B3CkvPWqvo=;
	b=T6mp4bf0itn+EG1GyC25dCmFzqT1P0ltMyLvmApIVA1vlc+k5IzzhUlu2o2HQv6uIMGOO+
	jhj1ZnTXzZe1DjyNfvZXM62GzzuDIYWA7y/e8RZ2sBvod5MxHvNaBHtpL7GtBONzMzFg35
	NK7Z8flMKcPMUxTluKunuLQ2gJhf0jA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-cmjaD_oEM9izsycGMVstTw-1; Wed, 13 Apr 2022 15:20:34 -0400
X-MC-Unique: cmjaD_oEM9izsycGMVstTw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AE2A85A5BC;
	Wed, 13 Apr 2022 19:20:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8FBDBC27DBF;
	Wed, 13 Apr 2022 19:20:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C1A0B1940353;
	Wed, 13 Apr 2022 19:20:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 15:20:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.8162.1649859377.111209.blinux-list@redhat.com>
Message-ID: <mailman.8442.1649877631.111206.blinux-list@redhat.com>
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

But there's my point. It may be that you don't want your calendar and 
search bar, but others do. We can argue all day long that they should 
not be on by default, or that they should. The point I'm trying to make 
is that Thunderbird is mostly usable right out of the box, cluttered 
though it is, but Mutt makes you go through a ton of configurations just 
to make it read a mailbox, which is something that Thunderbird can do in 
about 30 seconds, but takes a week of fiddling about in Mutt's nearly 
incomprehensible configuration files that are not documented internally 
very well, or wading through tons of online documentation just to find 
out how to set up a mailbox. There is such a thing as exposing an end 
user to every conceivable setup, allowing him/her to make changes to 
every aspect of the system, and then there's dropping the end user into 
the middle of the ocean without a life jacket and expecting him/her to 
be able to find the way to the shore. As I said, I would pretty much 
consider myself to be a power user, and I couldn't survive Mutt 
configuration apart from *mostly* getting it working on a home computer 
that was doubling as an email server at the time, and that's not 
practical for most people, especially those who just want to be able to 
set up a new computer and start reading and responding to email in a few 
minutes.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

