Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 26D4824D725
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 16:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598019388;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rwckWiLrDa3PcEzmkDGFDGWhPWjMQmB12Z7Q95YLrUU=;
	b=GwRtaO4FXd+2arHmjHczIdLp+7LtY2lAG9Xyq165ZPexfJBUlOkeaYnMEWhUpIDs9nHyDo
	QX0FP9Ed8G2mwCjc51ROojy83Yb7QCl3dz6VNw1ulIKca6Jm86T10s1aN0VvQlfF8mq6Dh
	we+pg2BdOYULHowZggpmgxW9IpChR1U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-U5jRWSRsOmG2Bqc-Scmg7g-1; Fri, 21 Aug 2020 10:16:25 -0400
X-MC-Unique: U5jRWSRsOmG2Bqc-Scmg7g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CF93100559C;
	Fri, 21 Aug 2020 14:16:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB46C100EBB3;
	Fri, 21 Aug 2020 14:16:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 734DF60348;
	Fri, 21 Aug 2020 14:16:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LEGIp0005124 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 10:16:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 40F46F5CC7; Fri, 21 Aug 2020 14:16:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BA62F7838
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:16:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47784888BE4
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:16:15 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-136-hEEMedxAOwig5uOzNm8pkw-1; Fri, 21 Aug 2020 10:16:12 -0400
X-MC-Unique: hEEMedxAOwig5uOzNm8pkw-1
Received: by mail-wr1-f51.google.com with SMTP id y3so2095304wrl.4
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 07:16:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=M/PhXsqZDE6K11tZWC5Acl1fQJHFK8HH59EC/7d/ogY=;
	b=lpq34S6Wf6LQB7C74qSdXZJkNwZDU5a7c6Vn7Zcqr9m6vvAWvmbTzL+zwl7Q/sIsx/
	DW3ncQsBmvw1AOB4D+0oN8XnxKzu3X72Uzw5heGpjNzinAa7tD0yM0wcHqhswxgLSw9d
	0o+KNkbL5chrpTrJzhzwN7o7YtDulTppqV3SMNK6/L5Jf43gFBYOhf7kPNgmltXIUM3a
	zF92702kK5B5tHfZz9IKNa74gnQGauSVma0GmJubDbqtvc4t/BI3bcljd234KdgreLYa
	Qomnice7Rq7EU7v4bFOtCiTO2+U0cykuNC7pRaOKpu/4asa5aMewP1P0WJSsyhnsiT7Z
	4mpw==
X-Gm-Message-State: AOAM530IAfkoCzmErRMDvGBNGqBEZvhBGC4gpRUB10F16dseTQ+mUqoE
	m91sgxkSBUF5twBiSnOKRqSAQQ/ALfLVwg==
X-Google-Smtp-Source: ABdhPJxwnSjjiONWkSeCMjHvujAETyG19L3PyfPEBSrSuG2ybNUBDNZBnlZIVDCF3YNMXumZ9RetoQ==
X-Received: by 2002:a5d:5445:: with SMTP id w5mr3148488wrv.342.1598019370866; 
	Fri, 21 Aug 2020 07:16:10 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433])
	by smtp.gmail.com with ESMTPSA id l10sm4505114wru.3.2020.08.21.07.16.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 Aug 2020 07:16:10 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
Message-ID: <1538276b-8343-1e5f-66d6-5992b8c24461@gmail.com>
Date: Fri, 21 Aug 2020 10:16:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

As a desktop OS, Debian hasn't been all that good to me personally. It 
seems to mix versions of components of the desktop environment quite a 
bit more than other distros, not to mention the fact that the desktop 
components and the accessibility stack are pretty old by the time they 
make it to a release. Ubuntu with its 6-month release cycle seems better 
for desktop use. Debian seems to work better on servers from my own 
personal experience.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

