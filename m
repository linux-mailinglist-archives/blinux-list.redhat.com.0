Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 403F443F237
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 00:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635458437;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SVlUWxujKxBZFNJQRuZP2KRiH1QMZjHoRu62uls1Wwc=;
	b=SI/IzAsNyTBBgUzL1BmfdBI8sVkuErjDwUcxcELZ5Ul73oVlg8ksahrlAAwhwZFFMxAxyz
	Lvcex2LZi81sgw5KgI1U7dmRBH0sMFRd7C8pxy4+C9X3QdX8v4WhoOwAi2/LHTU7fiPm2Q
	HdHtRSU/q+j/XhjdAqBL0WooTDEq0Hg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-bI6t8CvxOyC6NtnaxhE-2w-1; Thu, 28 Oct 2021 18:00:33 -0400
X-MC-Unique: bI6t8CvxOyC6NtnaxhE-2w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 532E85074C;
	Thu, 28 Oct 2021 22:00:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FC6069219;
	Thu, 28 Oct 2021 22:00:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E09AC1806D03;
	Thu, 28 Oct 2021 22:00:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19SM04LU031188 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 18:00:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 69E2E112131B; Thu, 28 Oct 2021 22:00:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 653001121314
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 21:59:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AE31800055
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 21:59:59 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-545-qiCD67ZcONeiwvIusjTqEA-1; Thu, 28 Oct 2021 17:59:56 -0400
X-MC-Unique: qiCD67ZcONeiwvIusjTqEA-1
Received: by mail-qk1-f169.google.com with SMTP id x123so7371425qke.7
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 14:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=uJTQ79KNgxiukrcSLVXlYcWTq+eUX3YXGzULs8uA098=;
	b=1jPNfJfHW0YpdgKy/MIuVaO4Sq9y4Lv/PHQSz0X2R8SeqvcQXgnF68sKqtBZDVAtnb
	2MC2RDAGCuea/+k+AgwBLF7+V4/Ieqg+aMe4+8KhKUgcjLxjMiJ0APsgaSrQjIramXM2
	xaGr5Sv8bESjCvAhJUOsp4SgLd/2EJuh5vR5O1MzuNjIOK0I1wNtAR6ZZMz2fllqbKer
	keddE2uyXIznhTUrVtI/0vUa+zKct0akVKLNXaeKftDuYADAKZKcHiSMd0+3y3xbThWM
	i+sIM8t4ksflxWcMD2MIMI1hsw4n7vyv/oKorzwR8Nm4Kvy8VYc2uhb+OPAHnz092scW
	Jx7A==
X-Gm-Message-State: AOAM532g71euKOHJkk7C30kvfIODyHHahhwBRBP8KS9mse8tyzVBrzVg
	rWpqt/hTUUKRxNce2LFb0+1GU+xGiKoMAA==
X-Google-Smtp-Source: ABdhPJwpLCgXQTBbsgTxQlZGyqdHq//5qzcaGxKnXZeq5OYmXPsr9GqwOZ7kaHkXY03e3F143iA4kg==
X-Received: by 2002:a05:620a:178c:: with SMTP id
	ay12mr5762542qkb.476.1635458395280; 
	Thu, 28 Oct 2021 14:59:55 -0700 (PDT)
Received: from ?IPv6:2601:c8:300:2f6:2ce9:81dc:7951:6a40?
	([2601:c8:300:2f6:2ce9:81dc:7951:6a40])
	by smtp.gmail.com with ESMTPSA id
	y186sm2306188qkb.128.2021.10.28.14.59.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 28 Oct 2021 14:59:54 -0700 (PDT)
To: blinux-list@redhat.com
Subject: System image backup?
Message-ID: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
Date: Thu, 28 Oct 2021 17:59:53 -0400
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

Dear List,

Is there a easy and accessible way to create a system image?

So if I screw up something, I could restore from a inage.

Thanks,

Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

