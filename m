Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4CD2CB0A0
	for <lists+blinux-list@lfdr.de>; Wed,  2 Dec 2020 00:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1606863955;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HyL5tlsQDgrf+cX8QESBwkVFzxmT61dDKdTErYv5bdU=;
	b=C4723AYjmXxTXvfd02eDybQT+1W3D2yrJdfmP/4HA9lTdnQM33Yis+sJV0yvxg7XAsSa6Z
	XNRgWfATGr51N+gGF8A3i+ub7BpxsO1y5/l61I68N46ky2iuAfX6AqSn3cRR0Z8LSr9Kdc
	RAPx/6tmy0Ulru7giM6qo4/mqIkzmMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-j_N40EKsMyuJF_QgJO39AQ-1; Tue, 01 Dec 2020 18:05:53 -0500
X-MC-Unique: j_N40EKsMyuJF_QgJO39AQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84DE13E747;
	Tue,  1 Dec 2020 23:05:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C65215D9CA;
	Tue,  1 Dec 2020 23:05:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D6F14BB7B;
	Tue,  1 Dec 2020 23:05:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0B1N5VrE005339 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Dec 2020 18:05:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DB4CD2026D47; Tue,  1 Dec 2020 23:05:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D695D2026D46
	for <blinux-list@redhat.com>; Tue,  1 Dec 2020 23:05:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 342F6803CE8
	for <blinux-list@redhat.com>; Tue,  1 Dec 2020 23:05:29 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-132-gjDiGKANPR66N8OYTiVjMQ-1; Tue, 01 Dec 2020 18:05:27 -0500
X-MC-Unique: gjDiGKANPR66N8OYTiVjMQ-1
Received: by mail-pl1-f179.google.com with SMTP id 4so2084751plk.5
	for <blinux-list@redhat.com>; Tue, 01 Dec 2020 15:05:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:message-id
	:user-agent:mime-version;
	bh=yx4G3wPsOhRnUZSyw8G4TjUHrjreqGCCMUymA7ToQZI=;
	b=aYikngbg1t8uM99IC83+OFT8cQOAGyY5sB5uwXe9lmZJDnS4lWyLYqhnHmTmKwOeFD
	BoUcPy+rzraInYgJjfU2K1bRlfHOqw5wCyMW9vbN3thpB1Vg3TPkZ3urbs+XahTIXGZo
	oZemXYNiuPe/TkaKWAzB9FmGONaum9//HRyK/YKGQYcJkM2Q6lCVoP2iR5QO8uiDO817
	gDicHgYiDrOG0dnSxBSF7IvkSCa2ucloyKeshfhgiJZMlsrBLI2svcOoLiCGQcTuMyi9
	y9KXo7xO7EsCx/ZrAhcebyQ1g4IyFzkH5O9w9UZY+WGuygn5fGZR7yfZFIZL1LTFtDcL
	L+4w==
X-Gm-Message-State: AOAM531kwILhSYSMLXFCn19ZxzoBhDOTBVFKinXo54rfPzUk5wPH4J1y
	zd5athLRzhODPW17HE0x6UNEONuNSyQ=
X-Google-Smtp-Source: ABdhPJz+yBhoiAT2l4NHeYmGUIWbJcd1KUmK5r2m/Oa7P4gTW/5azBTjxsXD3KP2GncWrP8jN4pnnQ==
X-Received: by 2002:a17:90a:d308:: with SMTP id
	p8mr5088188pju.110.1606863925365; 
	Tue, 01 Dec 2020 15:05:25 -0800 (PST)
Received: from precision-M2800 (207-118-118-18.dyn.centurytel.net.
	[207.118.118.18])
	by smtp.gmail.com with ESMTPSA id k4sm634277pjo.54.2020.12.01.15.05.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 01 Dec 2020 15:05:24 -0800 (PST)
Date: Tue, 1 Dec 2020 15:05:19 -0800 (PST)
X-X-Sender: tom@precision-M2800
To: Blinux list <blinux-list@redhat.com>
Subject: Ubuntu 20.94.1 autoinstall
Message-ID: <alpine.DEB.2.22.394.2012011502450.6468@precision-M2800>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Has anyone successfully goten an autoinstall of ubuntu 20.04.1 to work on 
a virtualbox vm with the new subiquity installer?  I have found lots of 
stuff on the web but so far I have had no sucess and I have no way to tell 
what is happening on the vm.

Tom

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

