Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B10F04C4DA9
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 19:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645813437;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gAWc1MQyXCYQwlHjBnnqAPgZCHuGbcxWA86r/t3NY6g=;
	b=Lh2jGLX0qSK+nX5MesmNt1JLG7YDmMmn/RiwXBGX7bkBIlvn3+YU4Bmgm/BXgtlwMNBX3b
	e7fge7ePWyAIb6H/NRUnc+d6Hcjhpc8otx9Aql4J08X/NFBVSU7+6wNBnKTpY4q2lO8zgC
	lN52QZXzb4tpW0Gdx5YmWRBEGZzpdU0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-P9jNIX2qNX2Sk4f-GeE8TA-1; Fri, 25 Feb 2022 13:23:54 -0500
X-MC-Unique: P9jNIX2qNX2Sk4f-GeE8TA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3D35804310;
	Fri, 25 Feb 2022 18:23:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50E578BB2F;
	Fri, 25 Feb 2022 18:23:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EE271809C98;
	Fri, 25 Feb 2022 18:23:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PINS8P005385 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 13:23:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 794EB4010A0E; Fri, 25 Feb 2022 18:23:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7563E400E12D
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 18:23:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5BF91108C1C6
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 18:23:28 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-121-vx79twfHPmWedkeEfrA-Dg-1; Fri, 25 Feb 2022 13:23:26 -0500
X-MC-Unique: vx79twfHPmWedkeEfrA-Dg-1
Received: by mail-wm1-f41.google.com with SMTP id y5so2166091wmi.0
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 10:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition;
	bh=vUBHIY/7LbWczkovW9lTnLuDiRustSYozqMrDf25bJg=;
	b=xS1zXA3SZ1EY7xtQjMRIemqUWG6Tu3nBl3aoq3cbUJ+W79p23vGGbjZhMwtyjlsT2d
	dV/d8lMqCU9fnSVSRK9Fn1+4laDX3uPl/Gf7RG4lcrGd69QxR+Ol82Lw6YEVG/rFzzxR
	odQUOPjn4ekFX0HBNffTuEUCUizvb8z8JTC73fwMdt+8UAY86atF6c0NGhBme9nyltq9
	zTyspLLamN3YaqNO0nvclP3c3Gg8Fd42Qdwl3d3h0/1clITV1kJsgtOgg9Etxy7Mqkp3
	nV0StkBZvFhBs0NGe8zWuqEcmK0QNkyKqscJHGZL9umo9d9cn/GU9rD0dDUFQOvx+Z6p
	qzBw==
X-Gm-Message-State: AOAM531sPVzk8y0Rpbdr5MnZ9DEkcVwKN8cNUz/lPrsu/WRSwEExYcXv
	Xva+5mF4RoTMvj5xjIuBSGY5kuM9g6HjgQ==
X-Google-Smtp-Source: ABdhPJwUtKJZZ5KhHPBRxIoqo3+kp7dFRwfyuACOmZDLckC5Hbnnrf2/mLKc7t3vOcV042hICjemqw==
X-Received: by 2002:a7b:c844:0:b0:37b:b986:7726 with SMTP id
	c4-20020a7bc844000000b0037bb9867726mr3809674wml.160.1645813404632;
	Fri, 25 Feb 2022 10:23:24 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	g17-20020a5d6991000000b001ef7bb82df6sm1032902wru.52.2022.02.25.10.23.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 25 Feb 2022 10:23:24 -0800 (PST)
Date: Fri, 25 Feb 2022 18:23:36 +0000
To: blinux-list@redhat.com
Subject: Talking Dosbox for Linux. Any luck?
Message-ID: <YhkeqFRoBM82EqFv@waffles>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I stumbled across talking DOSBOX in the AUR and on Gitlab

Anyone had any luck iwth it? I'm trying it in a Qemu machine and not
having much luck but that may be down to my Qemu graphic s and card
setup. So, is there anyone who has had luck with this?

https://gitlab.com/jticket1024/talking-dos-box

is the gitlab link or it

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

