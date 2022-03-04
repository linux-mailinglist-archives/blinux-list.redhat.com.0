Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E11B4CD4F5
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 14:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646399787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CZYEIy4/LMvMDCx9mzdi3qzCZzkltLZUI6ThmRTESCA=;
	b=bRF740ewcKqpTR2p6Wau34FVvz4Y181KJ7iA7JBnANpLx9crf3wzhNLb8LmMtWe20bUIdh
	NMHsasGWqNcAde3KrZx3frJIfYgMTwp7r9In5hs4gd65VEv3ts+JWXjP6lv8a2L/M0Mmmk
	6w7nW8JiXBjIQjWVnIA5+DVUCu8ckDg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-PF9dL1dXPBu4-VNSm42KBg-1; Fri, 04 Mar 2022 08:16:23 -0500
X-MC-Unique: PF9dL1dXPBu4-VNSm42KBg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18F49814600;
	Fri,  4 Mar 2022 13:16:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5690A83288;
	Fri,  4 Mar 2022 13:16:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 107B34BB40;
	Fri,  4 Mar 2022 13:16:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224DG2lO003818 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 08:16:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76EC81457F11; Fri,  4 Mar 2022 13:16:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 730451457F10
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:16:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8D01805F6D
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:16:01 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-629-r8iq9dqJN1Ougzrna_hcDw-1; Fri, 04 Mar 2022 08:16:00 -0500
X-MC-Unique: r8iq9dqJN1Ougzrna_hcDw-1
Received: by mail-qv1-f50.google.com with SMTP id gm1so6550935qvb.7
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 05:16:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ZCQa5fWADeT0vnhhSVIlWSXouHi+D54r5arcfZxFRpU=;
	b=IHmdZYrZWwxVHJE3rbhwzcPSromiVgKqLuTBXhm9FClZ+6qkj1w6UBRnYVuy8bs0pd
	1NAF//xkvdvpiSAIYeRRKk2hrxJYIkgJz7MKutpniC32vIq8dyOR16Ivgo7MtXeJqGxX
	ql/wErex+T171JhZa90PdgYH0utlqZPU0BCgrmw2WIZL2diWUKqFrza0Mm6pOvToGXCL
	P/yuDwaNluDVYtpNQj3/XAvifUItSwJufvxG3vkKWRzxTPyzxX2ImEU+GrflEWyIkZQy
	xDURa8jim5+Jh8UtgM6+v7deNRIu+48oBVn0zfaBHW7DMMBbUkEmyZduw9WnS1uP0Adt
	OU3A==
X-Gm-Message-State: AOAM532KJ29btMADy/lJrFPTFZKzHb1eo6EAi1T4LsqfmkkJ3ilLZbjV
	PEL1uN6ra8uTSRL18wxGWjs/++S8DM2X1PdlfIXJvzrJ+mY=
X-Google-Smtp-Source: ABdhPJz2rnfXT59/WkUSo9qSPD2TuNUCY5BNn5twRgCaVAMChHS/yK4dEsHR3/Q+Xp5Wgo04hgV+jfvRR2bv0CZdr+c=
X-Received: by 2002:a0c:f801:0:b0:427:47d3:3715 with SMTP id
	r1-20020a0cf801000000b0042747d33715mr28160896qvn.46.1646399759688;
	Fri, 04 Mar 2022 05:15:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP;
	Fri, 4 Mar 2022 05:15:59 -0800 (PST)
In-Reply-To: <alpine.DEB.2.11.2203041342400.3038@debian.work>
References: <YiHciAX/R+L65BU3@waffles>
	<alpine.DEB.2.11.2203041342400.3038@debian.work>
Date: Fri, 4 Mar 2022 13:15:59 +0000
Message-ID: <CAO2sX32idanJBXoveeR9sBU_DnB4QhTT6iSaQ0p9=LM4L=5rZA@mail.gmail.com>
Subject: Re: Google is nuking simple username/password sign ins?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

I haven't gotten such an e-mail, but any idea what this means for
people using the Gmail web interface?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

