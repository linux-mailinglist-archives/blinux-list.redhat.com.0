Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD5C24C7C4
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 00:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597962658;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JYFUiIbUyRCJwN/x2bjcX6zDVDU0/WExHuLpNU8rJ/I=;
	b=TiYtXecbH7T1dik39nWtQovmTa0xC/KJIGHxl8YK5CwoGXN6sdzijfqnENcOER9iiiNCJg
	ZcJszcrpowrbXW9+FZjYGnPwKyHqg6yWtCllX3uYctiA885h/qBTHQcW04VR71y5nTo2SG
	9iOtNor1WiiVw7wJoijWr6o2EB9p9S4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-epdEo6dBO-2hIw2IKzf6SQ-1; Thu, 20 Aug 2020 18:30:53 -0400
X-MC-Unique: epdEo6dBO-2hIw2IKzf6SQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF48D1005E6D;
	Thu, 20 Aug 2020 22:30:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5A2B19D7D;
	Thu, 20 Aug 2020 22:30:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E86D662B0;
	Thu, 20 Aug 2020 22:30:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KMUefF027410 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 18:30:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B7D562B4D31; Thu, 20 Aug 2020 22:30:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B330BAF9A0
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 22:30:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62F2F8EDF01
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 22:30:38 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-340-tTYcJpD2MLiNngJRbf3QUw-1; Thu, 20 Aug 2020 18:30:36 -0400
X-MC-Unique: tTYcJpD2MLiNngJRbf3QUw-1
Received: by mail-wr1-f41.google.com with SMTP id a15so131008wrh.10
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 15:30:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DgWPdt0YhVCsS8/JteXGy1yVYJEH1gqCLDqTNu1O+Is=;
	b=W5W1ovJxtZJGbLnCNEv9f6fm7SDEvfkwQ+ws6p7rxU+r4+JYXzTgN/CnuMFT3Fwa9b
	itYeDZ4tMbahYJMzT31DXRIF97vbwWGl4OTgABGMMOL0TrBlAWjlR3q8KW+m8lDE/l3j
	SRSWBqso3V78JD85z3KOVeLl0imFTlwGNaxv2G0uOCcx6H/wXyFO4IPbWhjdlCrEeClF
	Tr6SlkNpDaQ55XTVnytp9QtV7DxdXtNlmenibACbLtxrdIbJgO9lAteVaJtK22lVkqyw
	GhjO4aO9nZNOKuz5OVYkfETX3DxfO5b/I9glGO8tcK/dXs+AH4yu/AfBL6zUJmN24kBU
	8jzQ==
X-Gm-Message-State: AOAM5326LMePkHfUqF9QjC8hr8a7B4cqfliOPrMJHb0hKuWcZwpitwOS
	ZY60pjgeLC26GN/ptBUCE66meJSfvY1ndw==
X-Google-Smtp-Source: ABdhPJyKjHgjj61QSlV+k0T/7vrWfLaA9vf4KZD8dGl2p41+81ZQGh1uwSIxXjtP6jzy8nmQLMW9+g==
X-Received: by 2002:a5d:60cb:: with SMTP id x11mr651104wrt.281.1597962634668; 
	Thu, 20 Aug 2020 15:30:34 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433])
	by smtp.gmail.com with ESMTPSA id s2sm254326wrr.55.2020.08.20.15.30.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Aug 2020 15:30:34 -0700 (PDT)
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
Message-ID: <03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
Date: Thu, 20 Aug 2020 18:30:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.23.453.2008201440380.1109151@chime>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

The version on that source rpm looks like you should be able to download 
it from a git repository somewhere. Although Debian shouldn't be in the 
source tree under most circumstances, especially in an RPM, perhaps 
something in there can tell you where the git repository is.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

