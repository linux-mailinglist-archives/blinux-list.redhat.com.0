Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D444AE4DA
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644360250;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KJuz14jBQe9YgiePuVKCqNchN5P4ceMDx7xEkFukUgE=;
	b=KfSXmaNDYY0L2tkwwM0JNel5NFn+lKr/LxmfX3CBV+cM4ccPbZ9SdBz00cCYbI8nImyuqU
	YmEmp1/01fYT8kotI9zhACtp4lBdspuUyyT/mmt1EmVB6rsrPGZAIkIvKFvDcEijWFJg0x
	t02hT1DnzwxfOu4YwmZ6GjZ+0nlgYjw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-i72kuTOION-iSwzuK_prMQ-1; Tue, 08 Feb 2022 17:44:09 -0500
X-MC-Unique: i72kuTOION-iSwzuK_prMQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 531101926DA7;
	Tue,  8 Feb 2022 22:44:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2C495DBB9;
	Tue,  8 Feb 2022 22:44:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 984391832B16;
	Tue,  8 Feb 2022 22:44:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 218AKSaH003243 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 05:20:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF54840CFD02; Tue,  8 Feb 2022 10:20:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB67B40CFD01
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 10:20:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A79F380452D
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 10:20:28 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
	[185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-261-69Y3z82ENdOOdD1XoHewdA-1; Tue, 08 Feb 2022 05:20:26 -0500
X-MC-Unique: 69Y3z82ENdOOdD1XoHewdA-1
Date: Tue, 08 Feb 2022 10:20:16 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>,
	speechd-discuss@nongnu.org
Subject: For all .NET developers: A new SpeechDispatcher client library
Message-ID: <fa7165b8-bba6-84ea-cb30-3fbb3a23d917@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 218AKSaH003243
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,
as some of you may know, C# is among my favourite languages for quite a
some time.
However, one particular drawback of using it on Linux was that there was
no library for using Speech dispatcher, i.e. getting speech was a bit
problematic.
That's why I've decided to develop a full-fledged Speech dispatcher in
pure C#, and as of today, Im happy to release it for anyone to use under
the terms of the GNU Lesser General Public License v2.1.
For more information, see the official project repository:
https://github.com/RastislavKish/SpeechDispatcher

Please note these are the first releases, so minor bugs can occur, feel
free to open an issue or contact me personally if you find any.

I admit the documentation is kind of... non-existent at this point. I'm
not sure when do I get to writing one, I have lot of other projects
going on, so I don't want to spend much time on tasks like this.
Please use the Python speechd documentation meanwhile, it should give
you a good hint on how to use things.

If you have any questions, feel free to ask here, on my mail or on the
GitHub repository discussions (I'm not sure whether it sends
notifications about new topics, so if i don't respond for a longer
period of time, just mention me or send me a message).

Happy coding!

Best regards

Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

