Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 290724D57D6
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 03:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646964045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xD+pa8p3lboTMvnq798t2N5Y855nPAO6JAkDBcIlYmg=;
	b=QPV4mujWKSz7J8HchX+dpgVtvnncMYsWCnXtieUmcO+Aa9IwTw3DYhqwbGVJUO60M1Jc+i
	es1/dz05O0iwuDx6YfuI2QgkclsYU0f5K6zqnEJeD1L7D83isyYwQiGFs4y1ynHqo1D8NV
	wBe0p+TzW0IrOWf4h+xN7vW1R87q7Og=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-tbIejAaeO7q3BjV8YEscdQ-1; Thu, 10 Mar 2022 21:00:41 -0500
X-MC-Unique: tbIejAaeO7q3BjV8YEscdQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12E701C04B4E;
	Fri, 11 Mar 2022 02:00:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 62A1540D2826;
	Fri, 11 Mar 2022 02:00:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 62087197165E;
	Fri, 11 Mar 2022 02:00:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: YT-DLP downloading from text file help
Date: Thu, 10 Mar 2022 20:01:43 -0600
MIME-Version: 1.0
In-Reply-To: <mailman.1479.1646963349.111202.blinux-list@redhat.com>
References: <mailman.1479.1646963349.111202.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.1370.1646964036.111207.blinux-list@redhat.com>
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

yt-dlp -ciw -x --audio-format mp3 -o "%(title)s.%(ext)s -a list.txt

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Blinux <blinux-list@redhat.com>
Date: Thu, 10 Mar 2022 20:49:04 -0500
Subject: YT-DLP downloading from text file help

> Dear List,

Can someone help with this script?

I want to download the best quality=A0 mp3 audio of links in a text file.


yt-dlp --batch-download -ciw -x --audio-format mp3 -o
"%(title)s.%(ext)s"download.txt"

Thanks,

Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

