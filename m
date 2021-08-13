Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id AF7473EB99F
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 17:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628870354;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lG1ZwI/2D7SHOJlKtTmD0X4LgJxst5Bpa0n8PEwMcxc=;
	b=Ru0LtsWmbntNEftMMiWgASgnxw2zaF2FAEkCOZsmnsjryGfWn22NMlGWm3EUaBEQOcKzed
	sXb7GCXehMJexh010daRs1jwFWs82cuqhAzBmgLr1/S84i9wCGKKvCVHRFOuznhAp3Q8/E
	lPZBQFtxafULQq0sIEJbB21rzaFqA7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-8zsF9HSXNjGHYrcIMRyacg-1; Fri, 13 Aug 2021 11:59:12 -0400
X-MC-Unique: 8zsF9HSXNjGHYrcIMRyacg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5E4F1082921;
	Fri, 13 Aug 2021 15:59:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C7E760871;
	Fri, 13 Aug 2021 15:59:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 064284A7C8;
	Fri, 13 Aug 2021 15:58:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DFsOkl008764 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 11:54:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 056FD2051B0C; Fri, 13 Aug 2021 15:54:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00BE82051B80
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 15:54:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 518A9101A529
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 15:54:20 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-131-IhSXcj1YPiawy43jxxcL5A-1; Fri, 13 Aug 2021 11:54:18 -0400
X-MC-Unique: IhSXcj1YPiawy43jxxcL5A-1
Received: by mail-ej1-f44.google.com with SMTP id u3so19150140ejz.1
	for <Blinux-list@redhat.com>; Fri, 13 Aug 2021 08:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=vOUmX0To2imtDEDn3+M97N3LDMBd30r7gwMqpEliZus=;
	b=WXzvQ6FUM30jLmUcOl3jfzX14cY+Ffr/afBtaRMNo6bDzR+9Kd2mEmrFnUnxYIvblQ
	0T9XP0gctAdz0AiOdjy9FKYHow705EBDjpDAXthPS9UGMqPnSCObqTIv8HeZM7WeoVnt
	pKI/ZrLvOlDjhhhsSXlkHPYBWGEgTfE3Lcw1bmsu7/2b2Cjy9BD4wNJ8p9VkYSJVAUDy
	raU2P2m9F8STTk42bYW/AhkMki9q0izkdM5tmAmdC/wila48JRytpju9Ezj7Ibtru1Sk
	MdQ2q42nufJDPNC4zPKAVlRfLE2Efu4mLODALsh3+LEYOw8A9vHE2hS4G+1/ukYPDggZ
	ilzQ==
X-Gm-Message-State: AOAM532viq21eJ7plt9sNYfNAwOOT/d9uTTPpHjXnbH/JMfz5Kcs0idG
	StH5DPSpirTcbolUYtVw2J45aGmoHP/ZDA==
X-Google-Smtp-Source: ABdhPJwAoI+J9/CiJTPrcLjzOJWuIST2V49pY3uHjf7BAN0RPuUPO09tQoc2YhvWLinKfoEuLppB2w==
X-Received: by 2002:a17:906:b890:: with SMTP id
	hb16mr3058209ejb.383.1628870056843; 
	Fri, 13 Aug 2021 08:54:16 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id
	a60sm1118085edf.59.2021.08.13.08.54.15 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 08:54:16 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Changing Keyboard layout in Gnome
Message-ID: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
Date: Fri, 13 Aug 2021 15:54:11 +0000
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


I tried to install vanilla arch again, and was successful, but for some 
reason Mate didn't want to install. I am now making do with Gnome, not 
my favourite desktop, but anyway.


I am one-handed, and have taught myself Left-Handed Dvorak. I need to 
change the layout in Gnome, otherwise I am as slow as can be. If anyone 
knows how to do this either in the GUI using orca, or even better, which 
config file I can go edit to do this, I would be really grateful.


Warm regards from a cold Johannesburg,


Brandt Steenkamp


Sent from my Arch powered ice heater!

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

