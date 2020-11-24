Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 42D892C1B70
	for <lists+blinux-list@lfdr.de>; Tue, 24 Nov 2020 03:36:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1606185404;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O7qbj95k3JpX5sKpumjNHsfSiS2Nn5I31ttOz6j8woU=;
	b=PLzJqIWkeLZPFM8POtRZA3jAwvpvpNc2/GEB8oK7m9ydCYYhGxLfIlf0BPzycJX0EV7Ofd
	rpTDwr2VuW4DzDolN1rgydbIJiaBglhoaLOfx38pmoV2I0rCpPiFT8OtZWfqOuvzV/3Y9I
	4SsGF+xTCo/6bXqYrdhPjgzwVANd4Ys=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-gYfloMFqOgudoX_asT2pzQ-1; Mon, 23 Nov 2020 21:36:42 -0500
X-MC-Unique: gYfloMFqOgudoX_asT2pzQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9CC91074640;
	Tue, 24 Nov 2020 02:36:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9F6119D9D;
	Tue, 24 Nov 2020 02:36:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 64DF5180954D;
	Tue, 24 Nov 2020 02:36:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AO2aFtO000306 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Nov 2020 21:36:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1E1B82166B2C; Tue, 24 Nov 2020 02:36:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 191102166B2B
	for <blinux-list@redhat.com>; Tue, 24 Nov 2020 02:36:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92CC2811E76
	for <blinux-list@redhat.com>; Tue, 24 Nov 2020 02:36:12 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-395-vh6OPjWbNPeXRFibqLSfuw-1; Mon, 23 Nov 2020 21:36:10 -0500
X-MC-Unique: vh6OPjWbNPeXRFibqLSfuw-1
Received: by mail-pf1-f174.google.com with SMTP id 131so16962007pfb.9
	for <blinux-list@redhat.com>; Mon, 23 Nov 2020 18:36:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=SerbHgiGMG2uWQNuZ4TAxmPZc4xb339wHHhj8lZjY0c=;
	b=Uwt3/8uFXoQ+7qWVA4s8nk3t14gJQ/DyKz51wbkhz5ZcWiHBgMr3EMd4eTF2uaKeAF
	CEyQ1JWiz7setaa/ZT4e9drZPGoQtioDOIr9+0Biu5bM+hApHC6oKvFq444DZYMZWX+s
	MyoLU+tOc79qg9Q4CvPsa/LKNJR1TXeGDIgqrpCCPKRc1ZFY4I5oYwiI6xjKpuTl8H/x
	cVMeG3U3PlyW9/AneWzY1T/j+P8YQDuxc2Pjn7fTd5wEWFMPUQl/uLXR6ffFr31eFjvr
	wjNdaQlylK5C0trmutdDDNfJKLsQbZ3N+euIx7da0YOcg7qdK5AfsAFpY7BG7+nTSsdT
	xp5g==
X-Gm-Message-State: AOAM53107plICyYqfRWukuFwpV0fPpAiYIRdM+LY33bnHHPBIouHjODx
	WJ1wcLxGKesqeoxty4kA4nw5/W+jnTA4Cw==
X-Google-Smtp-Source: ABdhPJyOXSjf7MIurF5EtU5BN77mRKw4IUIDXmGqlFEHt3ime9q9+Mz9915mbRcoTdSDNnU0lnqCLA==
X-Received: by 2002:a17:90a:6b0d:: with SMTP id
	v13mr2250313pjj.206.1606185368968; 
	Mon, 23 Nov 2020 18:36:08 -0800 (PST)
Received: from [192.168.0.3] (174-18-35-29.tcso.qwest.net. [174.18.35.29])
	by smtp.gmail.com with ESMTPSA id
	gx24sm685233pjb.38.2020.11.23.18.36.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 23 Nov 2020 18:36:08 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: virtual box help
Message-ID: <ada43381-a315-aba5-ccaf-349ea5522542@gmail.com>
Date: Mon, 23 Nov 2020 19:36:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.5.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello I am running linux on virtual box on windows10

how do I access my usb drives in the linux vm?

thanks

Hank


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

