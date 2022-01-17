Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 126A949009F
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:45:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642391109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QIhSRrIOy9FA2THGp/ndUBPcqqWoT3pWA+zn9K+cf7s=;
	b=HI7epPBkBOgreI3GRZZ+EmirYfnMSrktJcbCO+PrQzCLblstssj1BahcuciBPGWCYn8/Fy
	sxj3uhxpshrBcxoVMfpnvJXwjq051rewXCIMtArMprJ66Vhoip6bljvQ20iAjRY9fJ7O6K
	xyTXbhhdxrNbrP4ugo4OcpF6z+9apbA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-y6KH8VyPNV2dgJNSE6ytJg-1; Sun, 16 Jan 2022 22:45:00 -0500
X-MC-Unique: y6KH8VyPNV2dgJNSE6ytJg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE456101AFA9;
	Mon, 17 Jan 2022 03:44:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ACB94EC6D;
	Mon, 17 Jan 2022 03:44:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3DA34BB7C;
	Mon, 17 Jan 2022 03:44:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H3ipJq011430 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:44:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E33D140D296B; Mon, 17 Jan 2022 03:44:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF6EC40D2962
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:44:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C824D811E76
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:44:50 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-396-PwhfyHf1NSGF5hr6jpfXXA-1; Sun, 16 Jan 2022 22:44:49 -0500
X-MC-Unique: PwhfyHf1NSGF5hr6jpfXXA-1
Received: by mail-qv1-f46.google.com with SMTP id l13so15675661qvz.10
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:44:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=mdHt/+B3XyC5+CXDWJcDtnvrPIdhA37MbEUlrntwKeQ=;
	b=z6vpUPuYUVV+iL6HK9jNh/hRbCJqpt6DZfM8/eJ0L3p0iJFUfpLVZyoTWKVSzkm3mY
	5Gqr0II0hX/UVlrUJEmtV2Ca1mTSWgxa7nY5iGW1iuI3SrPm62HyAF1kXQMcMf0V0tw/
	RqyxqPiltLklGmv8KvMDdqOLnRlg26lNaet/lEdT0tVztBIg6BXEki2XhwPfs5t7H6q+
	Ithha+vmRxGJZQPAEuueBEfDBsWpcJt0pUsAEQldTgYlhkseGW+y8Vvuqx920D1rO4yB
	wmxVUd1LJ7XYKVDPrlOMwCv3TBAmWsFiZGAuKtL2nYcgUtxJo88lYlqW3WzpBpZee/cn
	CJwQ==
X-Gm-Message-State: AOAM5310wFTfmNuyJpQUjjYiixsvTLfWoJpR9My4YKp+XdgkBZC6ORvI
	ta9QyRzaJCIxpacuUvxaQPFr1aS+5Kd2H73dgJ2CjGwOJvE=
X-Google-Smtp-Source: ABdhPJxxB66eeUoJhGnd78qd0edruW+FPxeIAl9oEIinRYiB3aQFgNb1Tm6I3kJKtLVzGAbdzZmk5Iqaam/R72mDzxg=
X-Received: by 2002:ad4:4483:: with SMTP id m3mr16947486qvt.105.1642391088685; 
	Sun, 16 Jan 2022 19:44:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Sun, 16 Jan 2022 19:44:48
	-0800 (PST)
In-Reply-To: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
References: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
	<84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
Date: Mon, 17 Jan 2022 03:44:48 +0000
Message-ID: <CAO2sX33fXUtxngX933DCh=day+Fp-VODOOoj+7PJcX3g78szLQ@mail.gmail.com>
Subject: Re: looking for accessible music library app
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

+1 for just using good file management instead of a Music library data
base... though for me, my organization tends towards:

Music directory on root of data drive
-Top level directories of American, Asian, European, and Soundtracks,
the first three for grouping musical acts by continent of origin,
Soundtracks being its own thing because some media franchises have
different soundtracks in different parts of the world.

Under the continental directories, I have a directory per act, under
each act I have adirectory per album, and under each album, I have a
file per track named with track number and track title. Under
Soundtracks, it's a bit more variable, but usually there's a directory
per media franchise or a directory per publisher.

And where possible, everything is FLAC ripped from Cd.

For playback, I'm currently using gst123 as it offers similar
compatibility to mpv best I can tell, but has slightly fewer
dependencies and lets me crank up the media volume without having to
increase system volume, letting me seamlessly go between media and my
screen readers without either the media being barely audible or the
screen readers yelling.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

