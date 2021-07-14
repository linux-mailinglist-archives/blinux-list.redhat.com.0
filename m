Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA0C63C858C
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 15:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626270662;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R1xHRBDVC9zC2CTXkK6N5m4IjUIYkLnXKVJIh5x1uaM=;
	b=Ocrs/4UWKGBsictqn21sFIxs3EObSIsZRfwhBO7mvSAt6ukN9YDjIzEIGbW6e3qUfosthU
	YreCgh9GrDu2HglINonBtgK4k5ylOFXavY792DIyDMxHHP2Y5MuBrBnizgbXPk72DyE3bI
	EIMJVqohCkNUf+Ub0/kBTQpMnwEJf3w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-0hKFC43QMbilEvzBjrSBdg-1; Wed, 14 Jul 2021 09:50:58 -0400
X-MC-Unique: 0hKFC43QMbilEvzBjrSBdg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 540FD804301;
	Wed, 14 Jul 2021 13:50:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE3FE2C016;
	Wed, 14 Jul 2021 13:50:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A2D61809C99;
	Wed, 14 Jul 2021 13:50:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EDoa92000636 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 09:50:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 43845100BFD4; Wed, 14 Jul 2021 13:50:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E93A101B57F
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 13:50:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A78AF89FF00
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 13:50:33 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-227-S4TIO1FRM8q3xihmLBBAQg-1; Wed, 14 Jul 2021 09:50:31 -0400
X-MC-Unique: S4TIO1FRM8q3xihmLBBAQg-1
Received: by mail-qk1-f178.google.com with SMTP id t185so1601127qkd.3
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 06:50:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QeeDN8bp4kEhWBLGydQB/4B7sNBvIlXINdOcXe+S2eE=;
	b=OH0iHpxkltUZXXxc9bWmPBVw7DHosLD0Dbq7qES3uYBWgr7xhF+wXx/HjbFHa2Zkyw
	rau3WxVbhiqSAayDg5yE6UBefe8r790q6UpSdUGbJCo5WaDCDTIc2EcAFbpDvFa0YpW9
	kLPiqWkUdhKSycMoDbfdoTIJyaY/vu9O12FKXIP1K5e2LjVavZeg0ROxnLXrlX3ZujXe
	id4sz9MVfU0RRXjtrCG32qKD1qCYlOQMXyNcdrKyp/twr/6cWKesVuFU2qL9qUYP/inP
	j/sNslNv4k+U2psWuhq2IwMSG6InSaP6CSRKpefTOHAHHEhAx/WE2Gellkd03oZRFkpb
	RBJw==
X-Gm-Message-State: AOAM532fRjLwmzbRQYKApBmoUpO6t5KBHBl1VJ3tmy3GQ9B5qrEYLzRj
	GAAKtPKDHReZ6DX5Rq4RGHuFJO8GAtK/pWeyQZU42ZlRo1w=
X-Google-Smtp-Source: ABdhPJwnOmI2IWFC/Qtse2f/FDxgCKckvxlVPoaJma+3nii5A/DzdUsrk78dIijyTwzZBZR81nB4D6HLCHgvITct208=
X-Received: by 2002:a05:620a:149c:: with SMTP id
	w28mr10075103qkj.127.1626270630910; 
	Wed, 14 Jul 2021 06:50:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e084:0:0:0:0:0 with HTTP; Wed, 14 Jul 2021 06:50:30
	-0700 (PDT)
In-Reply-To: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
References: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
Date: Wed, 14 Jul 2021 13:50:30 +0000
Message-ID: <CAO2sX33O78t=zZVJpAs5ci2_Tcipf3=ChohMLS6VVa2QDbCezw@mail.gmail.com>
Subject: Re: Arch Linux post installation issue
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm not familiar with Arch, but you might want to double check that

speech-dispatcher-espeak-ng

is installed. Debian lists it as a recommended package for
speech-dispatcher, and I understand Arch is biased towards installing
less, so it's possible that installing speech-dispatcher and espeak-ng
didn't automatically pull in the plugin they need to communicate with
each other.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

