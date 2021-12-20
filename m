Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 618EF47B2FD
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 19:39:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640025593;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fgqugTc+4p6uL7rRpkNSu88KmK7UDEUo5Jf6Lv7amUM=;
	b=ack2oNvmzodjksRlfgV96dtemJYtln2CDTOaa+2fX/PYExXRSDmXigMPWhxbYrTiv3BDMG
	ePISDYFO18Iw5a2k6yrehp5y+ZASE4Lx41xr5/VKVg+5FCLX0wHJwIgb29x4Sml0WD7BxO
	hulCiNoxW/S96+iFt24m5TEI0oYMMGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-454-v_-mioaNMuC84As-cGt63g-1; Mon, 20 Dec 2021 13:39:50 -0500
X-MC-Unique: v_-mioaNMuC84As-cGt63g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F7AA10B744C;
	Mon, 20 Dec 2021 18:39:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EA7578C3E;
	Mon, 20 Dec 2021 18:39:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CFC51809CB8;
	Mon, 20 Dec 2021 18:39:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BKIa9ab015647 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 20 Dec 2021 13:36:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B1C1B40CFD14; Mon, 20 Dec 2021 18:36:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACD2E40CFD08
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 18:36:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93ACC3879960
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 18:36:09 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-184-wzwlqGIoNuyIelgUBhYoHw-1; Mon, 20 Dec 2021 13:36:07 -0500
X-MC-Unique: wzwlqGIoNuyIelgUBhYoHw-1
Received: by mail-qv1-f43.google.com with SMTP id g15so8853998qvi.6
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 10:36:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=M+c9xq7OzI4lB1AK7VXUTorc0+GggzeRLMYvBRnzhXk=;
	b=xFEwmr4Pmz9Dan+4/Pf/5jzNYU35dkM7QM2u3oEZgLIyraCjQxVuySNmc2WWIhLepO
	4zwHDDU+7cI5J+pzkEgdpU1GJ5x3gRg1Npj5vEXvoNsQev20oEhMPfCxkQ+nYmc/figy
	TfTC+M+8oOOtfXb4YXE0ncgd18F4HOrC95Qej9E/2pHS/o1fWidLUWLQJzPtZGDZSnXE
	qPWeNsxJUAC9anMiiGpoIn/bH9ainydQ9HtfMf8VKF9aSYwyq/CF3a1bs9Ec0iNZ/NcG
	h9IzeH9bTKodo5H/5kRATooHtYTagK+H6R5QMH9ekvuOo1xHetQT4Cp8BZoyPxOfh52l
	Txbw==
X-Gm-Message-State: AOAM533QHFT71zMerD9gEbuOqylJBTXWdxAGsZZY9D6cw3Eg6zFUUYDh
	x8XOBr86BnSNiq7MqmGaJ4yB9TBeq1sl3U+1O5NNrb7Dcmo=
X-Google-Smtp-Source: ABdhPJzaxw8pmjLxqxQS3KO99lpBlk2qrjZkbfSwpBkW2H6GSydqfoBV61JUzyar6n7PGnTxxlb1GkDQgpSQgY2CocE=
X-Received: by 2002:ad4:5bc5:: with SMTP id t5mr14423756qvt.72.1640025366760; 
	Mon, 20 Dec 2021 10:36:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5762:0:0:0:0:0 with HTTP; Mon, 20 Dec 2021 10:36:06
	-0800 (PST)
Date: Mon, 20 Dec 2021 18:36:06 +0000
Message-ID: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
Subject: Dealing with seemingly blank combo boxes.
To: Linux for blind general discussion <blinux-list@redhat.com>,
	Orca List <orca-list@gnome.org>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Good Afternoon,

I don't know if there are any other heavy users of Kickstarter on
either of the lists I'm sending this to, but if there are, I'm sure
you've noticed that the various third party services creators use for
post-campaign pledge management aren't always the most accessible.

Well, the newest addition to the pile of screen reader unfriendly
pledge managers is something called Pledge Box, and the main problem
I'm having are it's combo boxes.

I can jump between them with the c key as usual, and I can expand them
just fine, but once expanded, there's nothing there, Orca is
completely silent until I exit out of the combo box. I can't recall a
similar issue on any other websites, and I've tried every trick for
working around bad web design I can think of.

Unfortunately, since the pages giving me trouble are part of
completing an order, I can't really provide a link.

So any tips or potential workarounds I might not know of?

If it matters, I'm using:

Orca 41.1
Firefox ESR 91.4

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

