Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B52D25BBDB5
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 14:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663503368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4kIcEvTxheXJ+X/0fAycaVJFo42d3Wa2JixM06AT8Uc=;
	b=WQ5wIly/wjRmf85e7wdQKwZQb9F0MyghsLL+Vj9LmaKqZ1w1GcgYck8uqy1j7YrQmYVR5K
	CEXCyDScCG3dh5AvvvhdbsGF3AtYqu7oAbkLd1hGjYATo/mwOxDNmkBG9pD/Np5jSNFjgp
	3HR72c830tbyBHkH1DQtJ2//P2ehE5w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-_j60miAkNzGjhVIUgHc4kg-1; Sun, 18 Sep 2022 08:16:05 -0400
X-MC-Unique: _j60miAkNzGjhVIUgHc4kg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1C4F803791;
	Sun, 18 Sep 2022 12:16:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EFEB840C2064;
	Sun, 18 Sep 2022 12:15:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 48C7819465A0;
	Sun, 18 Sep 2022 12:15:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: How to getstart amulecmd?
In-Reply-To: Your message of Sat, 17 Sep 2022 13:47:43 +0800 (CST)
 <mailman.934.1663393847.6081.blinux-list@redhat.com>
References: <mailman.934.1663393847.6081.blinux-list@redhat.com>
Date: Sun, 18 Sep 2022 14:07:13 +0200
Message-ID: <mailman.1051.1663503355.6077.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From artur@locust Sun Sep 18 12:04:52 2022
To: blinux-list@redhat.com,blinux-list@redhat.com
Subject: Re: How to getstart amulecmd?
In-Reply-To: Your message of Sat, 17 Sep 2022 13:47:43 +0800 (CST)
	<mailman.934.1663393847.6081.blinux-list@redhat.com>
References: <mailman.934.1663393847.6081.blinux-list@redhat.com>

Hi,

The amuled (daemon) requires password as its part of setup procedure.
I suppose, it is for security reasons, because it can run on remote hosts.
Further instructions you can find in /usr/share/doc/README.Debian or
similar document on your distro.

Greetings.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

