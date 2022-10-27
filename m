Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A136A610601
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 00:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666911233;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=izpqsWD/oBFboyf10KaT0PC8WYuz7ShPJOK2jExTf4E=;
	b=JZ5hzXuDhMeZso7dTtzw/EujaxMfF9EtFxXSTU6yHqlMiE36iiDAKhNhRA62SF8Q/8Kq4Z
	cl2wfHjIDbmyauQloNtcRQQB6j2BIIEvRtcKJBbOnDPY0nyeHs1rPH0RxzpEHB1hv+2uVe
	a7yAUukqw0rnsSVUgJxCwLWsDhWq+3k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-375-oJBRu-v3M3uWZEMMiUWZZA-1; Thu, 27 Oct 2022 18:53:52 -0400
X-MC-Unique: oJBRu-v3M3uWZEMMiUWZZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27FCB87B2A0;
	Thu, 27 Oct 2022 22:53:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91709C15995;
	Thu, 27 Oct 2022 22:53:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2F2911946A7F;
	Thu, 27 Oct 2022 22:53:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 18:53:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: void-linux
In-Reply-To: <mailman.3202.1666908770.3007.blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
 <mailman.3148.1666903063.3012.blinux-list@redhat.com>
 <mailman.3315.1666906969.3011.blinux-list@redhat.com>
 <mailman.3202.1666908770.3007.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3203.1666911224.3007.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Brave browser with nothing in .desktop file doesn't speak.
Brave-browser with --enable-caret-browsing doesn't speak.
brave-browser with --enable-caret-browsing --force-renderer-accessibility
doesn't speak.
brave-browser with --enable-caret-browsing --force-renderer-accessibility
--enable-speech-dispatcher doesn't speak.
brave-browser is missing accessibility for screen readers like orca.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 27 Oct 2022, Linux for blind general discussion wrote:

> Thus spake Jude:
> > The current version of google-chrome is totally inaccessible for orca users
> > and google messed up the package install so that package install doesn't
> > even work correctly either.  These are some of the things the testers find
> > out and I hope before any other users so others will know to steer clear.
> > Vivaldi 5.5 works no better than google-chrome but at least vivaldi installs
> > with no errors so it installs correctly.
>
>
> I just got a Brave browser upgrade today from their official repository, and
> their package installs correctly and although I still need a local .desktop
> file to run it, I have it speaking with Orca. I would think that any
> Chromium-based browser should work, with the exception of packaging problems,
> in much the same way. Still, it is unfortunately necessary to have a local
> .desktop file and run it from a menu launcher. Otherwise it requires running
> from a terminal or the run window to set the needed environment variables and
> option flags. Of course the environment variable can be included in a system
> profile, but I think at least the --enable-caret-browsing option is still
> required, which is not in the default .desktop file that ships with most
> systems. I don't mind sharing the local .desktop file that works for me, only
> the name of the browser executable needs to be changed on the Exec= line in
> order to make your chosen chromium-based browser talk.
>
> ~Kyle
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

