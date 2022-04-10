Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 796224FAD1C
	for <lists+blinux-list@lfdr.de>; Sun, 10 Apr 2022 11:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649584349;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z2tHKyUIXp7x7tI7GFudwLG7A4jHz/ARXo+ZbxYExiY=;
	b=Bi65C0IDdcVoIGQrswjfPDF1kqDKq46+aJaGw0KgeClv0MhDSeHAYN+EbzvtDOc/3KCY3G
	OB/6Erb9BJYQlRFQWRKDjEbN0lyxHo6PKNp5mF3Rij3A8lyTZDNenb+wWAQbvkGu/zZ4E/
	OR27XPhypRGWUwjudssYjR+DVyrH2mE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-649-xgwUc6SENeKgZrh2nyk58Q-1; Sun, 10 Apr 2022 05:52:26 -0400
X-MC-Unique: xgwUc6SENeKgZrh2nyk58Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1FF23800E81;
	Sun, 10 Apr 2022 09:52:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 55B6D40470D5;
	Sun, 10 Apr 2022 09:52:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6BA161940365;
	Sun, 10 Apr 2022 09:52:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 10 Apr 2022 10:51:59 +0100
To: blinux-list@redhat.com
Subject: Dragonfm history vs show hidden
MIME-Version: 1.0
Message-ID: <mailman.7629.1649584333.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So quick question Chrys...

I'm trying to have history switched to ctrl+H on my copy of Dragonfm, to
line up more with how Nautilus/Caja does it. However that shortcut seems
hardcoded in with no way to change it in the config file. I'm trying to
fix it since alt+H brings up a terminal's help menu and I'd like ctrl+H
to show/hide hidden files since that's a common enough shortcut on
desktop file managers so why not have it in DragonFM?

So where do I need to look to switch the function of ctrl+H in the
program? Currently it brings up the location bar, page 1/2 and doesn't
show or hide hidden folders, instead going back one step despite not
being defined as such in the config settings

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

