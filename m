Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E77636F2545
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 17:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682783365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RDIfxvsc5Li7RjbSfpAtMAu4tiFbkb+NftE1du+SQiQ=;
	b=PRPtu7jLvZZ9NASJg/mJVLiv330Ulk+yctjl+BqoXFXLFN8zcliNJ1R7d5sPoSETu5UI6Y
	9zgrGngEbW4btYGexNwMegWXfg+KjXXBjGFT4z9XJcUbC1cF+mA8fAyHn68gtNrpbUmcu+
	rPoia+A3oZuCN0DzvUCh5vOW3tXFWf4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-WNEClpNsNqSCJm_I5c7JSA-1; Sat, 29 Apr 2023 11:49:23 -0400
X-MC-Unique: WNEClpNsNqSCJm_I5c7JSA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DA733814582;
	Sat, 29 Apr 2023 15:49:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C98D163F42;
	Sat, 29 Apr 2023 15:49:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4314A1946A49;
	Sat, 29 Apr 2023 15:49:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 11:49:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible tty apps
In-Reply-To: <mailman.55.1682769294.290942.blinux-list@redhat.com>
References: <mailman.55.1682769294.290942.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.63.1682783360.290944.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

mpv to play audio along with vlc and for youtube pipe-viewer.
mutt for gmail, and run the fleacollar.sh script to set up mutt and gmail.
Be sure you have gpg2 on the machine along with mutt since it's a mutt
dependency.
I don't know if you have any useable vision but if not, you want to run
mpv with the --really-quiet switch.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 29 Apr 2023, Linux for blind general discussion wrote:

> Hi,
>
> I decided to use testing repositories in my Arch. I now have testing,
> community testing and gnome-testing. But at this time, something is broken and
> gdm is unable to start Gnome session. But I am calm, I have completelly
> speaking tty, but I will need some tty applications recommendation. I want to
> use console, until gdm will be fixed. Can you recommend me some accessible:
>
> file explorer
>
> mail client working with gmail
>
> maybe some audio player
>
> Thanks,
>
> Pavel
>
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

