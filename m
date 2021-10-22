Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D993437C54
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 19:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634925396;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5ka7o4R6Idkb3jn/A9FeMlHxsTTAVe2K03OKNTvBVvQ=;
	b=YN7nK4SlRsBnBQc5HnXg+fyJSuXMAJVjZtawQcB37VXIGo1iPqzdFVfU9PZmG+4pPoKGDR
	Li0B8NtgScAl49/DfspS4P0unJpCYYeTkB/rEf53CAftC5ZU4U+DpYxmfqY0H4L+XBBxih
	Q3o6HbPFK9I63J5rmJqxWPdytxgJjW8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-GWBouQV_Oh6G_Tp_Cg0ijQ-1; Fri, 22 Oct 2021 13:56:32 -0400
X-MC-Unique: GWBouQV_Oh6G_Tp_Cg0ijQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BD23801FCE;
	Fri, 22 Oct 2021 17:56:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 418C960854;
	Fri, 22 Oct 2021 17:56:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BF381800B9E;
	Fri, 22 Oct 2021 17:56:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MHtkih006500 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 13:55:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9412ECF63A; Fri, 22 Oct 2021 17:55:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F58ECF616
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 17:55:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6310899EC0
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 17:55:43 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-17-SBKsOQezM5q2GeA-TH5FJQ-1; Fri, 22 Oct 2021 13:55:42 -0400
X-MC-Unique: SBKsOQezM5q2GeA-TH5FJQ-1
Received: by mail-qk1-f181.google.com with SMTP id j12so5424298qkk.5
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 10:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=B1egZSe8Y+JKKB0cfBzHmkcPpjaB6eCNKoZ9wcn3SwU=;
	b=62nvhMzMFXCyqkHB4mZBy2J4elnnt8VHHreMiCkvhPNgL4iapyJ+64XtscEKwllIWt
	V4LqvvXwf0FeqMfgZJ5v6Q1uzw7dBwETbOVNIUoahX9wtv0mKqyJ5NNAVEq/Ns5lEhVf
	YbN3OAdMMQs1emXrqapMwsrdZm2LRfiC/HDK5HLlCZstsCzvNQBn5pFtuppeL6jF6grT
	x2OsgYJl2qhJ2Mx50TjuYgCKAmkb3dDcRhDWwCqHaB0S5077MSghMd1rJpgUB7V0Hc+a
	9rojtxEpcj1WbOxqwE6b49C30OnLJZnveIrMXU1wYTcJb/T46VcFtj6rZbnln+6n61Dr
	XCGA==
X-Gm-Message-State: AOAM531oZFYoi21Z48J/S1TbE7GEL8ba4CMtIYsOJTjpyKK69kANMPuV
	B8W9aytlKP9YBUdHJSzraJsCjgzwS70=
X-Google-Smtp-Source: ABdhPJzve2vOKZmlLAuame0A58EuS1mzu2Quu6BKvC2MMpV8k3sx0eWj4EdkncGnnwL5mwPt1GAtCA==
X-Received: by 2002:a37:54a:: with SMTP id 71mr1315529qkf.230.1634925341242;
	Fri, 22 Oct 2021 10:55:41 -0700 (PDT)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	b19sm4301797qto.46.2021.10.22.10.55.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 22 Oct 2021 10:55:40 -0700 (PDT)
Date: Fri, 22 Oct 2021 13:55:38 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube-dl: list videos in order
Message-ID: <182b23f-791d-8ce9-91fe-f19297b8246@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Youtube-dl when used to stream a video to a media player; has in past days had much buffering.  This also means slow downloads as well.

This happens with youtube videos, other video sourcess work as always.  I'm guessing youtube is throttling their videos with youtube-dl;
perhaps to discourage the use of it.

On Fri, 22 Oct 2021, Linux for blind general discussion wrote:

> While I've only used youtube-dl for single urls, I would suggest trying
> youtube-viewer  with a -u flag for user name. The videos would begin with most
> recent. Its also interesting, when typing
> youtube-dl -U
> there hasn't been an update since June 06.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

