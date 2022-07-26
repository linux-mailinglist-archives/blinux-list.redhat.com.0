Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E5C581C56
	for <lists+blinux-list@lfdr.de>; Wed, 27 Jul 2022 01:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658877094;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=233FUsdnLM/lgfE8SOl0hDvU5FmfyFryOvmKxrxP0ew=;
	b=WTaotKpBwcTlwkTLRlkxWsnivaZf1yfcC33ak+mLByAselI09fRo7AYKXofoDA0B/m0FE0
	zqF8OQIRu9ZO/6PgyNoIfgt/hoiNl7rvU8RW8fDyu3nMa1RHBPev/oratoS+E3awGZYjE2
	LdeZYDrU/x/KRvnsPje3cUSroz9U8Os=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-232-VVEGw8sNMw6mTqQDk40jAQ-1; Tue, 26 Jul 2022 19:11:31 -0400
X-MC-Unique: VVEGw8sNMw6mTqQDk40jAQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D03D185A7BA;
	Tue, 26 Jul 2022 23:11:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7668794580;
	Tue, 26 Jul 2022 23:11:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 002A21945D94;
	Tue, 26 Jul 2022 23:11:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Tue, 26 Jul 2022 23:11:18 +0000
Subject: SSHing into my Desktop from a Raspberry Pi.
To: Linux for blind general discussion <blinux-list@redhat.com>,
 raspberry-vi@freelists.org
Message-ID: <mailman.36537.1658877081.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So, I have my Raspberry Pi setup so I can use it as a portable
computer when the summer heat drives me from my unair conditioned home
office, and the Pi is setup so I can either use ssh to log-in to the
Pi remotely or sshfs to easily move files between my Desktop and the
Pi when my headphones and keyboard are plugged into the Pi...

I'd like to setup my desktop so I can do the same from the pi and
easily move files between the two machines no matter which I'm plugged
into. The desktop is basically running Debian Unstable and I already
have sshfs and ssh installed on the Pi, so I think it's just a matter
of enabling ssh log-in to the desktop...

Also, I've noticed that when I use sshfs to mount my Pi on my desktop,
what actually gets mounted is the Pi's home directory. Is there a way
to either mount the Pi's root filesystem on my desktop or to let me
remotely mount  my Desktop's data drives on the Pi(the Pi's only drive
is the microSD card I have Raspberry OS running from, my desktop has
the system drive sda along with data drives sdb and sdc and a
multicard reader that eats up sdd through sdg, though the most
important slots on the card reader are sde(microSD) and sdf(Full size
SD) with the other slots being card formats I don't recognize).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

