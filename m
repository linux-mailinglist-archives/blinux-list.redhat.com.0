Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 534DB6104A4
	for <lists+blinux-list@lfdr.de>; Thu, 27 Oct 2022 23:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666906983;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4QDd2ucGwlbU0qs6aQi1qqTyizIzBWZuVUpRRdkEuC8=;
	b=SdYF7f2VCdjs5CWP7VLN4tlHS5YTtym6O3uWPfEGRA9Zotlgj7I4nImLjX1NIqBO6UL4HC
	wiCF89QngT9Pd8vK8apC/8Be0dfVjKbHJFNYYKAhUjqO1CZQ86uFDTC3V+RucS+yiOfGLN
	sHdK46tVxRo+llXO9hr/IQYsakmtlKw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-HdYsYMP1PJ2RUCDlf5DhSA-1; Thu, 27 Oct 2022 17:42:59 -0400
X-MC-Unique: HdYsYMP1PJ2RUCDlf5DhSA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F197F811E7A;
	Thu, 27 Oct 2022 21:42:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 498AA1415117;
	Thu, 27 Oct 2022 21:42:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DB3021946A7F;
	Thu, 27 Oct 2022 21:42:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 17:42:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: void-linux
In-Reply-To: <mailman.3148.1666903063.3012.blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
 <mailman.3148.1666903063.3012.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3315.1666906969.3011.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Chris never got void-linux working out of the box and needed to build
accessible isos for it to install on his system according to what he told
me earlier today.  Apparently void-linux is not accessibility-ready which
is why no mention of that appears on their site or anywhere else.
I am curious about these things since I spend some of my retirement
testing these systems but not all of my retirement.
I am using a penguin pro 11 which is an intel machine i7 core and I
learned the current version of Jenux won't even boot on this hardware
successfully.  Why the boot failure happens I don't yet know.
The current version of google-chrome is totally inaccessible for orca
users and google messed up the package install so that package install
doesn't even work correctly either.  These are some of the things the
testers find out and I hope before any other users so others will know to
steer clear.  Vivaldi 5.5 works no better than google-chrome but at least
vivaldi installs with no errors so it installs correctly.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 27 Oct 2022, Linux for blind general discussion wrote:

> I had no trouble searching for the orca package on the Void Linux website. It
> shows me that version 42.3 revision 1 is available. I was not however able to
> determine whether it ships on the install media, or what text-mode screen
> reader may be on the downloaded install media if no desktop starts by default.
> This may still need to be determined using a virtual machine. I do know that
> one or more blind people use Void Linux; I thought there were at least two
> using it as a matter of fact, Chris as mentioned earlier being one, so I know
> that it is at least possible to use it, I'm just not aware of how easy it is
> to get it talking during the install process, although I remember it being
> said that it was worth trying because it can be made to talk.
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

