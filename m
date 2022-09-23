Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC1C5E715F
	for <lists+blinux-list@lfdr.de>; Fri, 23 Sep 2022 03:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663896443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WpNOOFSlrJCrSWionjdytI0UnO2VYXf39jh/DPRfT/Y=;
	b=TYNd3fmT7GtJ+UzAd/AlaDMqpwza3KME9r+Ep6cic9pVoPGQiK3kFUHf47Q7gNei3XX9SK
	YuauOnG/qw+W3Et6yP1579HAm94qZMJQBJ2CMi6NMYg5VbuDZVuwh9sk0VU1xjFP9SVaXN
	H/dO0AD39cx8DQ6rIRyRQ15Z+wxVGvM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-208-3WAGym5FOwmkiIhGukulng-1; Thu, 22 Sep 2022 21:27:19 -0400
X-MC-Unique: 3WAGym5FOwmkiIhGukulng-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 349FD101A5BB;
	Fri, 23 Sep 2022 01:27:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AB8DA1759E;
	Fri, 23 Sep 2022 01:27:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 213861946A42;
	Fri, 23 Sep 2022 01:27:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Thu, 22 Sep 2022 18:26:31 -0700
Subject: hdmi/audio splitter
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2538.1663896433.6075.blinux-list@redhat.com>
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

I saw an article about splitting audio from an HDMI connection at
https://www.inovato.com/article/wired-audio-on-the-quadra  On amazon, type
"hdmi 3.5" as your search term, the splitters can be found for less than
$19 (and for even less on ebay).  Searching for "hdmi dummy" or "vga dummy"
on amazon brings up dummy plugs which make the computer think a display is
attached.

At this Inovato site, they are selling a raspberry pi like computer with 2
GB RAM, complete with case, heat sink and power supply for $30 USD.  They
have another for $40 USD that includes a faster wifi, bluetooth and a usb
hub.  No GPIO headers.  This article compares their Quadra with a raspberry
pi: https://www.inovato.com/article/where-to-use-a-quadra  Seems to run
either Armbian or Debian.
https://www.inovato.com/article/frequently-asked-questions

-Yoshio
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

