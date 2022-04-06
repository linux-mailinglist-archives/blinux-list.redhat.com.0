Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 837EB4F5E69
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 14:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649249888;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=60kTM5eNeFiWHgqy2IYMV2A2UOg3ueepWQr1cQlk7Yk=;
	b=IvDuFJSTyd8IJa/6NJJ43eOpRwLbjYd4HEcc85IRkgGSwFrY0xSNHTltkKXuLBE/bJeIiH
	AGfJ6ej/vezzn0SP4K4dPvxl8xCBemL8zqpxfgryGAptd6nYqXwOAlGkxWOpk7CyGPHawZ
	4SlMScYRViGQkbRomgV334ePNhB2Y+A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569-YBx6AbCYOT-qmZPlOoWj4A-1; Wed, 06 Apr 2022 08:58:05 -0400
X-MC-Unique: YBx6AbCYOT-qmZPlOoWj4A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8E85185A7B2;
	Wed,  6 Apr 2022 12:58:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 921FBC27DB9;
	Wed,  6 Apr 2022 12:58:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 13276193F6E1;
	Wed,  6 Apr 2022 12:58:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Wed, 06 Apr 2022 15:50:24 +0300
To: blinux-list@redhat.com
Subject: Fwd: [systemd-devel] Dropping split-usr/unmerged-usr support
In-Reply-To: <05cf10d04274dcbff07fed88e98dca2eebb24b7d.camel@gmail.com>
References: <05cf10d04274dcbff07fed88e98dca2eebb24b7d.camel@gmail.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.6716.1649249882.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All!

Immo here.

Sorry for my ignorance and disturbing the usual chatter on the list.

I guess this is at least for Didier. There are also other speaking
distros out there that systemd people might not be aware of so I
forwarded the original message here.

Feel free to answer to my message. I'll forward it to systemd-devel
if needed.

Distribution maintainers might also want to join systemd-devel if
not already there.

-------- Original Message --------
Subject: [systemd-devel] Dropping split-usr/unmerged-usr support
Date: 2022-04-05 23:07
 From: Luca Boccassi <luca.boccassi@gmail.com>
To: systemd-devel@lists.freedesktop.org

Hi,

As part of our spring cleaning effort, we are considering when to drop
support for split/unmerged-usr filesystem layouts.

A build-time warning was added last year:

https://github.com/systemd/systemd/commit/9afd5e7b975e8051c011ff9c07c95e80bd954469

We are now adding a runtime taint as well.

Which distributions are left running with systemd on a split/unmerged-
usr system?

(reminder: we refer to a system that boots without a populated /usr as
split-usr, and a system where bin, sbin and lib* are not symlinks to
their counterparts under /usr as unmerged-usr)

-- 
Regards,
Immo
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

