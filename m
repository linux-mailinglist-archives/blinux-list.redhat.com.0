Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 899142334D2
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jul 2020 16:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596120980;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9uu4ufmN3pmprV99HmUvGYxBkHAsAKzxNoz93j2yIzs=;
	b=C7LBkvJLxDocAnn+9gmUBDEPmoc+a55K6I/g8d2EJfjTN6spxGcO+cHpKH2+pTTZCE0cjV
	TBBgatKsPYrIdvuXIWye+RSnSWBYgHOLbbb3abWV8leRC+SeJWlwY0xg+AHGj6nFn36s2D
	ZRwtlZVHSPkZS+ZJu0ich2aatAya13A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-OT5syYUvOO6m9gl2Ongrow-1; Thu, 30 Jul 2020 10:56:18 -0400
X-MC-Unique: OT5syYUvOO6m9gl2Ongrow-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 962C81893DC7;
	Thu, 30 Jul 2020 14:56:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87AF38A197;
	Thu, 30 Jul 2020 14:56:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1870F1809554;
	Thu, 30 Jul 2020 14:56:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06UEu37O027253 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Jul 2020 10:56:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C4792166BA4; Thu, 30 Jul 2020 14:56:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7878A2166BA2
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 14:56:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E14888007D2
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 14:56:00 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-196-wruM9R0CMguy6hf3H90gPA-1; Thu, 30 Jul 2020 10:55:58 -0400
X-MC-Unique: wruM9R0CMguy6hf3H90gPA-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06UEtvoC285265
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 14:55:57 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06UEtvoC285265
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06UEtvoC285265
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06UEtvwd285264
	for blinux-list@redhat.com; Thu, 30 Jul 2020 10:55:57 -0400
Date: Thu, 30 Jul 2020 10:55:57 -0400
To: blinux-list@redhat.com
Subject: System76 Meerkat Report
Message-ID: <20200730145557.GD2791@rednote.net>
MIME-Version: 1.0
X-Operating-System: Linux opera.rednote.net 5.7.9-100.fc31.x86_64
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi, All:

A couple months ago I promissed the list a report on the System76
Meerkat Intel-based NUC I had on order. Web link to the product is here:

https://system76.com/desktops/meerkat


My report was delayed because the first Meerkat I recieved turned out to
have some kind of hardware flaw in its ethernet port--an unacceptable
blemish. After filing a support ticket with System76 and talking with
one of their engineers, we determined to replace my flawed unit.

The replacement arrived late this past Monday and is now up and running
on my LAN with not a hint of ethernet problems. Meanwhile, the flawed
unit has been packed in the box which brought its replacement and is
awaiting UPS to ship it back to its maker.

With that pesky little problem resolved, I can now say I'm a satisfied
customer--for the most part. Here are the details, starting with a
hardware overview.

The unit is approx 4.5 inches square and about 2 inches high. It sits
next to my Apple Mac Mini which dwarfs it in size as well as in
processing and storage.

CPU is a 6 core tenth generation Intel I9 running at about 1.2 gHz with a that
bursts up to 4.7 gHz as needed. lshw reports it as:

Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor
Gaussian Mixture Model

I have 64Gb DDR4 RAM, so didn't bother creating a swap partition when
repartitioning. The unit came with a single LVM partition which doesn't
comport with my needs.

I have two Samsung drives: a model 970 2Tb NVME; and a 4Tb 860 SSD.

Ports include USB (including a couple USB-C), HDMI, 3.5mm audio out, and
the aforementioned ethernet port. The unit also has builtin wifi and
bluetooth 5.

I found the System76 POP-OS unfriendly to Orca. I could force Orca to
start, but I couldn't get it read anything on the graphical display. So,
I blew it away and replaced it with Arch Linux and Mate for my desktop.

This is one fast machine. It also boots fast, so fast that the login
console appears about a second or two before the network is fully up (as
confirmed by a ping from another machine).

What's not to love? The lack of beep on backspace. There's just nothing
available in hardware or software for that, including no snd-pcsp kernel
module. <sigh>

Total cost including shipping just over $2,600 USD.

Best,

Janina

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

