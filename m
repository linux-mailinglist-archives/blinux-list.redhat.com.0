Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 26D43284DC8
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 16:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601994685;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6bNpvxy8rlpmn1Z4aCnmNU2vwUegKo/5ZyzD8v2KyA0=;
	b=F3cp0EnRyk9PFzYKtgOHV2w89yR3+oIMDX0Ar3ycWMydr6Tq9V8shslpzAO61sFBsLEjop
	YJ5PZv2yXaM+LPq3hBhmCzd3q8cmXTjCVLWKX8wjmrUBdUkQa23lsC0fMgQsmRjPnyjAme
	MjMOaZn7wUsSL2HbuJxaB783L0dBEqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-P59G39y3PhKEtN7DQdPXrw-1; Tue, 06 Oct 2020 10:31:22 -0400
X-MC-Unique: P59G39y3PhKEtN7DQdPXrw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AEA4107465F;
	Tue,  6 Oct 2020 14:31:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64E9855770;
	Tue,  6 Oct 2020 14:31:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC8EC44A73;
	Tue,  6 Oct 2020 14:31:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096EUuJK011049 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 10:30:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E9343CF626; Tue,  6 Oct 2020 14:30:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3379D0B48
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 14:30:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CDD4E8007DF
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 14:30:52 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-259-QG2r0MgqNtu1Xbv1gPr_nQ-1; Tue, 06 Oct 2020 10:30:49 -0400
X-MC-Unique: QG2r0MgqNtu1Xbv1gPr_nQ-1
Received: by mail-qt1-f177.google.com with SMTP id y11so13167299qtn.9
	for <blinux-list@redhat.com>; Tue, 06 Oct 2020 07:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:user-agent
	:mime-version;
	bh=/WBgYr2SE6SqJVaig9jJped3PBtWGnyAcUYZ7IHzzw0=;
	b=O4AxDZCWxqNGKmq2STHAf39d5DnaxERxOJcyzGeePK/T6D0Fb7pnLY++uaNByT1/ql
	22rjDQqzgD5blLwbq6pZ9HB3XDx7fyx7NMSYr5YKhiUSylbNOcB0Oa0Ha+ZtNJm7ry9s
	+2RpNwbrZnSnbUmvocotVyDSKeAL9WsKZWHGhails1vmk4VluXl7hyT0SWc/KMKt90dn
	nWy9g6wvi/l+Kiowa/b5OUZpzdIrYdZbCtgYu+N+Mi1QO9sxlQXhaswo88x47KM81PjV
	XQrWfv5olhm3uiKeOAOLFoC2d3Nn3GYw+0RWE3rgJi+w01sUmxOIg3+1B5T87c+heOYX
	Qv8w==
X-Gm-Message-State: AOAM530/4EpusRD8dtpphS5jByHxvfFWzBCgOW0jQSbTvpCMHiF954k5
	bnki7Umv1UU2V8y/3w2bXpc2uWi1koATWg==
X-Google-Smtp-Source: ABdhPJyodKaKvQ98XlvVvV1KjncmyiVPzKm1dmHSb+I78geyXBzKyX6UE4TYKTjeMORAJfC8ATxp9A==
X-Received: by 2002:ac8:409e:: with SMTP id p30mr5258314qtl.208.1601994648599; 
	Tue, 06 Oct 2020 07:30:48 -0700 (PDT)
Received: from dans-mac-mini.home (pool-74-98-222-165.pitbpa.ftas.verizon.net.
	[74.98.222.165]) by smtp.gmail.com with ESMTPSA id
	e23sm2499407qkl.67.2020.10.06.07.30.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 06 Oct 2020 07:30:47 -0700 (PDT)
Date: Tue, 6 Oct 2020 10:30:44 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: VPN accessibility?
Message-ID: <alpine.OSX.2.23.453.2010061028110.5318@dans-mac-mini.home>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Consider this also, note the name starts with double s's, it might be in a repository already:

Proxy server that works as a poor man's VPN
https://github.com/sshuttle/sshuttle

On Tue, 6 Oct 2020, Linux for blind general discussion wrote:

> Hi everyone,
> I am about to install Slint for the first time, so if all goes well, I should be having my first Linux OS up and running soon. There might be unexpected challenges as a newbie, but overall, I hope it goes well.I'm looking into VPN options for once I get the OS installed. I know some VPN services have free trials, but I'd rather just ask you guys which VPN do you think has a fairly accessible app once you download it on Linux?
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

