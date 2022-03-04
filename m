Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8426F4CD7AE
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 16:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646407448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yv/wvrcMz+PpN7vkoY26pce43Zu2Gmdu9Sw6vqnfoa4=;
	b=i+68nQ4QClts80+ZPV46/PMhvsPZ/sTeSQif2/QJzHYvi0KJx/y+ROGAmyi74SJc9xQX1I
	he1J8av6qsbmvu7PJYMXmMvM1ymOSUGMBdHfkfjIKJ6pTl9jdmNYldgLSqufciYxpcUl7n
	y16kjhZnWDANH7GKo4o6t4j4SWEXCUA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-llTm_MNuMAmNL9C-gl-ifw-1; Fri, 04 Mar 2022 10:24:07 -0500
X-MC-Unique: llTm_MNuMAmNL9C-gl-ifw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF8E2FC81;
	Fri,  4 Mar 2022 15:24:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DB767DE58;
	Fri,  4 Mar 2022 15:23:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E92864BB40;
	Fri,  4 Mar 2022 15:23:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224FNh9r014399 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 10:23:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 498E9C50955; Fri,  4 Mar 2022 15:23:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45D99C50943
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 15:23:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B598899EC1
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 15:23:43 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-517-cbHrfgagPAiEz9_QcCqRpg-1; Fri, 04 Mar 2022 10:23:41 -0500
X-MC-Unique: cbHrfgagPAiEz9_QcCqRpg-1
Received: by mail-qk1-f174.google.com with SMTP id b13so6629123qkj.12
	for <blinux-list@redhat.com>; Fri, 04 Mar 2022 07:23:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Q2h4fh/VU71rbbxZvbNtJt0VGDJC3O4JjNMW1tkap9s=;
	b=RzoGtfJjSbN2U+Bzbhf7xl5BAfwo0cVUcBDihHLePIsvHEyxK+RfYksjkUuSrj1Gf1
	7DJYD3BGQMqJneZ1IOsg9l4f9N4+N6YB+RwukLHM1AsxCLl+XLOjVxdbabHvRcfMX+iC
	QfB4jTaPCu/bmNs9tTTqKhOv16nax1L2yFdbokEgHI89LpcQAgtIUECCPdBJRNIXx8MW
	ZFd+taxkdsaCnN4DybVIEcNZ7TL5SLtZWmQRm6d7zZgllI5kb4wuZ+6HjI/itXly0TYS
	uHFwAzjWGQcNdxkC/j6vl2V77bi0mc6jqjhQESlcKtK8ro+srcRnxfuWZ5jpVKlBKE5y
	6HmA==
X-Gm-Message-State: AOAM533B6+mtSbuft5huDRrwu+M6IffksjrTqYVhOJUk8sqJBpsJn2SL
	tHyHszkXHWi6R1R528JQ0XSU4avwaP3HO1ONgxQvvpA0DRk=
X-Google-Smtp-Source: ABdhPJzGO0OsHyivXHQEu73Dx5ydoM3+5OklXhKCBOgfN5intMfupjj9VgM+wIPRHFruIyHH0Y5Z9XzIK1N8iRXIerE=
X-Received: by 2002:ae9:e209:0:b0:47d:ecd8:6054 with SMTP id
	c9-20020ae9e209000000b0047decd86054mr2835247qkc.192.1646407421094;
	Fri, 04 Mar 2022 07:23:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP;
	Fri, 4 Mar 2022 07:23:40 -0800 (PST)
In-Reply-To: <625cc4f2-ab55-d987-bc85-842ea1aa1cbd@free2.ml>
References: <YiHciAX/R+L65BU3@waffles>
	<alpine.DEB.2.11.2203041342400.3038@debian.work>
	<CAO2sX32idanJBXoveeR9sBU_DnB4QhTT6iSaQ0p9=LM4L=5rZA@mail.gmail.com>
	<625cc4f2-ab55-d987-bc85-842ea1aa1cbd@free2.ml>
Date: Fri, 4 Mar 2022 15:23:40 +0000
Message-ID: <CAO2sX32BG08sJ6APST4f8d_+EAziSSAcgsqgEeAxS8U74zxwFA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It sounds like I'm going to eventually be screwed if I want to check
my e-mail on a shared computer and don't have my phone on me... I'm
not sure which I find more annoying, websites introducing extra
security that seems more likely to lock me out of my own accounts than
stop someone from hacking me or companies assuming everyone is joined
at the hip to their phone and that they have a smartphone.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

