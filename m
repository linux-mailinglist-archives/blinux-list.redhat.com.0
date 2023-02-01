Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 789FE686657
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 14:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675256566;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FMaX9mIoDYBYhb1/EgDtnsFJwL2xTlmoi8mg4q3POJw=;
	b=OiMYJeJqJ1hsWsHsSDQt1BB0x2hTSzYCUMNZd6qRCXVUiwiX93A2SmwMsF9uY21jhSVDSG
	5DRGxBv0Plx60GIMl8y+FAC9CaTOsNxG7n9oj3g9Um5sB219Xp0n/YQ7sAWpQTZX5yHD8D
	w4frcWBgR1DVDHlC+1xYoQpIFMhqeis=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-FjZGz0qPMCa7YVb2ZLKD9g-1; Wed, 01 Feb 2023 08:02:37 -0500
X-MC-Unique: FjZGz0qPMCa7YVb2ZLKD9g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 874CE3C02550;
	Wed,  1 Feb 2023 13:02:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7309240C2064;
	Wed,  1 Feb 2023 13:02:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0273619465B2;
	Wed,  1 Feb 2023 13:02:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 13:01:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
To: blinux-list@redhat.com
Subject: Jenux repo unavailable
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

This is just a quick announcement for all those using/testing Jenux.

Currently, it appears as though the repo is unavailable.

A friend this mornign told me they were having issues updating their 
machine running Jenux. Upon taking a look, I found that the issue was 
caused by jenux.db failing to download when retrieved with pacman -Syu.

I'm unsure where to contact the maintainer to inform them of this 
problem however, so all I can do for the moment is remove the Jenux repo.

This leaves a lot of packages newer than what are available in the 
community repo, and even in some cases newer than in the AUR.

At any rate, I hope this helps someone who might have been confused as 
to why their system was not working correctly when performing an upgrade.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

