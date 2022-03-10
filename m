Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C4D4D4798
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 14:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646917361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yyZZhK4QvfN+5e39fZ34Vxgg/NmovS92dL9RqtZdW5A=;
	b=EKqTdgMbJIrSd45+J6KlbhPZ7NQGIEasdYQokAOsqKDT6h1v6KsGxPyuAGlc9eINEu2Ryi
	zsvyMwpOfuke8PzAKRiqEWyyK2rzFv2kGTlvDO7tRpEhJ4vQR//Dr3LmFBNlrijM4Jyq/z
	Fna0X2SuOgexbQDJVJdXkBnOPpvkEl4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-401-53YtYiezPIGlrJXNCytBkQ-1; Thu, 10 Mar 2022 08:02:40 -0500
X-MC-Unique: 53YtYiezPIGlrJXNCytBkQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81961296A628;
	Thu, 10 Mar 2022 13:02:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B45FFC08093;
	Thu, 10 Mar 2022 13:02:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 512FB195FD58;
	Thu, 10 Mar 2022 13:02:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1246.1646909919.111208.blinux-list@redhat.com>
References: <mailman.343.1646741549.111209.blinux-list@redhat.com>
 <mailman.1241.1646907576.111208.blinux-list@redhat.com>
 <mailman.1246.1646909919.111208.blinux-list@redhat.com>
Date: Thu, 10 Mar 2022 13:02:25 +0000
Subject: Re: Starting lightdm in text mode
To: blinux-list@redhat.com
Message-ID: <mailman.1213.1646917356.111203.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In all fairness, console switching seems to vary a bit from
distro-to-distro, from number of consoles available, to which one is
used for the xserver when booting direct to the desktop, and whether a
manually started xserver runs on the console that invoked it or a
different one... There's probably a way to configure this, but I've
never heard anyone talking about it.

My understanding is the most common setups include:

12 consoles, autostarted xserver runs on tty1, manually started
xserver runs on thee console that invoked startx.

User has access to tty1-tty6, autostarted xserver runs on tty7,
manually started xserver runson ttyn+6 where ttyn is the invoking
console... I understand the main advantage of this setup is that if
the xserver becomes unresponsie, you can easily kill it by switching
back to the invoking console and ctrl+C the startx command.

My own system is closer to the former... though I have no idea which
console it would use if it booted straight into the desktop and I only
have 10 consoles... I've also heard of people whose systems have 24
consoles, and for switching, left and right alt are considered
distinct keys.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

