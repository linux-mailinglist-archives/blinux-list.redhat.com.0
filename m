Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 39DCF3EBDE2
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 23:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628890373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gHi5pbIsg+7MeiS5Rlw1aB5HXeoCDOjH1N6cYDtnKPE=;
	b=D6nVpTkyZxvNK/ZSMGxzGGZ+uqZf6JKP5ZZbX1fheSeuNm8GoRKWpAozrotT0wN/vQ/Xjz
	ko1N5rTsc+fZiBvsNJyEggFVfDtUCuqpc0uLOK4bVE281Kjud8CrXfw5TKPpB3vEDMQTSl
	tn7N8cGKsLMd7na7RYMz4EQg6rBnD0k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-lYidPFisOg-T5JSF4uE6TQ-1; Fri, 13 Aug 2021 17:32:51 -0400
X-MC-Unique: lYidPFisOg-T5JSF4uE6TQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7942B871805;
	Fri, 13 Aug 2021 21:32:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60E8D60939;
	Fri, 13 Aug 2021 21:32:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A74F181A0F2;
	Fri, 13 Aug 2021 21:32:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DLWW4t015007 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 17:32:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 91F592052DDA; Fri, 13 Aug 2021 21:32:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B5B9205B0B4
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 21:32:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DB93802700
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 21:32:29 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-25-KfN5xjtBNYO2TgUSqekwKg-1; Fri, 13 Aug 2021 17:32:27 -0400
X-MC-Unique: KfN5xjtBNYO2TgUSqekwKg-1
Received: by mail-ej1-f52.google.com with SMTP id d11so20712282eja.8
	for <Blinux-list@redhat.com>; Fri, 13 Aug 2021 14:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=sJCWKfAg2j/TWsIo8ybjkxay1p2D/8W5s68bC2629is=;
	b=pU9aie9BvUWUJbD0VlIuyoQTubGInM/8Mts8JoWUQqBgfRsYnf8yRW0GeojKRIsyw7
	EdKTP9tbnK2BrYFvaWrEv7N6YYGvCZ5jeLWWd4o5wCESZ0y1Jbjdnn6+gsg8KCw7lRgH
	WYHrzcoepQg8MsyAVa1hTKFbsI55v1oIOqaWGSXq/HHv0VHBf7WCfOkVgmg2IrjZb1M2
	sN0X2Fp/kLItA3/eWnrg7Rek7V4BZTccIOpCjkZWMkPImz7FraTLOh1RF3S8pXvOKngd
	sPS93vdSRRX/rVssS2RR+N+FZ1gU5D4DKPCftajUIodNSLHAXyGRsl6ZtJ9N0Mrgqua0
	Ld7Q==
X-Gm-Message-State: AOAM530fzUoY1h7E9jA6j5DgliQhsvs51bHGCq5+G9C4CGo/nVxugZU2
	9p/n9UoczF0q32ZSW8URrBlYSCrNyycJvw==
X-Google-Smtp-Source: ABdhPJzpPCSBz1AmGKdZHLAI5CubsgkxboAJeeSMFvhLgK1mLInge/VKaTmvEMg8XEOBjMD1G7nd2Q==
X-Received: by 2002:a17:906:3c10:: with SMTP id
	h16mr4533378ejg.205.1628890345825; 
	Fri, 13 Aug 2021 14:32:25 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id
	dv8sm1040571ejb.93.2021.08.13.14.32.24 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 14:32:25 -0700 (PDT)
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Brltty? What am I not doing?
Message-ID: <b1c00d4e-3646-7ae1-bd2d-89691be2ffa2@gmail.com>
Date: Fri, 13 Aug 2021 23:32:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I have been sitting here for a few hours trying to get this to work, but 
no matter what I do, I cannot get BRLTTY to bloody work! I know that the 
version in Arch, 6.3, does support my Humanware BrailleOne, but, nothing 
is working! I've told it


$sudo brltty -b=hw


But no go.


I am going to bed for now, screw this. Later though.


Warm regards,


Brandt Steenkamp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

