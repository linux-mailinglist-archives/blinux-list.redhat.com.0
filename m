Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 039692B6DF4
	for <lists+blinux-list@lfdr.de>; Tue, 17 Nov 2020 19:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605639487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R83OzfpalEWWwsqIXVINhGI4H0aYeSHeM0xY1WOswnE=;
	b=ggOH2Je8NaMSis14pn3qpuxV/AGUgI1fNsvhKS82G9we9ZPRXp65MIA7bxBkglcXaZU5fn
	qgBk1ZGpkANlA201kQzSnmII/I0CFbiVgIbhHs8rPsNPd7WYNEASmh02hvQw5KV0joAQjD
	fKvVFDD5nnjQIQiT6rErocaucX6QN8w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-RmO-Gdh1PMWAK8M6zZ50cQ-1; Tue, 17 Nov 2020 13:58:04 -0500
X-MC-Unique: RmO-Gdh1PMWAK8M6zZ50cQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5604186DD2C;
	Tue, 17 Nov 2020 18:57:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A15AF6EF43;
	Tue, 17 Nov 2020 18:57:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE1F7180B658;
	Tue, 17 Nov 2020 18:57:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AHIvoi5027849 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 13:57:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E39052023598; Tue, 17 Nov 2020 18:57:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DEB83202450A
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 18:57:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66E081021F73
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 18:57:47 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-272-P7GKq0nVMKOOR8qMxXP_QA-1; Tue, 17 Nov 2020 13:57:44 -0500
X-MC-Unique: P7GKq0nVMKOOR8qMxXP_QA-1
Received: by mail-ot1-f42.google.com with SMTP id n89so20472283otn.3
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 10:57:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=kt1VhcrHOPXnsKU0p7/QBYNcadReMcjfSWMph3ty0O0=;
	b=qre6c9v4pQn692NvnO6c5BPenuZTnpNg1Y/89z4VzyMDsvkeBhGtvsVLKRwRt8mx2I
	V5NRqJo03gQEl1mWp39CWm7yNuQOZKSB4B63+cl86n9ZBJD0AnJ7p1fI0o/kX49FUtlt
	n3hrL+H4tP4iGT3eQPFpJ9RQzzBwmkrr43KeuONDJDtf8D0f4G8UExp5rEGbJV33PHVp
	VpIXKF2PimEnn7yRL+vAcecJ6Z7CGAl/ZrkLMPbjGIvURn0iy/LtC79++GEZTIiFpqRp
	ai7TQpPCxVEjwvHus6pzuUu5Yb40Ojo6zXY7b+pylEvCqKKTbCq63XR5wqeqiJqh7HCI
	VRCg==
X-Gm-Message-State: AOAM530u7Gl/6pgQGFOTLVtyc9thI45etBfddaECPcSErYdJphXM4ZS+
	Pc0GXPyeFxeBS/ZWIx5IpwZoKncZ+omiYw==
X-Google-Smtp-Source: ABdhPJxR9MXxtgo45jjEX5mBfLlXI34F5Kt47RI03xLaWO8owSuHr69fsUa7sSVfck2IXHAypQltHA==
X-Received: by 2002:a9d:1d48:: with SMTP id m66mr4000224otm.347.1605639463821; 
	Tue, 17 Nov 2020 10:57:43 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:fcc0:eaa1:e73:4f7b?
	([2601:3c2:8200:9360:fcc0:eaa1:e73:4f7b])
	by smtp.gmail.com with ESMTPSA id h8sm6431943otm.72.2020.11.17.10.57.42
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Nov 2020 10:57:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: ubuntu split, maybe
Message-Id: <5D4596AF-240C-452E-9AC1-C867ECB513AE@gmail.com>
Date: Tue, 17 Nov 2020 12:57:42 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0AHIvoi5027849
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I hear about a split within ubuntu that might be happening.  It supposedly has to do with 2004.
Anyone else hear anything like that?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

