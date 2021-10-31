Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4071E440F44
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 17:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635696210;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gj2/pResPepnG0EMCkrPG+t8NtWJogPCwCH8pIhkApU=;
	b=KVssO/kfsaC4pOy5N84nYLAEbuKww/8QOcllAR5Wopl1H4n+bQ0hSSEwsh+LueS6F81ERp
	X3N9ZV3ttHsZHferBD9s5Mbu2D0KGomxku5yHQX1SKMCMc3/epihrhhIcOI3lb8Kg6bzqw
	IthiOlyN1/ghm9DLi7uB2pyzwDLUrP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-Qi_K4BkUO3OHPAinF852Sw-1; Sun, 31 Oct 2021 12:03:26 -0400
X-MC-Unique: Qi_K4BkUO3OHPAinF852Sw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 455018018AC;
	Sun, 31 Oct 2021 16:03:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C74E1045EA5;
	Sun, 31 Oct 2021 16:03:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 218164A704;
	Sun, 31 Oct 2021 16:03:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VG3Bma009942 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 12:03:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 550B5400F3FE; Sun, 31 Oct 2021 16:03:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50C474035786
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 16:03:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27E2C8001EA
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 16:03:11 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-1-BZmyLDJqNdakLfzVlAIyzg-1; Sun, 31 Oct 2021 12:03:09 -0400
X-MC-Unique: BZmyLDJqNdakLfzVlAIyzg-1
Received: by mail-pg1-f176.google.com with SMTP id a9so4458424pgg.7
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 09:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=87VxE4aErilagPLFs2k9wYN6UWvlQCA90AlA+0RGtLs=;
	b=z63Mb8HGlH33OAtfZpugHfLWe7HkoPWQRqDA6goAbGXyoc7C23Xz1rwgFvpbFtvDKG
	lHc1FoO0qStss/EO/J5/tR4S3h1iUhdb/NdopjlSrqHZ6/s4bpERd19N8eyNL4cw44xD
	iR94pkbw50m0rzDH70AXje9evoz9e2+GTK9ChRvnWzFSyTJR11l81EJcHyL/cu4hNWlA
	anGfFrYwTaK+TfOK8p8qT2vIkOpx43/A6/dswKUV0yzAmvK6/JOTN2RQ7E5LsbeawoQ+
	EUONbZfodrNGc2h1lXaX+cJ7F9So3k+ycJcp0F5tv3Q6hHd5fJwbuzNWBqHMGWox+cDi
	e2fA==
X-Gm-Message-State: AOAM531aBD3DzWa0QfwB0Npv5A5WNA+ip32rkw+Jq40kq/eb7z4CJvJZ
	19IJdBrRhtpxU8GyDD7igzMF3/ohmAhI6Q==
X-Google-Smtp-Source: ABdhPJxjNJBqWLYhI75rekWc2w2A0pn7Gn/SW+Xe1+Hl2ysy3b0Ikox7O3lCkG9mt2FlSTfTmGpcNg==
X-Received: by 2002:a63:6e03:: with SMTP id j3mr17754205pgc.465.1635696187777; 
	Sun, 31 Oct 2021 09:03:07 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	bf13sm4079981pjb.47.2021.10.31.09.03.07
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Oct 2021 09:03:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: PBI - shell access via HTML?
In-Reply-To: <1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
Date: Sun, 31 Oct 2021 09:03:03 -0700
Message-Id: <25068C73-5D52-4BF2-BB95-AD9DCB7672A4@cfcl.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19VG3Bma009942
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a Partly Baked Idea (PBI) regarding shell access via HTML.  In reading about nushell (https://www.nushell.sh), I was intrigued by the fact that many of its commands (e.g., cal, ls) output data in tabular form.  This allows other commands to process the data, making certain sorts of pipelines more effective.

My PBI is that, if nushell were accessed via HTML, a screen reader could let a blind user navigate the rows and columns of any tabular output.  I'd like to get some early feedback on this idea.  Does anyone think it might be useful?  What issues would need to be resolved?  (Inquiring gnomes need to mine...)

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

