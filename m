Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A55AE2A5081
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 20:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604433228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R3BxLR28oXZjh2IpyYqI0gVM+O2Hd30bxypSzucFRzA=;
	b=eA+6N4n+5akAB8ta4U//f+bLSPjWux0HxIKTZcD2KNkNmc9J2l2NEgLP3oDeoD6y0SCT93
	DYwL8Z0pd1SeyinVPiF/IzWXresqyI9GVNVhPmqDU8oBIuM0NaLEKzPSsQBfmrWKnbjvVX
	iWwMswo/zD9NibS9NsyRGS2rMzVWnFA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-59YYFU7hM5eQvUuFxvgUjQ-1; Tue, 03 Nov 2020 14:53:46 -0500
X-MC-Unique: 59YYFU7hM5eQvUuFxvgUjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3475C10082E7;
	Tue,  3 Nov 2020 19:53:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B0295C62B;
	Tue,  3 Nov 2020 19:53:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E43415813E;
	Tue,  3 Nov 2020 19:53:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3JrTK9006577 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 14:53:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 64439208BDD7; Tue,  3 Nov 2020 19:53:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FA2D207A79B
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 19:53:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0C761021E1E
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 19:53:26 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-301-CsVG3MXeNzaxFRXiZ-ho_g-1; Tue, 03 Nov 2020 14:53:24 -0500
X-MC-Unique: CsVG3MXeNzaxFRXiZ-ho_g-1
Received: by mail-oi1-f173.google.com with SMTP id x1so19594230oic.13
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 11:53:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=n8jgD+5oJshGlxGpaiUNrDDEWvTW1aNXkO+8homSl1w=;
	b=CfetScAqeKc+G2zqnBolmIMgVt84v4pkoLG5FEQP/Hf44+g5+PewSr1Ct5xBSHAv91
	29SArEqIVfVVkTAKiAB54AcR32BEsv/GLuJtMxmBBmmzy+4l0uTJ9kQj0vu6ct7lHdJK
	31WT5zZ3+7uLw6BgaUH9A6nVU/5pNSRLwH+8EGBBC5KRElUT/Q8HyY2Rv1N1zUheK4Ej
	ls0Ln34emnTculg0P4pBr9Qg1waiR8RV1t9EGgu2n3G5BRh0AU0f7mogFCYDWWQxpBk/
	a2HdQup4hg8iVhn3GSl2A8lF3PPY0hX5c97b0g3YbClVT31/k7MxU4IsV/jNI37ew++T
	Gwbg==
X-Gm-Message-State: AOAM5300AGY6aWBEoRvH+Zj9955O68kB0YdXZOmNucLODWCPYB7VYbW9
	VsFikFwB2OZPeWn4ql0VJkxzeSPjY2LKuQ==
X-Google-Smtp-Source: ABdhPJyDrmnI1gVDzdH8qsN90Gbjz26GYq/+N4m6Z6DTycKhnTAYYWIXdCq7Z2uZ7XIHzx6YwR/AQg==
X-Received: by 2002:aca:3605:: with SMTP id d5mr509694oia.45.1604433203469;
	Tue, 03 Nov 2020 11:53:23 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id
	j10sm4231229oii.14.2020.11.03.11.53.22 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 11:53:22 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: arch linux and broadcom
Message-Id: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
Date: Tue, 3 Nov 2020 13:53:21 -0600
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A3JrTK9006577
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I got arch on a usb stick.
After booting and using arrow down, then enter, arch came up talking.
But even though there is an ethernet cable, I cannot get on the net.
Never is this a problem with ubuntu or pop os or with fedora.
Anyone aware of a way of getting on the net?
I also have a u s b wireless wifi adaptor, but with arch, not sure what to do.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

