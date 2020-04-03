Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1CF19D0C3
	for <lists+blinux-list@lfdr.de>; Fri,  3 Apr 2020 09:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585897566;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2pnBcdggOyanFFHB70se0zjQt/mY4IcPjnwCVQhmCI8=;
	b=ZJSOXc83/kGV1upPP28bzg7CJnRCCcXHhsbLr8MoGESLZ2GCZ41+sFqjspyf/8XgESDp0m
	0Eq26dOZ0hgyIVU+B8zGCwm3OxtnKGO/JwO8OBwGzEvU2L23JcaHaiGNPA+2kwJQsQ3oau
	Fyql7zvtszZWH5NAS3e9Ie+TqII1CwU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-q6IijL-VNyyueh7M6jqCKg-1; Fri, 03 Apr 2020 03:06:03 -0400
X-MC-Unique: q6IijL-VNyyueh7M6jqCKg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A642A1005509;
	Fri,  3 Apr 2020 07:05:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BEE15DA75;
	Fri,  3 Apr 2020 07:05:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67D4E4E440;
	Fri,  3 Apr 2020 07:05:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03374LCQ029701 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Apr 2020 03:04:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9556620267F2; Fri,  3 Apr 2020 07:04:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 918392028DCB
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 07:04:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0368101A55A
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 07:04:18 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-133-o5KdBs7qMGGy4rKHaSf3_g-1; Fri, 03 Apr 2020 03:04:15 -0400
X-MC-Unique: o5KdBs7qMGGy4rKHaSf3_g-1
Received: from [68.190.112.237] (port=41540 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1jKGNC-000Ed5-Vc
	for blinux-list@redhat.com; Fri, 03 Apr 2020 02:04:15 -0500
Date: Fri, 3 Apr 2020 02:04:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Why is Gnome crashing?
Message-ID: <20200403070414.GA4955@abilitiessoft>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03374LCQ029701
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello everyone,

I recently installed Gnome 3. I am using a Braille display and brltty 5.6. on a Debian buster machine with 8 GB of RAM. Gnome runs on ttyh1 and tty2. I have 
ordinary logins on other consoles. When I switch to tty1 using Ctrl+Alt+F1 the display is completely inactive, not even spaces. When I switch back to another 
console I first see BRLTTY 5.6, then a pause and then the message "no irq handler for vector." What is causing this and what should I do about it?

Thanks,
John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

