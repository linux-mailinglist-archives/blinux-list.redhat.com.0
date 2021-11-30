Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A06AA462F60
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 10:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638263745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=frB1asvksmc35ef7yrG05A24gWAc2GfpGYMvyNu06h0=;
	b=LVkanbSfXkCa9DFau1Ng7dvAhFuFazeiB1I8CP4/QlT5VlU7+i4UPwehsihz4k6DjThElu
	eeTLIIxr4RF1uLMkxCM6auZAHBBWWTxzYwv4ouKqI0fT32OcUIf36AoxBjhLGaWYzBxthU
	yw7o5Qh3vI7Nc2oL2oWV1cHGA0IQ3Dw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-379-2kP6HZ4wMQu1JN5aL73epA-1; Tue, 30 Nov 2021 04:15:42 -0500
X-MC-Unique: 2kP6HZ4wMQu1JN5aL73epA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C13A481CCB7;
	Tue, 30 Nov 2021 09:15:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9070510013D6;
	Tue, 30 Nov 2021 09:15:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 189FB4BB7C;
	Tue, 30 Nov 2021 09:15:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU9FRgR028281 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 04:15:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5A80F2026D46; Tue, 30 Nov 2021 09:15:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5520E2026D5D
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:15:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 338B0811E8E
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:15:24 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-369-HPEIjezxNsqgR-dBGn0-VQ-1; Tue, 30 Nov 2021 04:15:22 -0500
X-MC-Unique: HPEIjezxNsqgR-dBGn0-VQ-1
Received: by mail-ed1-f42.google.com with SMTP id r11so83966932edd.9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 01:15:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=c+zmfY2WAx+54uVx5n444MyJuBKWOkSTFsaCaJpmxWY=;
	b=tH2G+qXsT3/MSaakxbB/AwHUFZMW3pa/vErTV8OSNB+FjCfmFncX2DYgr8mFiPuqeA
	StbxaDkUoL1jthqpogrKruzU54nqeoTXoAFbvxl4jJe5iivAvwBue7Q1B6tEAZ4/R3J3
	7+df6y4MXxbP+w/2OMa+Npvoj19BDw8Cxuh4ypYzSFI+OF7UbD12ilWfR/win9ZmPzLv
	ye4f3JdiUZ013ElWnKkWfEv29OKFCtDSEVWkLbk/KVD/7Fh83W1j2tvOKV87bH/0Izo6
	xCwq8BP+U1z5/XABCHlgDHEF9KYF/V/ATPTFjN7GSM+5BKSRZpJ6YYoe0UhaBm/LRdHs
	CsGQ==
X-Gm-Message-State: AOAM531i/c5C5bRzekSnSsXI/rTPU22rDTEj6sbufHUTditWby6iRzlk
	dkw2B4ipfWt90ZJPEjsrSo91IY2fImHvAw==
X-Google-Smtp-Source: ABdhPJyJ8fdtGiTnMpYi8XIDGZMeGiE1nJ7fmv9uoERw0NJcpuJfxpC2GSklmhazAcnMbb88QAoNUg==
X-Received: by 2002:a17:907:980e:: with SMTP id
	ji14mr16718156ejc.193.1638263720470; 
	Tue, 30 Nov 2021 01:15:20 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	d3sm10886880edx.79.2021.11.30.01.15.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 01:15:20 -0800 (PST)
Message-ID: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
Date: Tue, 30 Nov 2021 11:15:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: How to copy output from a terminal?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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


I still have a few things I need to fix, but as the subject states, I 
don't know how to copy the output from a terminal so I can ask for help 
from the relevant mailing lists/forums.


I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know you 
can copy text off a console using speakup, but I am not in a console, 
now am I?


If anyone has any advice, I'd be appreciative. If there is a way, for 
example to pype the output from a command to a text file, for example if 
I type


$ ./startwin.sh

Which is how I would start my qemu Windows VM, can I pype the output to 
a text file in '~/'?

-- 
Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

