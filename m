Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ECA673ECD07
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 05:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629083741;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a7YQRj4syR2QkHX7/dOMQidR/Jll6482VPdgxKJk6qA=;
	b=TplZ9j6ENNQh8xJH6t2hyGdg4/h2pYdR1kFjMAPOq2MptMbaMATUxejCau4EP7LK3Mg1/U
	x1IMCbKfuUt692fV5xTCqgxZpilkyr6KK9HGls8FE8MGvh0d35x1qmNchruxkbPO4JPsx/
	igUGhh7LwFYC1+J8ga97hih1wvIkJIw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-lRisu5OTMP-pQokjgaHPQg-1; Sun, 15 Aug 2021 23:15:39 -0400
X-MC-Unique: lRisu5OTMP-pQokjgaHPQg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2F10107ACF5;
	Mon, 16 Aug 2021 03:15:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 552DC5D9DC;
	Mon, 16 Aug 2021 03:15:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24D3B4A7C8;
	Mon, 16 Aug 2021 03:15:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17G3FF9v026193 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 15 Aug 2021 23:15:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D614B112D168; Mon, 16 Aug 2021 03:15:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1C1A112D165
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 03:15:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 490EF80066D
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 03:15:13 +0000 (UTC)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-567-7LPK97RrPmOuMtqLS40UWw-1; Sun, 15 Aug 2021 23:15:11 -0400
X-MC-Unique: 7LPK97RrPmOuMtqLS40UWw-1
Received: by mail-io1-f44.google.com with SMTP id b200so737574iof.13
	for <Blinux-list@redhat.com>; Sun, 15 Aug 2021 20:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=odItp+UnB8g7jc7zcTw5TOnNzTceIupzbb+mvyjFa5Q=;
	b=BXbmsX/BDoi9q2s5pczczicwuuB8aHk3/6/GK53vf/Nv4FO4u+4OfsDW4CeoWoK3NC
	/W+UC1gTFCuxIb7jU+cSACvFqeuyz6KemChUtIFSc4EDS5I2+RZmj49QfyBeY8t5XODX
	4ddMn+5IakpCi+nOYSImJjlNSQ6alynv1RPF6AXVBTDRscudBx9WJjdSG8k0Oo/ggfL3
	0l4urli467k7Crx3R4xxxG0m1f6qa7CeJ7MFnvRekkX5GZREfVsoeA7ax9p5AeRdEKrI
	aBCtWT5FvdyC32z4XZ/szcQo9HSHqjB4TIEnaaS6tkuX+GMurl/AnKq0/7hBjBNf6j2b
	SQRA==
X-Gm-Message-State: AOAM530gBAxDG5yHh8vzMrDSYdC3cnAKqrhfGdwkim8G/EcZPdRUiwHw
	f8M1+rq6dW/Ls64yB5Z3WxNNn7iN326D+Nph
X-Google-Smtp-Source: ABdhPJx44YSZ/cDndNk+TM9qjINxJtGSCMHiZ5R7d3GapIkjsf1l+rAhXf7fZA/3lK3MtsSD2l8YuQ==
X-Received: by 2002:a5d:9592:: with SMTP id a18mr10813921ioo.168.1629083710373;
	Sun, 15 Aug 2021 20:15:10 -0700 (PDT)
Received: from smtpclient.apple
	(2603-9002-0304-d847-ec04-a3df-acc6-8b0f.inf6.spectrum.com.
	[2603:9002:304:d847:ec04:a3df:acc6:8b0f])
	by smtp.gmail.com with ESMTPSA id
	m12sm5078573iln.57.2021.08.15.20.15.10 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 15 Aug 2021 20:15:10 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 15 Aug 2021 22:15:09 -0500
Subject: How to make brltty start at boot?
Message-Id: <DE277D1B-BDE4-4373-807F-E4EAFDDD3BAC@gmail.com>
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17G3FF9v026193
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What I do is put the brltty startup command it /etc/rc.local

You don't need the sudo when you do it that way.
Everybody says /etc/rc.local is deprecated, but it works for me.
No doubt there is a sexier way to do it. Let me know how it works out for you.

--Brian Tew


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

