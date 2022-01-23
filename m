Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF8497061
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 07:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642919926;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pKYbNfZy+jkR+zlW/9bWOa7cuOFSV7V5ocJcsn4D1EY=;
	b=doXjgDbSEM1RQ5GcNP1P/GzHijqGKqyv86AAw4Q3EP4xU/7881TOe6UISU0WSTOeywB/w2
	mKTzs+ExiSfSQprR/GBAYFcTwMtqNS6JJzQkm+59YPtLI8FLeGzN0ZBtz3/qruPzRY1ZcU
	RnsxlCmSdyJE0soGlvJvlF9C6L+OdZw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-404-E7kUMOMLO-WEw_OXC7GVpg-1; Sun, 23 Jan 2022 01:38:42 -0500
X-MC-Unique: E7kUMOMLO-WEw_OXC7GVpg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D72608143F2;
	Sun, 23 Jan 2022 06:38:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94A2E5E48F;
	Sun, 23 Jan 2022 06:38:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 178EB4BB7B;
	Sun, 23 Jan 2022 06:38:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N6bvTc011917 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 01:37:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3CE62026D65; Sun, 23 Jan 2022 06:37:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFA7D2026D64
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:37:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D152C811E76
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:37:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-21-rNxy8xfoOm-5yhOJksDyyQ-1; Sun, 23 Jan 2022 01:37:52 -0500
X-MC-Unique: rNxy8xfoOm-5yhOJksDyyQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhNhw09YHzJfd
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 01:37:52 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhNhv6VrKzcbc; Sun, 23 Jan 2022 01:37:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhNhv62b8zcbP
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 01:37:51 -0500 (EST)
Date: Sun, 23 Jan 2022 01:37:51 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <f7cb1031-ef34-54ca-8e60-287e8b52c616@hubert-humphrey.com>
Message-ID: <63d85f5e-72a4-d137-5a30-67cdb077a77@panix.com>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
	<f7cb1031-ef34-54ca-8e60-287e8b52c616@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks, I'll check that.  I could use lynx --dump to pull the directory
but then file numbers to the left of files are on each line.  Stripping
those with sed and loosing most of the file since only two lines are
actually needed are a couple other problems.  Let's see if lftp will be
more helpful.


On Sat, 22 Jan 2022, Linux for blind general discussion wrote:

> I wonder if you could use lftp for your project?
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

