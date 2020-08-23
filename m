Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 75B7524EF43
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 20:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598207407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2HofjqbEhKCGoGN0efAgiVVwFGCmYFv1mhi5phaHME0=;
	b=cECQSHIQDMngkPxJJFC3xjwZFZHrihQnkA3vgTgHlzFcutd4iqQ3ln8p5+X+EyyPRStfLY
	IAYtiKcOFZhCuTlhrQZFPp4yKWs69pK4GmBbCtms/3+7KyvmEDrxGy4NorbwDv3syHlba4
	9tiQX3IDgF0vN6JhVkhh4ycw6sP0ExI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-IOCIQ8usMbuDlm_7WnNKBQ-1; Sun, 23 Aug 2020 14:30:05 -0400
X-MC-Unique: IOCIQ8usMbuDlm_7WnNKBQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D78181F004;
	Sun, 23 Aug 2020 18:30:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F5A210013C2;
	Sun, 23 Aug 2020 18:29:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6CC61668F2;
	Sun, 23 Aug 2020 18:29:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NITmKp009592 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 14:29:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 89B3E47CEB; Sun, 23 Aug 2020 18:29:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A0D933247
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 18:29:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F3958EB573
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 18:29:45 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-188-1uRDrIN4MVCw1R_AqQrl1g-1; Sun, 23 Aug 2020 14:29:42 -0400
X-MC-Unique: 1uRDrIN4MVCw1R_AqQrl1g-1
Received: by mail-wr1-f49.google.com with SMTP id c15so6519183wrs.11
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 11:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=eh5cBjvyWKiOUBJmh9pyHh6VGU+JLcWcwRCw1NPQd/k=;
	b=G0XLH540BCm4udGJpUFMaUonRCZSkzwhu+iyS6mRzAqhSM72IZJ5rzzxOW6uh6vRLo
	WliW+Yrymf7Ggwi/myXKSD/XY915MopJkOV3UFWk88WdfFgdBJUPR620X8kN9xYG320N
	x8p65zue1yToOeGAusO0wbJHh+BLeXqyzh3BMm/mw3CjHKJSiKVQA4BjMucGCe3DzZZ+
	PLRlQHohLnQyotdu7vT15H3HJStMYoW+nqxpUIpUFt4mnN4YHz6/jkUpfrTwD6QJfnEq
	5Ngrf7LUEXaDKGcnRujYLOacBxSNqy1MRXNg4Cv0luf+UfoIYpoVsCS4CTtq3ogeo8iR
	X1zA==
X-Gm-Message-State: AOAM531I+XjgJnoST6+gSPqLVa1KI7u1SPsAlGQ0KmNkQLDWj9kWxJN2
	77IiOE7oxdKWfozHJS+dV2OSL5VCuPQu7w==
X-Google-Smtp-Source: ABdhPJyp4BJ4+u3oEXt5MkQUgsrAFQ/MUfaNyQwAndx+ZZtkpaxUUbDakqo+q2qQkPdny01F9ha9bA==
X-Received: by 2002:a5d:4746:: with SMTP id o6mr2634698wrs.410.1598207380762; 
	Sun, 23 Aug 2020 11:29:40 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	g70sm21588251wmg.24.2020.08.23.11.29.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Aug 2020 11:29:40 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
	<alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
Message-ID: <266d7ec5-ac14-247e-7b1b-e7e780a47932@gmail.com>
Date: Sun, 23 Aug 2020 14:29:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
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

Could be mini-slint could run on that raspberry pi.


Unfortunately it's only available for x86_64 hardware. But then the 
Raspberry Pi 4 is capable of running a full desktop, so only Raspberry 
Pi 3 or older would need something like this.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

