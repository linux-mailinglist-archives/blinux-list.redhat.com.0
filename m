Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFE44B3E6F
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 00:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644795916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9jSyqOfFAnLMjrCPHB/dTxSweZgYEzIurQ4g5cOizXc=;
	b=APEWviGWDg7y6GE9SFFpJWgh2Kh25Pj6alGI4nP1loqRztZcOreqGKzMtUk1RT9fDs7/8I
	MixkHb3268lnGxLf8hWa9eVkrx2iOgi/fpERE0KnjRx0XIQnt00i6OVqEhMxmkeGPZxdYk
	z6c8AiuvTcgrQ5c1lMUn3veihLk639g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-115-_xu2F-C6OeOrE5hNRsWJUQ-1; Sun, 13 Feb 2022 18:45:12 -0500
X-MC-Unique: _xu2F-C6OeOrE5hNRsWJUQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77225801B0F;
	Sun, 13 Feb 2022 23:45:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A57B0795AF;
	Sun, 13 Feb 2022 23:45:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E90154BB7B;
	Sun, 13 Feb 2022 23:44:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21DNiisj004684 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Feb 2022 18:44:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B08C72026D60; Sun, 13 Feb 2022 23:44:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABCED2026D4C
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 23:44:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 720233804500
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 23:44:41 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-392-EKzC7yaVMwWD-6EAr0jGDA-1; Sun, 13 Feb 2022 18:44:39 -0500
X-MC-Unique: EKzC7yaVMwWD-6EAr0jGDA-1
Received: by mail-pf1-f178.google.com with SMTP id f6so5287011pfj.11
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 15:44:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=R6yKV3W61uS0BYlvys5Mq5ZfHN42aAGFP1ByldYGoXo=;
	b=2tSXAZO4QjnqoYlq3jXpBTl4lcIdc4S4H8JafxI5D+g0CLAkQEDrcQIovNNq2J7wIn
	hDlP2gNpqyWnnRNBx0yTeB/VMjNkRnr4Ud2fcqDdFtsaNoz7P3SqL3oRsFtEbibSEl0e
	RMdgLpARs04b32soHUJkSfVUJUQ3GT1qN2o1CHIjHoDC1m9li4uuPQObvNs6UZw6JCfv
	JN1nzqt41+boWJb03umax8F5sicAGBlwuhC/t28KXPgW5R97sazi061L0PEsYXRR0un5
	ZLVxL8wiqdA5evpME6FLUNnoQ3mt/EcgPUGtjCMc3zuQhdZU98yjmLbTfcuRyfmP/syB
	buVQ==
X-Gm-Message-State: AOAM530fDfpxe5xroW5UYF3KvefCBSO4j54k5AbDqpwhSpicpD/FS8ey
	zWgVm4uBQM1JczyROPIDnMVUP9Q77S/uwKVppIxSHwng
X-Google-Smtp-Source: ABdhPJwxfKyO/S/PTYnZbd4kv2CNak26WgGCb2jHZtf4PpTHaxBQbSCY5GSpS5Ks79bl56F7rtPfDrAP++76UGDzu4k=
X-Received: by 2002:a63:e34a:: with SMTP id o10mr9577635pgj.130.1644795878126; 
	Sun, 13 Feb 2022 15:44:38 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f951:0:0:0:0 with HTTP; Sun, 13 Feb 2022 15:44:37
	-0800 (PST)
Date: Sun, 13 Feb 2022 17:44:37 -0600
Message-ID: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
Subject: How do you customize the way punctuations are pronounced in Orca?
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

I know you can switch between the usual All, Some, etc, I want to
control how punctuations are pronounced, e.g. '!' can be spoken as
"explanation mark," "exclaim," or "bang," When I am writing code, I
like to hear the punctuation, but shorten it as much as practical.
This makes code easier to read IMO. Is there a configuration file that
will allow me to make these changes?

Amanda[0]

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

