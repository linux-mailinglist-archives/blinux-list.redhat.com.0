Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DD87132D3
	for <lists+blinux-list@lfdr.de>; Sat, 27 May 2023 08:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685169408;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tLInur2fbKzqDVqW4F11B+btiO7n+FmGG8eY4uQwkFo=;
	b=c5+ASdipJN8It6x63kSNJKt1p8D4cCULgNvRNRMJAIxYIICT4GlwTh1SlcJ6dh3le3FwNt
	k0XAaWj9xlfFUdcpvDemKwnHnG9mtpD1JQ6jklJMLTiocO/ZwasUN1stYkmvrgzhpCueKz
	zesDtZtehA6klYsRGV32vGhKP7js3ek=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-OGtLhy5wOKW02n9mqgzLlw-1; Sat, 27 May 2023 02:36:46 -0400
X-MC-Unique: OGtLhy5wOKW02n9mqgzLlw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6C3A85A5A8;
	Sat, 27 May 2023 06:36:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D8B2A1121314;
	Sat, 27 May 2023 06:36:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE7F319465B3;
	Sat, 27 May 2023 06:36:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 27 May 2023 02:36:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Beep on Backspace in Console Sessions
MIME-Version: 1.0
Message-ID: <mailman.10.1685169397.2653566.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear All:

I'm wondering whether it's still supported in alsa?

Yes, in ancient history, with speakers in the computer case just for a
beep on backspace, the old pcskpr module did the trick.

Then those speakers disappeared, but alsa-lib gave us an snd-beep module
(as I recall). I'm not find that module these days, and I'm wondering
wheter it's just not getting compiled for some reason? Or has it really
been dropped.

I know most fot the sighted world hates that beep on backspace. That's
partly why it's quite hard to google for this question. I don't mind if
it's off by default, but it should be something those of us who find it
beneficial should be able to turn on, imo.

Anyone know.

Just to be clear, I'm talking standard old fashioned text consoles, not
the terminal sessions under Gnome or Mate. Those work fine.

Janina

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

