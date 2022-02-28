Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8234E4C7BFB
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 22:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646083750;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UTjikSPGw69bv4/0pZ7JNC9KuRDIpjN9BJ9OqSkeYvg=;
	b=b7ecXhnlvYPWxxGWwmx+X4cnDmQCtxG82qbtLJw30EuQwtRMTbISTqDqnh6w0yOv+PVJjK
	tzZgBHTBKc6n2+T9n9Ohl0dsHiaWH7uHZyMyNXszgUIgiujQ8cFr+e3xECOyG0XKXpH2R3
	b92iXptS057yYLPIVCkhTbdT798qhi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-659-onx_V1l-Of2BV0GVzdkdfA-1; Mon, 28 Feb 2022 16:29:06 -0500
X-MC-Unique: onx_V1l-Of2BV0GVzdkdfA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86978801DDB;
	Mon, 28 Feb 2022 21:29:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE9F24CECC;
	Mon, 28 Feb 2022 21:29:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B3341809C98;
	Mon, 28 Feb 2022 21:28:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SLSpVO011622 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 16:28:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AFA0D1121331; Mon, 28 Feb 2022 21:28:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA591112132E
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:28:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3F9E899EC4
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:28:48 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-549-nh4sY-dyMKOaHav2KNAGDw-1; Mon, 28 Feb 2022 16:28:46 -0500
X-MC-Unique: nh4sY-dyMKOaHav2KNAGDw-1
Received: by mail-qv1-f49.google.com with SMTP id j11so14959626qvy.0
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 13:28:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=fB6+CC4HIg7jFkgK40/CccKx2XrMxZQWZadL8KDzZ8s=;
	b=k28WLvs4ly26aQj82oy7R57vundpRvJ8ev67zaDhZZTilA5aMCKxnpHhRdX9XJ93Az
	CFegYmC+i0/DMer53eR6NZHQxeXw6oehx5ZVJpUapC3mDhl/ELNGG26Ggs1yEzqvxRdh
	5py/upv+sMsS10fZwmaiOsFIXE1OsFbZd5DVZYICS/dneMTuURMgElkbrLiIF0iWB1vA
	iHO4WABjm7jWGW4xOPTvq4uzlp7/e4Jfmq0RUrqQFeOGnffe1GUSEw0LNvbfS9F7cQh5
	Hvlmr5M5oJ9ps1/yBYaeaRoIXIpzGRHGpIfoEWHqPFTnwCeeei5/Zv6I0d0qh41pKIUt
	MhvQ==
X-Gm-Message-State: AOAM530PLC6P9M8ZER3o1VfziG+Pub3qQkGzcF7lRgRE6dkyHsi1iI9r
	V8adF8Yj+n/c9nY3okL7ZSgLxnKghAOh4X+v3S3STH9pgC8=
X-Google-Smtp-Source: ABdhPJz8IM/Z3qzBwof82WFk2xhfqzBz0/rgdgi/99TiyrxLuwjZXtcAPAoJGjiWjIrDeZDofiQkEXhefsjfTUojBeA=
X-Received: by 2002:a05:6214:3cb:b0:432:5407:2af1 with SMTP id
	ce11-20020a05621403cb00b0043254072af1mr14996495qvb.105.1646083726016;
	Mon, 28 Feb 2022 13:28:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Mon, 28 Feb 2022 13:28:45
	-0800 (PST)
In-Reply-To: <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
	<01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
Date: Mon, 28 Feb 2022 21:28:45 +0000
Message-ID: <CAO2sX324un4Cv4dVcpsHSp=CyOWcSVm9mceJn7eb5MNgRg2i_w@mail.gmail.com>
Subject: Re: Snap, Flatpak and/or AppImages?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Honestly, I have no experience with any of the mentioned formats. If
its not available from the Debian repositories or as a stand alone
.deb I can download and install manually with dpkg, I'm usually at a
loss.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

