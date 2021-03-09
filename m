Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 225F3332F8F
	for <lists+blinux-list@lfdr.de>; Tue,  9 Mar 2021 21:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615320369;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/4M/0gpzkEb6Pa1lnNlRHTx16jnivNddIWvRS05zCQE=;
	b=PzIqr6bDDzPdA0Pog/w+xHDSZ93IjjRETKGBIYeh47FgbUbQokqLLqk9flyVRqnS+QQh0L
	GEAIvye68KTfRyVo88BL0IuFgEyRlODQ1PRjmUqrgOxhNr8P8/DSR5Rq+IOUjV9v+6RY6h
	mdnD5L40HDWndNKno2EiU/+053xfT58=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-L46b4i5kPKSFLf982bdRag-1; Tue, 09 Mar 2021 15:06:06 -0500
X-MC-Unique: L46b4i5kPKSFLf982bdRag-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 985AF800C78;
	Tue,  9 Mar 2021 20:06:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 126255B4A9;
	Tue,  9 Mar 2021 20:06:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 643C71809C84;
	Tue,  9 Mar 2021 20:05:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 129K5lmF023837 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Mar 2021 15:05:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2B83B11457F7; Tue,  9 Mar 2021 20:05:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F41F11457F6
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 20:05:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59A2F82A683
	for <blinux-list@redhat.com>; Tue,  9 Mar 2021 20:05:43 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-402-eRNncuVgMaaOS9WFhtG9Tw-1; Tue, 09 Mar 2021 15:05:41 -0500
X-MC-Unique: eRNncuVgMaaOS9WFhtG9Tw-1
Received: by mail-wm1-f48.google.com with SMTP id u187so3495375wmg.4
	for <blinux-list@redhat.com>; Tue, 09 Mar 2021 12:05:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=AFedhysnXjmIbeznu74v6koNMt2yC6F2q+bnS0+GmQ8=;
	b=lxNXpUBN7s+GVvgomaG9Er1Pc/ZRfeC8o0KoTfRfJkrLOwheNocdQ1RK4OBeJDmpxh
	SkVidfJQU7emLmYtadRbc4bQgOpUcmqJel2wdDBDxdi63SYTKP6wWJmb+jjOAJEY7fUY
	y+8wMJyuF44TSXpqtOZt1004jm7hhMaAXE2+q1go6JwNgQWAmPtcfHuec5lv5J+rmxsS
	a2xQIeJKCvv+XiXt5pnNNcNqDW0r8fFXMCSj7Sfi7DBFZOi4ulW0a6IP9k7iYcqC4Vk0
	N6rswv8lzI+yR79FVW400phyECRNIs3VE+LakGRCYuAkpIxSox8xzsbSRCmaPisoSAXt
	gAFg==
X-Gm-Message-State: AOAM533aCrafeozuWyzd7X7jpG1fAEdPVOB45hizGl7tSt9zTHsxhqzb
	H+oEOamNlbhsI7v0CkvjwOX3e7yP6uEsSA==
X-Google-Smtp-Source: ABdhPJy0MeeEXy2clkhvmtNpH1JDm1+IaLeWryMoSlafoVepipvkmqVt4Ob6vNQf1AQGUWy6I1EY2A==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr5868039wmk.101.1615320339798; 
	Tue, 09 Mar 2021 12:05:39 -0800 (PST)
Received: from ?IPv6:2001:16b8:2b3d:d500:6215:e94c:c113:a1a5?
	(200116b82b3dd5006215e94cc113a1a5.dip.versatel-1u1.de.
	[2001:16b8:2b3d:d500:6215:e94c:c113:a1a5])
	by smtp.gmail.com with ESMTPSA id
	m6sm25761209wrv.73.2021.03.09.12.05.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 09 Mar 2021 12:05:39 -0800 (PST)
Subject: Access to Kindle books on Linux
To: blinux-list@redhat.com
Message-ID: <bbed14a3-3a91-3f40-fbb4-fb95f9220a89@gmail.com>
Date: Tue, 9 Mar 2021 21:05:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I am wondering how to access Kindle books on Linux using Orca screenreader:


There is no Linux Kindle Client and the Clound reader Webapp 
read.amazon.com does not seem to be very accessible.


thanks

Vlad


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

