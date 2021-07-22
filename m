Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7C0473D2037
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 10:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626944269;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V4pa7IgHycfV5J0u5rqF7aXWjrAarI4LOHN1ii6P6E4=;
	b=DL654yjMd3wifUqSGPYq536YGDSSuvFKg6rSIpxg181v7eRpk9Id95M8WXOW1LxpJ4is/N
	iDVPzjTuiDFcj+kvhYSxG6tZ50B7BDUqx9VrHBwsCcVAl5VWuGZl38hyEb+LJJWSEY84Q2
	ZD94EgXpJe9caDXsNPInFAOhSZvEVbo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-VuUa7P5aOoC0ThKc_SeSFA-1; Thu, 22 Jul 2021 04:57:47 -0400
X-MC-Unique: VuUa7P5aOoC0ThKc_SeSFA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66E73107ACF5;
	Thu, 22 Jul 2021 08:57:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 315B91007604;
	Thu, 22 Jul 2021 08:57:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAEEF180BAB0;
	Thu, 22 Jul 2021 08:57:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M8vRlE016800 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 04:57:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39ACEFC725; Thu, 22 Jul 2021 08:57:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33E0B103799
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:57:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA127108C18D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:57:16 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-58-UZd0BuJZPOGAYsDx4wgAJg-1; Thu, 22 Jul 2021 04:57:14 -0400
X-MC-Unique: UZd0BuJZPOGAYsDx4wgAJg-1
Received: by mail-wm1-f43.google.com with SMTP id
	o30-20020a05600c511eb029022e0571d1a0so2493822wms.5
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=OVfB9pEq37TH9LKDYYUJSGVG67UBrDfCBpLgugOBmno=;
	b=Re8ep5vMuoTwCIXnZLBUU/pBlMUvZeA1yNsvZJ7c/MgqBnP57/WgLmQ+2pgIr2zk+6
	Ts3tzPPBAGfEoJ9fPa8HMljyxGn4kCRbiYrk4xcjEGb3YULFH+5sOqOGkuniWbFPgZBA
	TUPGH/MWh2Rs690qxYh3rHLuON24v7BhpGJ+oc3P8B58qFEcnBQbObOboeaHfZ8Rx8k+
	0ayBAtITNFilDRi/HGPPa6s60qbI+YoftbjuWNDybPKmzH00/HEkZKl4RpaALkIa/UyK
	sfac9949AeAf04Uby5xRaSaLtN3PrynsJdHqsR+xrQLjkegYmdWOYaXBpOzkc0mvrM0W
	axGQ==
X-Gm-Message-State: AOAM533lmZpjhNGa1KNakmH7tgEQF1zJtZA+vw7OxL69X32rqG+6rLew
	/lVmMrm9oiHv6hHbJExQwj+QXgykYkPW3Q==
X-Google-Smtp-Source: ABdhPJzJKZOrE/F6NRoPjetk4OLCUzlIPShLVqxzr2MlwAr4dB+S1L4c7IgH2EgOCackkMqPiVFRsw==
X-Received: by 2002:a05:600c:154d:: with SMTP id
	f13mr41088505wmg.3.1626944232775; 
	Thu, 22 Jul 2021 01:57:12 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	j23sm1939381wmo.26.2021.07.22.01.57.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 01:57:12 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Adjusting lightdm screenreader volume (How do I...)
Message-ID: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
Date: Thu, 22 Jul 2021 09:57:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So...quick question.


On my former Ubuntu instal, lightdm was nice and quiet. Solus, on the 
other hand decided to crank the volume for the speech in lightdm up to 
11. I can quite literally be in another room and hear when my computer's 
started if I don't have headphones plugged in.


So....would that be adjusted in speech-d.conf or do I need to go hunting 
in the lightdm folders?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

