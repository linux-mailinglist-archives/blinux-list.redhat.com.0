Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5AE09327029
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 04:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614482328;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=mNkfWlsziHYwZtsKwUJBmuPB8Wx+WF2KOdgxZxDQ8Xc=;
	b=af2fpqGFbE6b8EhIB74hypjR5eY15J27RoLjIBYtJqwWWrk9OOtkvW6vHpl/6G7Qun6lTs
	JyfIEKTGEfTvPKmrS6CaUhyuO4V1nFlGW9HLg153aI67ABdR+ugt6VAoN8+dMQnMBl1Lpt
	PvevvrS1i5XRE5SlXKTrUT2b50cpFaw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-cVUKISROMU-FH0Z1eZSiqw-1; Sat, 27 Feb 2021 22:18:45 -0500
X-MC-Unique: cVUKISROMU-FH0Z1eZSiqw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE20CC285;
	Sun, 28 Feb 2021 03:18:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 723AA6A90D;
	Sun, 28 Feb 2021 03:18:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E157018095C9;
	Sun, 28 Feb 2021 03:18:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11S3IQ2e015763 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 22:18:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 762BD100335C; Sun, 28 Feb 2021 03:18:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 721981111A53
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 03:18:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 331DF85A59D
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 03:18:23 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-105-VVfk5xTwPm67wB79Eu2UuA-1; Sat, 27 Feb 2021 22:18:20 -0500
X-MC-Unique: VVfk5xTwPm67wB79Eu2UuA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 6845A6200AE; Sun, 28 Feb 2021 03:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 630596200A7
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:18:19 -0500 (EST)
Date: Sat, 27 Feb 2021 22:18:19 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
Message-ID: <Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-161432125-1614482299=:2943945"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-161432125-1614482299=:2943945
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Naughty Naughty, suggesting  Linux cannot save the day grin.
Only windows at this end are made of glass.



On Sun, 28 Feb 2021, Linux for blind general discussion wrote:

> Why not use wormhole, if installed on both ends?
> Didier
>
> Le 28/02/2021 =C3=A0 00:21, Linux for blind general discussion a =C3=A9cr=
it=C2=A0:
>>  Well, SL-and-Others, turns out the compressed file is 1.5GB. I would be
>>  happy to upload to an ftp or somewhere, as I am most comfortable with a=
n
>>  ncftp interface. Thanks so much in advance
>>  Chime
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-161432125-1614482299=:2943945
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-161432125-1614482299=:2943945--

