Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 041B53302BC
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 16:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615132000;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qBZ1NmfiFWjHA6aS1EzBDi7zkEaN4I4DFFSe2IF4Ezg=;
	b=KFRZICbRsXDTCTOrGYx0DEDCN3bk/VMd5yzmur/+usnEOYqMV6MNKxuSsm3lQDVmYx4OdK
	rL7wO1kd7FW8wy8m7TtjFOBZuILPiCm0GXucgcHmaa2a58K73cr5/noWR2njFfOgZpnQOp
	g/HXptlmRJQzygtiI8H1VVS+5Czb2Iw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332--qjcZHKRP9StJ-jfQKJbnQ-1; Sun, 07 Mar 2021 10:46:38 -0500
X-MC-Unique: -qjcZHKRP9StJ-jfQKJbnQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BAB451D5;
	Sun,  7 Mar 2021 15:46:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC2D119D7C;
	Sun,  7 Mar 2021 15:46:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 022504EA30;
	Sun,  7 Mar 2021 15:46:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127FkBRG032648 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 10:46:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7FC1E2166B2F; Sun,  7 Mar 2021 15:46:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A1662166B2D
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 15:46:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 492268551E2
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 15:46:09 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-521-d2PNvXTCPlKDrxrT6xGJjg-1; Sun, 07 Mar 2021 10:46:06 -0500
X-MC-Unique: d2PNvXTCPlKDrxrT6xGJjg-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.7] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id A146F5DD0C
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 15:39:52 +0000 (UTC)
In-Reply-To: <161511660705.7.9147299505595485066.4503426@simplelogin.co>
References: <161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161513159250.7.551543312534109967.4507622@slmail.me>
Date: Sun, 07 Mar 2021 15:39:52 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4507622
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey Chime,
So I checked out the reddit link you sent for the files, but when I click on the files I get a 404 google error. 
This was a couple days ago, I don't have it in front of me right now, but I read the comments and I think they were saying you need to login to avoid the 404 error.
It looks like the files are hosted on google drive, so I signed into google drive but still got the 404 error.
How did you download files without the error message?
Thanks,
Also, Karen, I don't know if you got the message I posted the other day but yes I'd be happy to connect with your associate, I'm located in California.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

