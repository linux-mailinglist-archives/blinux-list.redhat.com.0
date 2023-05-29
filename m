Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7E17147C9
	for <lists+blinux-list@lfdr.de>; Mon, 29 May 2023 12:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685355357;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L8o0g4aSp+0OEF4+XRoP+nEeaqyXSYvrriFdoXXtx+8=;
	b=Cx8sUgJA6hc3h8oDhJi3wjG/7rArSuXS9A6vidqszfkAuryaNF8YMgvpxqRRKsnkSEOI07
	ioXWZZ5fp4Nk1VBbutmJfimBnq/dAaV9CWYOxjF855wxemMgpFJzFXi+gYpPCrIk/pmEd2
	rypyQfcHpGLJ5D/SDuaCZ78/4RD23eU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-438-3GIbXndiMnC_PJtEqNXgjA-1; Mon, 29 May 2023 06:15:53 -0400
X-MC-Unique: 3GIbXndiMnC_PJtEqNXgjA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C5AA1C09049;
	Mon, 29 May 2023 10:15:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 254C12166B2E;
	Mon, 29 May 2023 10:15:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3AF4F19465A8;
	Mon, 29 May 2023 10:15:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 29 May 2023 12:15:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: blinux-list@redhat.com
Subject: Mate deskto keyboard layout issue
Message-ID: <mailman.155.1685355344.2653570.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I installed Debian stable to my Desktop computer with 12 cpu cores and 
16, Gb ram, because I want to play with RhVoice new voice creation and 
the guide is written for Debian. I successfully configured all for Czech 
language and keyboard layout, but when I log in to my Mate, Czech layout 
is visible in keyboard preferences, but keyboard layout is in English 
US. Is it possible to fix this? I think this is Mate issue and sometimes 
helps log out and log in again. And my second question is, has Mate 
desktop some default key binding to switching between layouts? I have 
one at this time, but I'll add English US later. Debian 11, Mate 1.24.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

