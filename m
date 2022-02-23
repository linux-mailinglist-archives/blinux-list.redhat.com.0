Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBC54C1F74
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 00:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645658163;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nPybxoMPc95HMXTPl0yHUrVd/NG9/jWrG5IRIc0cJcc=;
	b=LsJZRESXcq3ZZRmngpHffmu2+kTKS+4xB1VXAQee4pFD4xLyOLyL5yhc23laSjyjK0QFBz
	U5ZlV0/cOkqKqc61W8ZJDkUG9JTko50iZDYW7/5bIdraaf59FUh+BgaEMwPZtS2JLWPVRw
	TPHxP+1pa57P/goXyNRQIAqJ2Aex9o8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-jX7fbjbvOMiHeZGAz9yfzg-1; Wed, 23 Feb 2022 18:16:01 -0500
X-MC-Unique: jX7fbjbvOMiHeZGAz9yfzg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 126C38145E7;
	Wed, 23 Feb 2022 23:15:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B256D5DB9B;
	Wed, 23 Feb 2022 23:15:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB06418095C9;
	Wed, 23 Feb 2022 23:15:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21NNDSXd006459 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 23 Feb 2022 18:13:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A91D5361EB; Wed, 23 Feb 2022 23:13:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66B0A5361DF
	for <blinux-list@redhat.com>; Wed, 23 Feb 2022 23:13:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D03D802A6A
	for <blinux-list@redhat.com>; Wed, 23 Feb 2022 23:13:28 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-179-8z4SLNB9PFuoiZAYoHeq7Q-1; Wed, 23 Feb 2022 18:13:26 -0500
X-MC-Unique: 8z4SLNB9PFuoiZAYoHeq7Q-1
Received: by mail-wm1-f51.google.com with SMTP id
	m13-20020a7bca4d000000b00380e379bae2so2501799wml.3
	for <blinux-list@redhat.com>; Wed, 23 Feb 2022 15:13:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition;
	bh=Yk8sWwuO5/BjctMjMuZ5k62vm434H9M+2dgURk2iyMM=;
	b=ixFpyOEk/tIElpP7IPKA5ggJ/dGAP5B8bgj0ed7NvGx0UGSH16JF9UslrnI722QqJK
	Xs7d1YLOjIDMI8XpvbFZ2mRaJ2Y0P6eKQs58wXyTDcjz8MQJyOphIdOQhVMF4J75A/Mf
	CH4l8LLOlA3jQqac5h/oxeEfSZjjLE6WrqDYPjKNgTnUrdLBTeAir1LHmGAQEL1X4BXo
	fk4T6ia3uCNkhn8aOYfrCgMwmrQMUlLay1nrwsStWO6LLWIsjxNKxOEgbNbxR9S8mmWR
	FbTkbu/TB9tq/M00HR/xFbdkb3VXFuJjfeoxr4QhPTZcMK9AIpLjBH3tbneklWGV8+5p
	kTQQ==
X-Gm-Message-State: AOAM533w2MAVGB8sTU5tfd/Nfm753t9GduhDiewcH8zYj57KKc/zwQVD
	8I6eFzSETyzeWPhK2N5JOMcux1D/10Fwsw==
X-Google-Smtp-Source: ABdhPJziWexydHdi0mME/8bq+Ub914RMJkr23BRlS5o5N8/ncNTvQBHkFGrl+sViywAIfhT0yeH0dA==
X-Received: by 2002:a05:600c:601b:b0:380:d0e9:53c0 with SMTP id
	az27-20020a05600c601b00b00380d0e953c0mr19564wmb.102.1645658004912;
	Wed, 23 Feb 2022 15:13:24 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	m12-20020a7bce0c000000b0037bed2a6fbfsm924152wmc.37.2022.02.23.15.13.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 23 Feb 2022 15:13:24 -0800 (PST)
Date: Wed, 23 Feb 2022 23:13:38 +0000
To: blinux-list@redhat.com
Subject: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
Message-ID: <Yha/ohci65ePLjtV@waffles>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As it says...

What's the simplest way to back up data to a cloud server and pull it
back down?

I have a new laptop. It's running vanilla Arch post install, I want to
pull down my configs and saved and backed up .config directory from my
old machine, but every provider I'm trying needs a browser window, it
seems like.

So is there any that I can run from a purely text mode install,
preferably from the repos or AUR that'll let me download my files? I'm
hoping there is because I, rankly, don't want to install a desktop for
just this one thing

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

