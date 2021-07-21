Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 930603D0A7E
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 10:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626856285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5RrnLuoDlxkBiOrOWERCarr8EDEepQzlrmv3yXGsElA=;
	b=bPi85g0Z+xRLcCL80pE7n30TtM3WRuEthy4s2Ha0vzywtVd2u8R4lXUMmsSJWRNaZOwChz
	5nRv/VzmTph8JCHB5cOrKdyyGFqO5L3h/z/l8wwf96WJXzfimItKamet8Y1WEsR6fKbV5u
	ufeUOOIZIUoegfaWnaWAyNujPXC0URs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-ZZVQmzcKODCdBHtwWcY2XA-1; Wed, 21 Jul 2021 04:31:24 -0400
X-MC-Unique: ZZVQmzcKODCdBHtwWcY2XA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8604F3630D;
	Wed, 21 Jul 2021 08:31:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC001036D03;
	Wed, 21 Jul 2021 08:31:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93F0B4BB7C;
	Wed, 21 Jul 2021 08:31:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16L8Uu8E019842 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 04:30:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E53910EB2A3; Wed, 21 Jul 2021 08:30:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A24710EB2A0
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 08:30:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3CC980B71F
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 08:30:52 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-KGiVmgs3PFS6k78wMoyxbw-1; Wed, 21 Jul 2021 04:30:50 -0400
X-MC-Unique: KGiVmgs3PFS6k78wMoyxbw-1
Received: by mail-ej1-f51.google.com with SMTP id qa36so1972534ejc.10
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 01:30:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=gvUjbJptWbobq3LhMr2Uuqidh54oLLG1ThyLfEcs0k0=;
	b=PPSztBNwN1eewU68hS8hU0SbIABbhNUIm2WIGfOx4smSzQmMGKD5BDPFsvQLEksyjw
	4twgFaPampVfVQfx24O7iJaH0JbRObfMBGKxgv94KcMtlyjNse+JEkC31I7ff6MlSpPZ
	OqDaNtWd1rw2LUlhHgkm8L9ca+uGF9DOwgfWpy456tRqhCwuaAwRGg8LyV1QoBhoibNZ
	hjrCvbxqMujnDJN83blwhvdbzpAu7PvKgbHn9NfVvmHq7qqM+T+2rKUWHJ6A9QlGpqbb
	IpowHaibDLQFhGwSBZ0whTt6KTyh7d5zpcjrIG0gpoA7zqdqA39jfr4SolCSBvTFdIhv
	xqYw==
X-Gm-Message-State: AOAM532yLnyjyZmw/w9IIGVYr7mGgOLw51Py4JefW7XtoKuBBuh8srg+
	J3zG1OSq0DhUlr8a+62Y2e37sf9stQbsNQ==
X-Google-Smtp-Source: ABdhPJyj1ftoUAqUAr4cu3SH0MMtp2Z/JWWAgs3h7rHsTH5l3DCwcx/E2VXytR8kYQDb+QIOnNj3Gw==
X-Received: by 2002:a17:906:998c:: with SMTP id
	af12mr37013541ejc.240.1626856249171; 
	Wed, 21 Jul 2021 01:30:49 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id p9sm4500255ejc.69.2021.07.21.01.30.47
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 01:30:48 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Twitter, again
Message-ID: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
Date: Wed, 21 Jul 2021 10:30:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I know this has been talked about a while back, but unfortunately it is 
a topic near and dear to my heart.


Has there been any new developments regarding an accessible twitter 
client for linux? I can honestly say, GUI or TTY, I really don't care.


If anyone knows anything on this, please let me know.


I know there is an open source accessible client on Github available for 
both Windows and MacOS, but I have no idea if it can be ported to 
GNU/Linux. If anyone wants to take a look at "Quinter".

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

