Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1141A4FFF66
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 21:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649878584;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/hW0ZUydgdrw+2oqjjfowPbubB+4fgf79r5LqrhAB/I=;
	b=eAY8Yue8p9x7oxtD2UVj5zkEnjn9k4OBOm352Z8Z8Z4xn3DEyJT/iJV0yYXgs+9Ja1CVgo
	Pyi0RQfMYFBwv92h1Bho5TnCX07NmOyp8KI+UYJut1+gC/lXrgsmpvCFxWdtExWPusIyqm
	Jnw+EmVDnFUY9rrgeSMbXev6MFzr7fI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-244-1eTDJDUhP9yRrRADQCdwlg-1; Wed, 13 Apr 2022 15:36:18 -0400
X-MC-Unique: 1eTDJDUhP9yRrRADQCdwlg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 455D43C1410B;
	Wed, 13 Apr 2022 19:36:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 35A6840BAEE;
	Wed, 13 Apr 2022 19:36:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 77D621940353;
	Wed, 13 Apr 2022 19:36:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
Date: Wed, 13 Apr 2022 14:32:12 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.8442.1649877631.111206.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8442.1649877631.111206.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.8377.1649878563.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mutt is designed for users who like to do that. It's not designed for the average user.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 15:20:08 -0400
Subject: Re: FYI - Command Line Programs for the Blind

> But there's my point. It may be that you don't want your calendar and
> search bar, but others do. We can argue all day long that they should
> not be on by default, or that they should. The point I'm trying to make
> is that Thunderbird is mostly usable right out of the box, cluttered
> though it is, but Mutt makes you go through a ton of configurations just
> to make it read a mailbox, which is something that Thunderbird can do in
> about 30 seconds, but takes a week of fiddling about in Mutt's nearly
> incomprehensible configuration files that are not documented internally
> very well, or wading through tons of online documentation just to find
> out how to set up a mailbox. There is such a thing as exposing an end
> user to every conceivable setup, allowing him/her to make changes to
> every aspect of the system, and then there's dropping the end user into
> the middle of the ocean without a life jacket and expecting him/her to
> be able to find the way to the shore. As I said, I would pretty much
> consider myself to be a power user, and I couldn't survive Mutt
> configuration apart from *mostly* getting it working on a home computer
> that was doubling as an email server at the time, and that's not
> practical for most people, especially those who just want to be able to
> set up a new computer and start reading and responding to email in a few
> minutes.
>
> ~Kyle
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

