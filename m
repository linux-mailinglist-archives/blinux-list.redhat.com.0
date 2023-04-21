Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA86EB157
	for <lists+blinux-list@lfdr.de>; Fri, 21 Apr 2023 20:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682100448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2wkgThiPRLwnHF7KmZoo/oXudA4wVZ5EZ1otRMLzzLk=;
	b=DDMNg8b7AufbeKb0TYgTrA4UmUdauIA0Tci1+IEGG3NXCnSjP9Lz+vdz7Cl+YdW+TxrArO
	1eO5MPGpJS3jiKX7Vf+WJzbvmbykUgBWwaCkHUmyAJhIcuJeA1H25pFtsmo7hDuWPMYLSK
	o34W/GrWq1ctnYZRXg2Yugr+unI02lM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-48r2Y6fBMySmFd8pjFGfgg-1; Fri, 21 Apr 2023 14:07:27 -0400
X-MC-Unique: 48r2Y6fBMySmFd8pjFGfgg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18D84800B35;
	Fri, 21 Apr 2023 18:07:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5928140C2064;
	Fri, 21 Apr 2023 18:07:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B401B1946A4A;
	Fri, 21 Apr 2023 18:07:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: My new Desktop
MIME-Version: 1.0
Date: Fri, 21 Apr 2023 13:07:09 -0500
Message-ID: <mailman.2064.1682100439.283954.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-ID: <14900.1682100429.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When I ran the iso image after typing the s upon hearing the
beep, dmesg indicated that speakup was being installed because it
was one of the first modules pulled in.

	What I heard was the very first command to select
language.  It starts in English and the non GUI speakup key
sequences such as numpad-Insert+F11 set and or change punctuation
and numpad-insert+the keyboard keys for 3 and 4 change pitch so
it is obviously speakup at work.

	I don't know if I said this in my long, long message but
when Windows 10 was briefly on the system before I replaced it
with debian, the on-board sound was exactly as it should be.  I
don't know if it was okay on hdmi, also, but I bet it was.  I
never tried it there because I honestly didn't think of it until
later.

	Under Linux, the best way to describe the on-board sound
system now is orphaned.  It needs a driver and I bet it would then
roar back to life.  The fact that one must be root to read the
settings is interesting especially since I put me in the audio
group if the install didn't already.  One way or the other, I'm
in the audio group and still get the hallucinatory version of
amixer rather than the real one.
Linux for blind general discussion <blinux-list@redhat.com> writes:
> I need to try this, but think use of s for speakup on a debian install
> boot along with priority=low should get an installer into the main
> installer menu with speakup talking.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

