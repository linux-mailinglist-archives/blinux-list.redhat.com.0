Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB4643F370
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 01:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635463556;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xfcubj3o37Am70xwYJwgHv0g8JoG86RDEqNyB6wmOAw=;
	b=Mvk5QlysjrtreYdlXao4u4wmLbyKQxBWWNhvtRRGMG4r81YWWiro4A/q9J+Xv1lHVXrOpY
	HlxoZFOpLslekDCv2TT8yj0GuNdUExDGuBaXLHwQ7Hyf4l+1V3P98btDjFvgH9TjErTncv
	CRKspMeQwuJcboF9G5p4i2tIXfD0p30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-oQ13tq3NOqqcoxjEenpFcg-1; Thu, 28 Oct 2021 19:25:53 -0400
X-MC-Unique: oQ13tq3NOqqcoxjEenpFcg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF29336254;
	Thu, 28 Oct 2021 23:25:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C91DA60843;
	Thu, 28 Oct 2021 23:25:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A5C71800B9C;
	Thu, 28 Oct 2021 23:25:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19SNPWmR005515 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 19:25:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2DCA140D1B9E; Thu, 28 Oct 2021 23:25:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 293A740D1B9D
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 23:25:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 077B6811E76
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 23:25:32 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-Tr6gyUlMOkiqoeLxfEQ2WQ-1; Thu, 28 Oct 2021 19:25:30 -0400
X-MC-Unique: Tr6gyUlMOkiqoeLxfEQ2WQ-1
Received: by mail-qv1-f45.google.com with SMTP id b17so1724888qvl.9
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 16:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=Vw8aqGP2a5cCitH/sHV75YVn42/hzPXmOShTOxzSLVk=;
	b=egEX5BSD6RVfpCpxHW8Dc9qA+USvVAZdYfOoMRg6DICDpQwpkPgtsRAwrbyMbphfqq
	qPMI3dITdKUiVV3hHnECC+MCntIQERP9bcdujCOf8PDLWbiz9OqAyFNvfhUYv1fayfLr
	OpfTWmLFi9zmHkGJ/7Vhn41JE73WjpDwqPNvAsCuEF6jv1RpriIflI7d4+90BedOwRPJ
	e9TgM0tExxXicvorVHku16nDrdScEKoasxC6/UUkU0zgkEFIebyRAz37v7qdOtZl84Zc
	Vzk9HvHscXjeSkiKCDnGVpDAmSrQJXmrZ4beRq6DOr6LSgaUu+d8cVbHhZ7wNkX6rrjh
	4gAw==
X-Gm-Message-State: AOAM532aZUJVIJzFSydm+rPVhioPMLchqmNn+0O1mmFL6E8svVsD09fn
	n8EwXAZIfeA1RgwC+MopzeAFCkxdUU4=
X-Google-Smtp-Source: ABdhPJwklU95wBVOxRrJfAVtl0DPXNoQqNScXeLpJGVrKmrFXpfwjEkDSUcbQP+1MLzMGlNNFF5NgA==
X-Received: by 2002:a05:6214:c4e:: with SMTP id
	r14mr7652857qvj.60.1635463529384; 
	Thu, 28 Oct 2021 16:25:29 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:5da9:f485:a776:fa5c])
	by smtp.gmail.com with ESMTPSA id
	w7sm3184924qkp.129.2021.10.28.16.25.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 28 Oct 2021 16:25:29 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 28 Oct 2021 19:25:28 -0400
Subject: Can I run an accessible version of linux under windows?
Message-Id: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19SNPWmR005515
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

Hello folks,
I am new in this list, and I appologize if my question is not appropriate for the list. I like to learn linux but I have no idea where to start. For this I like to know if it is possible to run linux under windows and how to go about it if it is possible. If I could do that it will help me transition gradually from windows to linux.
Thanks in advance for your help.
Ibrahim

Sent from my iPhone


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

