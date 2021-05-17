Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE7E383CE6
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 21:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621278410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2NlneaXCCUkdQVdJbJLugwesEv+KVaJqmaYdUcHiEnI=;
	b=cx9X2ItSOFALKV4xLfkqCMENi/+DaiCKbqJjeVl8CWdb1jVbjFUm+LWR0aaiVzoYy2sf05
	M0HK0wXl49tL1uj1ScvBZvYvGivmi6lUBfwwI0nMCCeJhNmvvHk+OuwFZnXm+s7jnyEYcl
	EX9PJtjYxWg2STU0YLKhH0/uxltSUjE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-M65hCQNENwaorYWE-0qlrA-1; Mon, 17 May 2021 15:06:48 -0400
X-MC-Unique: M65hCQNENwaorYWE-0qlrA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F3391966338;
	Mon, 17 May 2021 19:06:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28AD536D5;
	Mon, 17 May 2021 19:06:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2A8DCF6C;
	Mon, 17 May 2021 19:06:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HJ6Zc9018917 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 15:06:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 728AC216FD58; Mon, 17 May 2021 19:06:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BA702193708
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:06:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40FBF9124E4
	for <blinux-list@redhat.com>; Mon, 17 May 2021 19:06:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-586-jmqnWsE8Mm-dlkYRzmVrqw-1; Mon, 17 May 2021 15:06:27 -0400
X-MC-Unique: jmqnWsE8Mm-dlkYRzmVrqw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FkTBW4kNFz2FnC
	for <blinux-list@redhat.com>; Mon, 17 May 2021 15:06:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FkTBW3pkFzcbc; Mon, 17 May 2021 15:06:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FkTBW3T8bzcbV
	for <blinux-list@redhat.com>; Mon, 17 May 2021 15:06:27 -0400 (EDT)
Date: Mon, 17 May 2021 15:06:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105171505540.9954@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yaourt is deprecated which is why to use yay.


On Mon, 17 May 2021, Linux for blind general discussion wrote:

> Hello everyone,
>
>
> I just downloaded fenrir-git from the AUR using yaourt.
>
> When I try to run fenrir with the command
>
> fenrir
>
> in a terminal, how ever, i get fenrir's startup sound, and this:
>
>
> [francisco@Blueblink ~]$ fenrir
> ** (process:7008): WARNING **: 20:12:45.374: Error loading plugin:
> libhspell.so.
> 0: cannot open shared object file: No such file or directory
> ** (process:7008): WARNING **: 20:12:45.374: Error loading plugin:
> libvoikko.so.
> 1: cannot open shared object file: No such file or directory
> ** (process:7008): WARNING **: 20:12:45.377: Error loading plugin:
> libnuspell.so
> .4: cannot open shared object file: No such file or directory
>
>
> Any ideas on how to fix it, and no speech either.
>
> Thank you for any answer.
>
> Best regards.
>
> Francisco.
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

