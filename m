Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCDD6396B3
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 15:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669474557;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DAEphgs4ZWZGzwVSZdUieVeL3/ykou0ZsPQNSd3HB3A=;
	b=CVzNaLliTVVZkpZrYugMgCO4wEE0fDQjwpquX8ZHX04p/e/gqkyheXTI7W3cjRx1KCBc0r
	VQm/gIhS9JTpjf2nj4miNtK7D7OjwirAWIATA1FVSLPeYQnafSi87OqR5LetHfxVP6sMWI
	v4LP/qRMtX4i4fsmxq4Nfbmc7a4233E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-fLP5BFUgNT6sZXTb6htHjA-1; Sat, 26 Nov 2022 09:55:53 -0500
X-MC-Unique: fLP5BFUgNT6sZXTb6htHjA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4174E800186;
	Sat, 26 Nov 2022 14:55:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B5CAD492B08;
	Sat, 26 Nov 2022 14:55:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1D7B01946597;
	Sat, 26 Nov 2022 14:55:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 09:55:37 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible front ends for Pleroma?
In-Reply-To: <mailman.1960.1669443853.6931.blinux-list@redhat.com>
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.1960.1669443853.6931.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2025.1669474541.6925.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I first got pipenv installed using pip3.9 on slint then installed toot.
To run toot, I do pipenv shell first then run toot.  I haven't joined
mastodon yet I need to figure that out.  Nearest server to me appears to
be cheeseburger.social but I have to research that server.  What I don't
know and maybe it is possible is how to configure toot so it also gets
access into pluroma as well.
I used pipenv install toot to install toot.  I couldn't do it with spi on
slint since it needed packages slint hasn't yet got and a version of
beautifulsoup which is old on slint.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sat, 26 Nov 2022, Linux for blind general discussion wrote:

> Oh it sounds like you want something like an app rather than a web front end
> for a server. Sorry I misunderstood your question. Pleroma as I recall can use
> anything that Mastodon can use as a client. That said, desktop clients for
> these things tend to be harder to find. It appears to be easier to find phone
> apps. On a desktop, your best bet may be the website of the server you join.
> Most phone apps, at least on Android, appear to work with Talkback pretty
> well, though it's worth noting that although I run my own Friendica server,
> which does have Mastodon/Pleroma compatibility, I haven't tried a lot of the
> Android apps just yet, as I find that the website serves my needs well enough
> here, but of course your mileage may vary, especially if you're trying to join
> a Pleroma server, which can have any number of front-end web services. I still
> recommend trying the various clients you see, and look at the client list for
> Mastodon as well, since the API's that clients use are said to be the same for
> both.
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

