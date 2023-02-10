Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC07692417
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 18:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676049055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DiO+cu7EI4VaIwPYnNoM7PnrLqP4WBkQUQoHjQ5Mres=;
	b=ApHunOfRW2UFHwzTGNfo6REiwwVfCZOHQITr8ulbLkZbCDb3sfJdKGo31/3u/hjUeEQgJb
	xgo+CBbcTZrtiQAO7ueB8F7lzoZSs4fX/8+Ffi4KZfR0/W9KrvelVbSX4mhQeSRIDmFihm
	YR6QxG2ImBfdRKP9HEZ2hB2nVUvJF8o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-iTeT5QWcNdGbGl5ranWtEA-1; Fri, 10 Feb 2023 12:10:53 -0500
X-MC-Unique: iTeT5QWcNdGbGl5ranWtEA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9F563C22744;
	Fri, 10 Feb 2023 17:10:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1BFCF1121315;
	Fri, 10 Feb 2023 17:10:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8693419465A2;
	Fri, 10 Feb 2023 17:10:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Clipboard in gnome
MIME-Version: 1.0
Date: Fri, 10 Feb 2023 11:10:34 -0600
Message-ID: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <28106.1676049034.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Most of my unix stuff I've been doing for 34 years is in an ASCII
text command terminal, no GUI so I am in unfamiliar waters, here,
even though I have tried tidbits of orca and gnome on occasion
for a number of years but always got shot down by running it on
systems with not enough horsepower to run X-windows without
crashing.

	I now have a HP PC running bullseye that has quite enough
resources so am using that also these days but I am most familiar
with the Windows GUI and nvda and use the clipboard all the time
there.

	So, my question here is whether there is an orca
clipboard.  I did do 

apropos clipboard 

and saw a reference to TK::ClipBoard which is a perl module and
xclipboard which is an application.

	Is there a clipboard native to gnome or orca?  Also
acceptable is some application I can install that produces a
clipboard in gnome.

	Clipboards are fabulous things when one has a huge url or
shell command with gobs of tricky syntax where one misplaced
space can blow things up.

	It's nice to see there is a perl module for clipboard but
right this minute, I would be happy with a clipboard similar to
the one in Windows or pbcopy which lives in MacOS.

	Thank you.

Martin McCormick	WB5AGZ

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

